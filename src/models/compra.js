import { connectDB } from "../config/Conn.js";
import { ModKardex } from "./Kardex.js";
import { ModInventario } from "./inventario.js";

export const ModCompras = {
  getCompras: async () => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query(
        "SELECT * FROM tbl_compra "
      );
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener compras");
    }
  },

  postCompras: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query(
        "INSERT INTO tbl_compra (totalCompra) VALUES (null)"
      );
      conexion.end()
      return filas.insertId;
    } catch (error) {
      conexion.end()
      throw new Error("Error al insertar compra");
    }
  },
  anularCompra:async(compraId,idUsuario)=>{
    let conexion
    try {
       conexion = await connectDB();
      const [compras] = await conexion.query("SELECT cd.cantidad,cd.IdProducto,c.fechaCompra FROM tbl_compradetalle as cd INNER JOIN tbl_compra as c on c.IdCompra=cd.IdCompra where cd.IdCompra = ? and c.Estado='A';",[compraId])

      const promises = compras.map(async (compra) => {
        console.log(compra);
        //await ModInventario.putUpdateInventarioCompras(detalle)
       await ModKardex.postKardexAnularCompra(compra,idUsuario)
        await conexion.query("UPDATE tbl_inventario set cantidad = cantidad - ? where IdProducto=?",
          [compra.cantidad,compra.IdProducto]
        );
      });

      await conexion.query("Update tbl_compra set Estado='I' where IdCompra=?",compraId)
      await Promise.all(promises);
      conexion.end()
      return {result:"ok"}
    } catch (error) {
      conexion.end()
      throw new Error("Error al insertar el detalle de compra");
    }
  },

  postCompraDetalle: async (detalles,compraId) => {
    let conexion
    try {
       conexion = await connectDB();
  
      const promises = detalles.map(async (detalle) => {
        await ModInventario.putUpdateInventarioCompras(detalle)
        await ModKardex.postKardexCompra(detalle)
        await conexion.query(
          "INSERT INTO tbl_compraDetalle (IdCompra, idProveedor, cantidad, idProducto, costoCompra) VALUES (?,?, ?, ?, ?)",
          [compraId, detalle.idProveedor, detalle.cantidad, detalle.idProducto, detalle.costo]
        );
      });
      await Promise.all(promises);
  
      const [sumResult] = await conexion.query(
        " SELECT  p.descripcion as idProducto, pro.CiaProveedora as idProveedor, SUM(costoCompra) AS totalCosto FROM tbl_compraDetalle as cd INNER JOIN tbl_producto as p on p.IdProducto=cd.idProducto INNER JOIN tbl_proveedor as pro on pro.IdProveedor=cd.idProveedor WHERE IdCompra = ?;",
        [compraId]
      );
  
      const totalCosto = sumResult[0].totalCosto || 0; //
      await conexion.query(
        "UPDATE tbl_compra SET totalCompra = ? WHERE IdCompra = ?",
        [totalCosto, compraId]
      );
      conexion.end()
    } catch (error) {
      conexion.end()
      throw new Error("Error al insertar el detalle de compra");
    }
  },
};