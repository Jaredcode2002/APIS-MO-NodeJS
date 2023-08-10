import { connectDB } from "../config/Conn.js";
import { ModKardex } from "./Kardex.js";
import { ModInventario } from "./inventario.js";

export const ModVentas = {

    getVentas: async ()=>{
        let conexion

        try {
             conexion = await connectDB();
            const [filas] = await conexion.query("select v.IdVenta, v.fecha, v.IdCliente as Cliente, v.valorVenta as ValorVenta from tbl_venta as v;")
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al obtener las ventas");
        }
    },

    getVentaDetalle: async ()=>{
        let conexion

        try {
             conexion = await connectDB();
            const [filas] = await conexion.query("select vd.IdVentaDetalle, v.IdVenta, v.fecha, concat_ws(' ', c.nombre, c.apellido) as Cliente, e.nombre as Empleado, m.detalle as Producto, l.lente as TipoDeLente, g.descripcion as Garantia, g.mesesGarantia as Meses, vd.precioAro , vd.precioLente, vd.cantidad, vd. subtotal, vd.rebaja, vd.totalVenta from tbl_ventadetalle as vd inner join tbl_venta as v  on vd.IdVenta=v.IdVenta inner join tbl_producto as p on p.IdProducto=vd.IdProducto inner join tbl_modelo as m on m.IdModelo=p.IdModelo inner join tbl_lente as l on l.IdLente=vd.IdLente inner join tbl_garantia as g on g.IdGarantia=vd.IdGarantia inner join tbl_empleado as e on e.IdEmpleado=v.idEmpleado inner join tbl_cliente as c on c.idCliente=v.IdCliente;")
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al obtener las ventas");
        }
    },

    InsertVenta: async (venta) => {
        let conexion ;
        try {
            conexion= await connectDB();
            const [filas] = await conexion.query("INSERT INTO tbl_venta(`fechaEntrega`, `fechaLimiteEntrega`, `IdCliente`, `idEmpleado`, `RTN`) VALUES (?, ?, ?, ?, ?);",
                [
                    venta.fechaEntrega,
                    venta.fechaLimiteEntrega,
                    venta.IdCliente,
                    venta.idEmpleado,
                    venta.RTN,
                ]
            );
            return { id:filas.insertId };
        } catch (error) {
            console.log(error);
            throw new Error("Error al crear una nueva venta");
        }
    },

    postInsertVentas:async(venta)=>{
        let conexion
        try {
            conexion = await connectDB();
            
            const idVenta = await ModVentas.InsertVenta(venta)
            const [PorcentajePromocion] = await conexion.query("select p.descPorcent as Promocion from tbl_promocion as p where IdPromocion=?;",
            [venta.IdPromocion])//valor de la promocion
            const [descuentoAro] = await conexion.query("select d.descPorcent as DescuentoAro from tbl_descuento as d where IdDescuento=?; ",
            [venta.IdDescuento]//valor del descuento del aro
            );
            const [precioAro] = await conexion.query("select p.precio as precioAro from tbl_producto as p where IdProducto=?;",
                [venta.IdProducto]//valor del precio del aro
            );
           

            const aroRebajado = precioAro[0].precioAro - (precioAro[0].precioAro * descuentoAro[0].DescuentoAro)
            let subtotal = venta.cantidad * (aroRebajado +venta.precioLente)
            let rebaja = subtotal*PorcentajePromocion[0].Promocion
            const total = subtotal-rebaja

            console.log(aroRebajado);
            //InsertVentaDetalle
            const [filas] = await conexion.query("INSERT INTO `tbl_ventadetalle` (`IdVenta`, `IdGarantia`, `IdPromocion`, `IdDescuento`, `IdProducto`, `precioAro`, `precioLente`, `cantidad`, `subtotal`, `rebaja`, `totalVenta`) VALUES (?, ?, ?, ?, ?, ?, ?,?, ?, ?, ?);",
                [
                    idVenta.id,
                    venta.IdGarantia,
                    venta.IdPromocion,
                    venta.IdDescuento,
                    venta.IdProducto,
                    aroRebajado,
                    venta.precioLente,
                    venta.cantidad,
                    subtotal,
                    rebaja,
                    total,
                ])
            await ModInventario.putUpdateInventarioVentas(venta)
            await ModKardex.postKardexVenta(venta)
            await conexion.query("UPDATE tbl_venta  SET `valorVenta` = ? WHERE (`IdVenta` = ?);",[
                total,idVenta.id
            ])
            conexion.end()
            return {state:"ok"}
        } catch (error) {
            conexion.end()
            throw error
        }
    },

    putUpdateVenta : async (venta)=> {
        let conexion
         conexion = await connectDB();
        try {
            const [filas] = await conexion.query ("UPDATE tbl_venta SET  fecha=?, fechaLimiteEntrega=?, fechaEntrega=?, estado=?, observacion=?, idCliente=?, IdEmpleado=?, NumeroCAI=?, RTN=?, ISV=?, SubTotal=?, TotalAPagar=? where IdVenta =?;",
            [
             venta.fecha,
             venta.fechaLimiteEntrega,
             venta.fechaEntrega,
             venta.estado,
             venta. observacion,
             venta.IdCliente,
             venta.idEmpleado,
             venta.NumeroCAI,
             venta.rnt,
             venta.isv,
             venta.subtotal,
             venta.totalAPagar,
             venta.IdVenta,
            ]
            );
            conexion.end()
            return {estado:"OK"};
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al actualizar la venta");    
        }
    },

    deleteVenta : async (venta)=> {
        let conexion
       try {
        conexion = await connectDB()
        const [filas] = await conexion.query( "DELETE FROM tbl_venta where IdVenta = ?;",
        [
            venta.IdVenta,
        ]
        );
        conexion.end()
        return {estado:"OK"}; 
       } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al eliminar la venta");    
       }
    },

}