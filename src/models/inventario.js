import { connectDB } from "../config/Conn.js";

export const ModInventario = {

  getInventarios: async () => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("select i.IdInventario, P.IdProducto, ma.descripcion, m.detalle, i.cantidad from tbl_inventario as i inner join tbl_producto as p on i.IdProducto=p.IdProducto inner join tbl_modelo as m on p.IdModelo=m.IdModelo inner join tbl_marca as ma on ma.IdMarca=m.idMarca ORDER BY i.IdInventario DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
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
    }
  },
  putUpdateInventarioVentas: async (inventario) => {
    let conexion
    try {
       conexion = await connectDB()
       console.log(inventario.cantidad +" cantidad\n"+inventario.IdProducto+" idP");
        const [filas] = await conexion.query("UPDATE tbl_inventario set cantidad = cantidad - ? WHERE IdProducto=?;",
        [
          inventario.cantidad,
          inventario.IdProducto || inventario.idProducto
        ]
      )
      conexion.end()
      return { estado: "okss" }
    } catch (error) {
      console.log(error);
      conexion.end()
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
    }
  },
  
};