import { connectDB } from "../config/Conn.js";

export const ModProducto = {

  getProductos: async () => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("Select p.IdProducto, mo.detalle as Modelo, ma.descripcion as Marca, p.descripcion  ,p.precio as precio, p.cantidadMin, p.cantidadMax, p.estado, mo.IdModelo from tbl_producto as p inner join tbl_modelo as mo on p.IdModelo=mo.IdModelo inner join tbl_marca as ma on ma.IdMarca=mo.idMarca where p.estado = 'A' ORDER BY p.IdProducto DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  getProductosInactivos: async () => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("Select p.IdProducto, mo.detalle as Modelo, ma.descripcion as Marca, p.descripcion  ,p.precio as precio, p.cantidadMin, p.cantidadMax, p.estado, mo.IdModelo from tbl_producto as p inner join tbl_modelo as mo on p.IdModelo=mo.IdModelo inner join tbl_marca as ma on ma.IdMarca=mo.idMarca where p.estado != 'A' ORDER BY p.IdProducto DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  postInsertProducto: async (producto) => {
    let conexion
    console.log(producto)
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("INSERT INTO tbl_producto (IdModelo, precio, cantidadMin, cantidadMax, descripcion, estado) VALUES (?,?,?,?,?,?);",
        [
          producto.IdModelo,
          producto.precio,
          producto.cantidadMin,
          producto.cantidadMax,
          producto.descripcion,
          producto.estado,
        ]
      );
      const [filas2] = await conexion.query(" INSERT INTO tbl_inventario (IdProducto, cantidad) VALUES (last_insert_id(),0);",
        [
        producto.IdProducto,
        ]);
      conexion.end()
      return { id: filas.insertId, id: filas2.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  putUpdateProducto: async (producto) => {
    let conexion
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_producto  SET  precio=?,`cantidadMin`=?,`cantidadMax`=?,descripcion=?, estado=?  WHERE `IdProducto`=?;",
        [
          producto.precio,
          producto.cantidadMin,
          producto.cantidadMax,
          producto.descripcion,
          producto.estado,
          producto.IdProducto,
         
        ]
      )
      conexion.end()
      return { estado: "okss" }
    } catch (error) {
      console.log(error);
      conexion.end()
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
    }
  },
};