import { ModCompras } from "../models/compra.js";
import { connectDB } from "../config/Conn.js";

export const ContrCompra = {
  getCompras: async (req, res) => {
    const compras = await ModCompras.getCompras();
    res.json(compras);
  },
  putAnularCompra:async(req,res)=>{
    const {compraId,idUsuario}=req.body
    const result = await ModCompras.anularCompra(compraId,idUsuario)
    res.json(result)
  },

  postInsertCompra: async (req, res) => {
    const { arrCompras, idProveedor, total } = req.body;
    let conexion = null; // Inicializamos la variable conexion con null

    try {
      conexion = await connectDB(); // Asumiendo que tienes una función connectDB que conecta a la base de datos
      await conexion.beginTransaction();

      const compraId = await ModCompras.postCompras({ idProveedor, total });
      await ModCompras.postCompraDetalle(arrCompras,compraId);

      await conexion.commit();
      res.status(201).json({ id: compraId });
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
  },
};