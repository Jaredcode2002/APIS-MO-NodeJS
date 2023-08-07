import { connectDB } from "../config/Conn.js";

export const ModInventario = {

  getInventarios: async () => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("SELECT i.IdInventario, p.IdProducto, ma.descripcion as Marca, mo.detalle as Modelo, i.cantidad FROM tbl_inventario as i inner join tbl_producto as p on i.IdProducto=p.IdProducto inner join tbl_marca as ma on p.IdMarca=ma.IdMarca inner join tbl_modelo as mo on mo.IdModelo=p.IdModelo;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener el inventario");
    }
  },
  postInsertInventario: async (inventario) => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("INSERT INTO tbl_inventario (IdProducto, cantidad) VALUES (?,0);",
        [
        inventario.IdProducto,
        ]
      );
      conexion.end()
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al registrar inventario");
    }
  },
  putUpdateInventarioCompras: async (inventario) => {
    let conexion
    try {
       conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_inventario set cantidad =(SELECT cantidad from tbl_inventario where `IdProducto`=?)+? WHERE `IdProducto`=?;",
        [
          inventario.idProducto,
          inventario.cantidad,
          inventario.idProducto
        ]
      )
      conexion.end()
      return { estado: "okss" }
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al actualizar el producto dentro de Inventario")
    }
  },
  delInventario: async (inventario) => {
    let conexion
    try {
       conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_Inventario WHERE IdInventario = ?;", [
        inventario.IdInventario
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar producto del inventario");
    }
  },
  
};