import { connectDB } from "../config/Conn.js";

export const ModMarca = {
  
  getMarcas: async () => {
    let conexion
    try {
   conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_marca");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener las marcas");
    } 
  },

  postInsertMarca: async (marca) => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("insert into tbl_marca (descripcion) values (?);",
        [
          marca.descripcion,
        ]
      );
      conexion.end()
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al crear marca");
    }
  },
  putUpdateMarca: async (marca)=>{
    let conexion
      try {
         conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_marca set descripcion = ? WHERE IdMarca= ?;",
        [
          marca.descripcion,
          marca.IdMarca,
        ]
        )
        conexion.end()
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al actualizar la marca")
      }
  },
  delMarca: async (marca) => {
    let conexion
    try {
       conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_marca WHERE IdMarca = ?;", [
        marca.IdMarca,
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar la marca");
    }
  },
};
