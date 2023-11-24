import { connectDB } from "../config/Conn.js";
import { ModKardex } from "./Kardex.js";
import { ModInventario } from "./inventario.js";

export const ModVentas = {

    getVentas: async () => {
        let conexion

        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("select v.IdVenta, v.fecha, concat(c.nombre, ' ', c.apellido) Cliente, valorventa as ValorVenta from tbl_venta as v INNER JOIN tbl_cliente as c on c.idCliente=v.idCliente ORDER BY v.IdVenta DESC;")
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al obtener las ventas");
        }
    },

    postVenta: async () => { //shi
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query(
                "INSERT INTO tbl_venta (totalVenta,estado) VALUES (null,'A')"
            );
            conexion.end()
            return filas.insertId;
        } catch (error) {
            conexion.end()
            throw new Error("Error al insertar venta");
        }
    },

    postVentaDetalle: async (ventadetalle) => {
        let conexion

        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("select  vd.IdVenta, v.fecha, v.NumeroCAI, s.direccion, concat_ws(' ', c.nombre, c.apellido) as Cliente, v.RTN, concat_ws(' ', e.nombre, e.apellido) as Empleado, v.fechaEntrega, v.fechaLimiteEntrega, tp.descripcion as TipoDePago, p.descripcion as Promocion, pr.descripcion as Producto, g.descripcion as Garantia, g.mesesGarantia as Meses, vd.cantidad, vd.precioAro, l.precio as precioLente, vd.subtotal, vd.rebaja, vd.totalVenta  from tbl_ventadetalle as vd inner join tbl_venta as v on v.IdVenta=vd.IdVenta inner join tbl_garantia as g on vd.IdGarantia=g.IdGarantia inner join tbl_promocion as p on p.IdPromocion=vd.IdPromocion inner join tbl_descuento as d on d.IdDescuento=vd.IdDescuento inner join tbl_producto as pr on pr.IdProducto=vd.IdProducto inner join tbl_cliente as c on c.IdCliente=v.IdCliente inner join tbl_empleado as e on e.IdEmpleado=v.idEmpleado inner join tbl_sucursal as s on s.IdSucursal=e.IdSucursal inner join tbl_pago as pa on pa.IdVenta=v.IdVenta inner join tbl_tipopago as tp on tp.IdTipoPago=pa.IdTipoPago inner join tbl_lente as l on l.IdLente=vd.IdLente where vd.IdVenta=?;",
             [ventadetalle.id])
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al obtener las ventas");
        }
    },

    InsertVenta: async (venta) => {
        let conexion;
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("INSERT INTO tbl_venta(`fechaEntrega`, `fechaLimiteEntrega`, `IdCliente`, `idEmpleado`, `RTN`,estado) VALUES (?, ?, ?, ?, ?,'A');",
                [
                    venta.fechaEntrega,
                    venta.fechaLimiteEntrega,
                    venta.IdCliente,
                    venta.idEmpleado || venta.IdEmpleado,
                    venta.RTN,
                ]
            );
            return { id: filas.insertId };
        } catch (error) {
            console.log(error);
            throw new Error("Error al crear una nueva venta");
        }
    },

    /**
     * 
     * @param {*} venta 
     * @returns El data de la venta para confirmar si se insertará en la tabla
     */
    calculosVenta: async (venta) => {
        let conexion
        try {
            conexion = await connectDB();


            const [PorcentajePromocion] = await conexion.query("select p.descPorcent as Promocion from tbl_promocion as p where IdPromocion=?;",
                [venta.IdPromocion])//valor de la promocion
            const [descuentoAro] = await conexion.query("select d.descPorcent as DescuentoAro from tbl_descuento as d where IdDescuento=?; ",
                [venta.IdDescuento]//valor del descuento del aro
            );
            const [precioAro] = await conexion.query("select p.precio as precioAro from tbl_producto as p where IdProducto=?;",
                [venta.IdProducto]//valor del precio del aro
            );

            const [precioLente] = await conexion.query("select l.precio as precio from tbl_lente as l where IdLente=?;",
                [venta.IdLente]//valor del precio del lente
            );


            const aroRebajado = precioAro[0].precioAro - (precioAro[0].precioAro * descuentoAro[0].DescuentoAro)
            const descuento = precioAro[0].precioAro * descuentoAro[0].DescuentoAro
            let subtotal = venta.cantidad * (precioLente[0].precio+aroRebajado)
            let rebaja = subtotal * PorcentajePromocion[0].Promocion
            const total = subtotal - rebaja


            conexion.end()
            const datosDeVenta = {
                precioAro: precioAro[0].precioAro,
                descuento: descuento,
                nuevoPrecio: aroRebajado,
                precioLente: precioLente[0].precio,
                cantidad: venta.cantidad,
                subtotal: subtotal,
                rebaja: rebaja,
                total: total
            }
            return datosDeVenta
        } catch (error) {
            conexion.end()
            throw error
        }
    },

    /**
     * Verdadera funcion que inserta ALV
     */
    postMostrarTotal: async (detalles) => {
        let conexion
        let totalAPagar=0
        let subtotal=0;
        let rebajas=0
        let aux={}
        try {
            conexion = await connectDB();

            const promises = detalles.map(async (detalle) => {
                // await ModInventario.putUpdateInventarioVentas(detalle)
                // await ModKardex.postKardexVenta(detalle)
                aux=await ModVentas.calculosVenta(detalle)
                subtotal = subtotal+ aux.subtotal
                rebajas = rebajas+ aux.rebaja
               totalAPagar = totalAPagar+ aux.total
            });
            await Promise.all(promises);
            const venta={
                subtotal:subtotal,
                rebajas:rebajas,
                total:totalAPagar
            }

        
            return venta
        } catch (error) {
            conexion.end()
            console.log(error);
        }
    },postRegistroVenta: async (detalles) => {
        let conexion
        let auxAVenta
        let total=0
        try {
            conexion = await connectDB();
            console.log(detalles);
            const idVenta = await ModVentas.InsertVenta(detalles[0])
            const promises = detalles.map(async (detalle) => {
                await ModInventario.putUpdateInventarioVentas(detalle)
                await ModKardex.postKardexVenta(detalle)
                auxAVenta = await ModVentas.calculosVenta(detalle)
                total = total + auxAVenta.total
                await conexion.query("INSERT INTO `tbl_ventadetalle` (`IdVenta`, `IdGarantia`, `IdPromocion`, `IdDescuento`, `IdProducto`, `precioAro`, `cantidad`, `subtotal`, `rebaja`, `totalVenta`,`IdLente`) VALUES ( ?, ?, ?, ?, ?, ?,?, ?, ?, ?,?);",
                [
                    idVenta.id,
                    detalle.IdGarantia,
                    detalle.IdPromocion,
                    detalle.IdDescuento,
                    detalle.IdProducto,
                    auxAVenta.nuevoPrecio,
                    detalle.cantidad,
                    auxAVenta.subtotal,
                    auxAVenta.rebaja,
                    auxAVenta.total,
                    detalle.IdLente
                ])
             
            });
            await Promise.all(promises);          
            

            const totalCosto = total || 0; //
            await conexion.query("UPDATE tbl_venta  SET valorVenta = ? WHERE IdVenta = ?;", 
            [
                totalCosto,
                idVenta.id
            ])
            conexion.end()
            return {state:"ok"}
        } catch (error) {
            conexion.end()
            console.log(error);
        }
    },

}