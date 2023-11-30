import { ModVentas } from "../models/Ventas.js";
import { connectDB } from "../config/Conn.js";

export const ContrVentas ={
    getVentas: async (req,res)=> {
        
            const ventas = await ModVentas.getVentas()
            res.json(ventas)
     
        
    },

    getVentaDetalle: async (req,res)=> {
        const {id} = req.body
        const ventadetalle = await ModVentas.postVentaDetalle({id})
        res.json(ventadetalle)
 
    
},
putAnularVentas:async(req,res)=>{
  const {ventaId,idUsuario}=req.body
  const result = await ModVentas.anularVenta(ventaId,idUsuario)
  res.json(result)
},
    
    postInsertVentas: async (req, res) => {
        
        try {
            const { fechaEntrega, fechaLimiteEntrega, IdCliente, idEmpleado, RTN,IdGarantia,IdPromocion,IdDescuento,cantidad,IdProducto,idUsuario,IdLente} = req.body
            const result = await ModVentas.calculosVenta({ fechaEntrega, fechaLimiteEntrega, IdCliente, idEmpleado, RTN,IdGarantia,IdPromocion,IdDescuento,IdLente,cantidad,IdProducto,idUsuario})
            res.status(201).json(result);
        } catch (error) {
            console.log(error);
        }
    },

    postMostrarTotal: async (req, res) => {
        const { arrVentas, total } = req.body;
         let conexion = null; // Inicializamos la variable conexion con null
         try {
            conexion = await connectDB(); // Asumiendo que tienes una función connectDB que conecta a la base de datos
            await conexion.beginTransaction();
      
            //const idVenta = await ModVentas.postVenta({ total });
           let resultado = await ModVentas.postMostrarTotal(arrVentas);
      
            await conexion.commit();
            res.status(201).json(resultado);
          } catch (error) {
            console.log(error);
            if (conexion) {
              await conexion.rollback(); // Verificamos si la conexión está definida antes de llamar a rollback
            }
            res
              .status(500)
              .json({ error: "Error al insertar la compra y/o detalle de compra" });
          } finally {
            if (conexion) {
              conexion.end(); // Cerramos la conexión directamente al finalizar la operación
            }
          }
        /* try {
            const { fechaEntrega, fechaLimiteEntrega, IdCliente, idEmpleado, RTN,IdGarantia,IdPromocion,IdDescuento,cantidad,IdProducto,IdLente,precioLente,subtotal,total,nuevoPrecio,rebaja,idUsuario} = req.body
            const result = await ModVentas.postInsertDeberitasDeberitas({ fechaEntrega, fechaLimiteEntrega, IdCliente, idEmpleado, RTN,IdGarantia,IdPromocion,IdDescuento,IdLente,cantidad,IdProducto,rebaja,precioLente,subtotal,total,nuevoPrecio,idUsuario})
            res.status(201).json(result);
        } catch (error) {
            console.log(error);
        } */
    },
    postRegistroVentas: async (req, res) => {
      const {arrVentas} = req.body;
       let conexion = null; // Inicializamos la variable conexion con null
       try {
          conexion = await connectDB(); // Asumiendo que tienes una función connectDB que conecta a la base de datos
          await conexion.beginTransaction();
          let result = await ModVentas.postRegistroVenta(arrVentas);
          await conexion.commit();
          res.status(201).json(result);
        } catch (error) {
          console.log(error);
          if (conexion) {
            await conexion.rollback(); // Verificamos si la conexión está definida antes de llamar a rollback
          }
          res
            .status(500)
            .json({ error: "Error al insertar la compra y/o detalle de compra" });
        } finally {
          if (conexion) {
            conexion.end(); // Cerramos la conexión directamente al finalizar la operación
          }
        }
      /* try {
          const { fechaEntrega, fechaLimiteEntrega, IdCliente, idEmpleado, RTN,IdGarantia,IdPromocion,IdDescuento,cantidad,IdProducto,IdLente,precioLente,subtotal,total,nuevoPrecio,rebaja,idUsuario} = req.body
          const result = await ModVentas.postInsertDeberitasDeberitas({ fechaEntrega, fechaLimiteEntrega, IdCliente, idEmpleado, RTN,IdGarantia,IdPromocion,IdDescuento,IdLente,cantidad,IdProducto,rebaja,precioLente,subtotal,total,nuevoPrecio,idUsuario})
          res.status(201).json(result);
      } catch (error) {
          console.log(error);
      } */
  },

}