import { connectDB } from "../config/Conn.js";

export const ModProductoProm = {

  getProductoProm: async () => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("select pp.IdProductoPromocion, p1.descripcion as Producto, p2.descripcion as Promocion from tbl_productopromocion as pp inner join tbl_producto as p1 on pp.IdProducto=p1.IdProducto inner join tbl_promocion as p2 on pp.IdPromocion=p2.IdPromocion;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener las promociones");
    }
  },
  postInsertProductoProm: async (ProductoProm) => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("INSERT INTO tbl_productopromocion (IdProducto, IdPromocion) VALUES (?,?);",
        [
          ProductoProm.IdProducto,
          ProductoProm.IdPromocion,
        ]
      );
      conexion.end()
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al crear promocion");
    }
  },
  putUpdateProductoProm: async (ProductoProm) => {
    let conexion
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_productopromocion  SET `IdProducto`=?, IdPromocion=?  WHERE `IdProductoPromocion`=?;",
        [
          ProductoProm.IdProducto,
          ProductoProm.IdPromocion,
          ProductoProm.IdProductoPromocion
        ]
      )
      conexion.end()
      return { estado: "okss" }
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al actualizar la promocion")
    }
  },
  delProductoProm: async (ProductoProm) => {
    let conexion
    try {
       conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_productopromocion WHERE IdProductoPromocion = ?;", [
        ProductoProm.IdProductoPromocion,
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar la promocion");
    }
  },
 
};
