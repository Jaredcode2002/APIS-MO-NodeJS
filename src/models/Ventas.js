import { connectDB } from "../config/Conn.js";
import { ModKardex } from "./Kardex.js";
import { ModInventario } from "./inventario.js";

export const ModVentas = {

    getVentas: async () => {
        let conexion

        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("select v.IdVenta, v.fecha, concat(c.nombre, ' ', c.apellido) Cliente, valorventa as ValorVenta, estado from tbl_venta as v INNER JOIN tbl_cliente as c on c.idCliente=v.idCliente ORDER BY v.IdVenta DESC;")
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
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
        }
    },

    postVentaDetalle: async (ventadetalle) => {
        let conexion

        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("SELECT v.`IdVenta`,v.fecha, CONCAT(cli.`nombre`, ' ', cli.`apellido`) AS cliente,CONCAT(em.nombre, ' ', em.apellido) as empleado,v.`RTN`, v.`valorVenta`, ga.descripcion 'garantia',prom.descripcion 'promocion',des.`descPorcent` 'descuento', prod.descripcion 'aro', prod.precio, le.lente, le.precio 'precLente', vd.subtotal,vd.rebaja,v.`valorVenta`, vd.cantidad  FROM tbl_venta as v INNER JOIN tbl_cliente as cli on v.`IdCliente`=cli.`idCliente` INNER JOIN tbl_empleado as em on v.`idEmpleado`=em.`IdEmpleado` INNER JOIN tbl_ventadetalle as vd on v.`IdVenta`=vd.`IdVenta` INNER JOIN tbl_garantia as ga on vd.`IdGarantia`=ga.`IdGarantia` INNER JOIN tbl_promocion as prom on vd.`IdPromocion`=prom.`IdPromocion` INNER JOIN tbl_descuento as des on vd.`IdDescuento`=des.`IdDescuento` INNER JOIN tbl_producto as prod on vd.`IdProducto` = prod.`IdProducto` INNER JOIN tbl_lente as le on vd.`IdLente`=le.`IdLente` where v.`IdVenta`=?",
             [ventadetalle.id])
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
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
               let insert = await conexion.query("INSERT INTO `tbl_ventadetalle` (`IdVenta`, `IdGarantia`, `IdPromocion`, `IdDescuento`, `IdProducto`, `precioAro`, `cantidad`, `subtotal`, `rebaja`, `totalVenta`,`IdLente`) VALUES ( ?, ?, ?, ?, ?, ?,?, ?, ?, ?,?);",
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
            return {id:idVenta.id}
        } catch (error) {
            conexion.end()
            console.log(error);
        }
    },
    anularVenta:async(ventaId,idUsuario)=>{
        let conexion
        try {
           conexion = await connectDB();
          const [ventas] = await conexion.query("SELECT vd.cantidad,vd.IdProducto,v.fecha FROM tbl_ventadetalle as vd INNER JOIN tbl_venta as v on v.`IdVenta`=vd.`IdVenta` where vd.`IdVenta` = ? and v.estado='A';",[ventaId])
    
          const promises = ventas.map(async (ventas) => {
            console.log(ventas);
            //await ModInventario.putUpdateInventarioCompras(detalle)
           await ModKardex.postKardexAnularVenta(ventas,idUsuario)
            await conexion.query("UPDATE tbl_inventario set cantidad = cantidad + ? where IdProducto=?",
              [ventas.cantidad,ventas.IdProducto]
            );
          });
    
          await conexion.query("Update tbl_venta set estado='I' where IdVenta=?",ventaId)
          await Promise.all(promises);
          conexion.end()
          return {result:"ok"}
        } catch (error) {
          conexion.end()
        }
      },

}