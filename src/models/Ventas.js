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

    postVentaDetalle: async (ventadetalle)=>{
        let conexion

        try {
             conexion = await connectDB();
            const [filas] = await conexion.query("select vd.IdVenta, v.fecha, v.NumeroCAI, s.direccion, concat_ws(' ', c.nombre, c.apellido) as Cliente, v.RTN, concat_ws(' ', e.nombre, e.apellido) as Empleado, v.fechaEntrega, v.fechaLimiteEntrega, tp.descripcion as TipoDePago, p.descripcion as Promocion, pr.descripcion as Producto, g.descripcion as Garantia, g.mesesGarantia as Meses, vd.cantidad, vd.precioAro, vd.precioLente, vd.subtotal, vd.rebaja, vd.totalVenta from tbl_ventadetalle as vd inner join tbl_venta as v on v.IdVenta=vd.IdVenta inner join tbl_garantia as g on vd.IdGarantia=g.IdGarantia inner join tbl_promocion as p on p.IdPromocion=vd.IdPromocion inner join tbl_descuento as d on d.IdDescuento=vd.IdDescuento inner join tbl_producto as pr on pr.IdProducto=vd.IdProducto inner join tbl_cliente as c on c.IdCliente=v.IdCliente inner join tbl_empleado as e on e.IdEmpleado=v.idEmpleado inner join tbl_sucursal as s on s.IdSucursal=e.IdSucursal inner join tbl_pago as pa on pa.IdVenta=v.IdVenta inner join tbl_tipopago as tp on tp.IdTipoPago=pa.IdTipoPago;",[ventadetalle.id])
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
            return {total:total,id:idVenta.id}
        } catch (error) {
            conexion.end()
            throw error
        }
    },

  

}