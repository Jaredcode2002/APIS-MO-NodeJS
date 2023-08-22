import { connectDB } from "../config/Conn.js";

export const ModCiudad = {
  
  getCiudades: async () => {
    let conexion 
    try {
      conexion=await connectDB();
      const [filas] = await conexion.query("select * from tbl_ciudad");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener los cities");
    } 
  },

  postInsertCiudad: async (ciudad) => {
    let conexion 
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("insert into tbl_ciudad (ciudad) values (?);",
        [
          ciudad.ciudad,
        ]
      );
      conexion.end()
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al crear ciudad");
    }
  },
  putUpdateciudad: async (ciudad)=>{
    let conexion
      try {
       conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_ciudad set ciudad = ? WHERE IdCiudad= ?;",
        [
          ciudad.ciudad,
          ciudad.IdCiudad,
        ]
        )
        conexion.end()
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al actualizar la ciudad")
      }
  },
  delCiudad: async (ciudad) => {
    let conexion
    try {
       conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_ciudad WHERE IdCiudad = ?;", [
        ciudad.IdCiudad,
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar la ciudad");
    }
  },
};