import { connectDB } from "../config/Conn.js";

export const ModPais = {
  
  getPaises: async () => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_pais");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los paises");
    } 
  },

  postInsertPais: async (pais) => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("insert into tbl_pais (pais) values (?);",
        [
          pais.pais,
        ]
      );
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      throw new Error("Error al crear pais");
    }
  },
  putUpdatePais: async (pais)=>{
      try {
        const conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_pais set pais = ? WHERE IdPais= ?;",
        [
          pais.pais,
          pais.IdPais,
        ]
        )
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        throw new Error("Error al actualizar la pais")
      }
  },
  delPais: async (pais) => {
    try {
      const conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_pais WHERE IdPais = ?;", [
        pais.IdPais,
      ]);
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al eliminar la pais");
    }
  },
};
