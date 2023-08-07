import { connectDB } from "../config/Conn.js";

export const ModProducto = {

  getProductos: async () => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("Select p.IdProducto, mo.detalle as Modelo, ma.descripcion as Marca, p.descripcion  ,p.precio, p.cantidadMin, p.cantidadMax from tbl_producto as p inner join tbl_modelo as mo on p.IdModelo=mo.IdModelo inner join tbl_marca as ma on ma.IdMarca=mo.idMarca;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener los productos");
    }
  },
  postInsertProducto: async (producto) => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("INSERT INTO tbl_producto (IdModelo, precio, cantidadMin, cantidadMax, descripcion) VALUES (?,?,?,?,?);",
        [
          producto.IdModelo,
          producto.precio,
          producto.cantidadMin,
          producto.cantidadMax,
          producto.descripcion,
        ]
      );
      conexion.end()
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al crear producto");
    }
  },
  putUpdateProducto: async (producto) => {
    let conexion
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_producto  SET  precio=?,`cantidadMin`=?,`cantidadMax`=?,descripcion=?  WHERE `IdProducto`=?;",
        [
          producto.precio,
          producto.cantidadMin,
          producto.cantidadMax,
          producto.descripcion,
          producto.IdProducto,
        ]
      )
      conexion.end()
      return { estado: "okss" }
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al actualizar el producto")
    }
  },
  delProducto: async (producto) => {
    let conexion
    try {
       conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_producto WHERE IdProducto = ?;", [
        producto.IdProducto,
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar el producto");
    }
  },
  getProductosInv: async () => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("SELECT Distinct inu.`IdProducto`, inu.descripcion, nana.`cantidad`, inu.precio FROM tbl_inventario as nana INNER JOIN  tbl_producto as inu ON inu.`IdProducto`= nana.`IdProducto`",
      
      );
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener los productos");
    }
  },
  getProducto: async (producto) => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("SELECT Distinct inu.`IdProducto`, inu.descripcion, nana.`cantidad`, inu.precio FROM tbl_inventario as nana INNER JOIN  tbl_producto as inu ON inu.`IdProducto`= nana.`IdProducto` WHERE inu.`IdProducto`= ?",
        producto.IdProducto,
      );
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener el producto");
    }
  },
};