import { connectDB } from "../config/Conn.js";

export const ModPais = {
  
  getPaises: async () => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_pais");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener los paises");
    } 
  },

  postInsertPais: async (pais) => {
    let conexion
    try {
    conexion = await connectDB();
      const [filas] = await conexion.query("insert into tbl_pais (pais) values (?);",
        [
          pais.pais,
        ]
      );
      conexion.end()
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al crear pais");
    }
  },
  putUpdatePais: async (pais)=>{
    let conexion
      try {
         conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_pais set pais = ? WHERE IdPais= ?;",
        [
          pais.pais,
          pais.IdPais,
        ]
        )
        conexion.end()
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al actualizar la pais")
      }
  },
  delPais: async (pais) => {
    let conexion
    try {
       conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_pais WHERE IdPais = ?;", [
        pais.IdPais,
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar la pais");
    }
  },
};