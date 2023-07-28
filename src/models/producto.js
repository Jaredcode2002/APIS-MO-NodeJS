import { connectDB } from "../config/Conn.js";

export const ModProducto = {

  getProductos: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("Select p.IdProducto, mo.detalle as Modelo, ma.descripcion as Marca, p.descripcion  ,p.precio, p.cantidadMin, p.cantidadMax from tbl_producto as p inner join tbl_modelo as mo on p.IdModelo=mo.IdModelo inner join tbl_marca as ma on ma.IdMarca=mo.idMarca;");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los productos");
    }
  },
  postInsertProducto: async (producto) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("INSERT INTO tbl_producto (IdModelo, precio, cantidadMin, cantidadMax, descripcion) VALUES (?,?,?,?,?);",
        [
          producto.IdModelo,
          producto.precio,
          producto.cantidadMin,
          producto.cantidadMax,
          producto.descripcion,
        ]
      );
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      throw new Error("Error al crear producto");
    }
  },
  putUpdateProducto: async (producto) => {
    try {
      const conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_producto  SET  precio=?,`cantidadMin`=?,`cantidadMax`=?,descripcion=?  WHERE `IdProducto`=?;",
        [
          producto.precio,
          producto.cantidadMin,
          producto.cantidadMax,
          producto.descripcion,
          producto.IdProducto,
        ]
      )
      return { estado: "okss" }
    } catch (error) {
      console.log(error);
      throw new Error("Error al actualizar el producto")
    }
  },
  delProducto: async (producto) => {
    try {
      const conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_producto WHERE IdProducto = ?;", [
        producto.IdProducto,
      ]);
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al eliminar el producto");
    }
  },
  getProductosInv: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT Distinct inu.`IdProducto`, inu.descripcion, nana.`cantidad`, inu.precio FROM tbl_inventario as nana INNER JOIN  tbl_producto as inu ON inu.`IdProducto`= nana.`IdProducto`",
      
      );
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los productos");
    }
  },
  getProducto: async (producto) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT Distinct inu.`IdProducto`, inu.descripcion, nana.`cantidad`, inu.precio FROM tbl_inventario as nana INNER JOIN  tbl_producto as inu ON inu.`IdProducto`= nana.`IdProducto` WHERE inu.`IdProducto`= ?",
        producto.IdProducto,
      );
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener el producto");
    }
  },
};