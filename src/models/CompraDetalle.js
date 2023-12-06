import { connectDB } from "../config/Conn.js";

export const ModCompraDetalle = {

  getCompraDetalle: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_compradetalle");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }

  },

  post_CompraDetalle: async (compra) => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("INSERT INTO  tbl_compradetalle (IdCompra,cantidad,idProducto,costoCompra) VALUES(?,?,?,?);",
        [
          compra.IdCompra,
          compra.cantidad,
          compra.idProducto,
          compra.costoCompra,
        ]
      );
      conexion.end()
      return { estado: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },

  put_CompraDetalle: async (compra) => {
    let conexion
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_compradetalle  SET IdCompra=?, cantidad=?,idProducto=?,costoCompra=? WHERE IdCompraDetalle =?;",
        [
          compra.IdCompra,
          compra.cantidad,
          compra.idProducto,
          compra.costoCompra,
          compra.IdCompraDetalle,
        ]
      );
      conexion.end()
      return { estado: "ok" }
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },

  delete_CompraDetalle: async (compra) => {
    let conexion
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("DELETE FROM tbl_compradetalle WHERE IdCompraDetalle =?;",
        [
          compra.IdCompraDetalle,
        ]
      );
      conexion.end()
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },

};
