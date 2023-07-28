import { connectDB } from "../config/Conn.js";

export const ModCiudad = {
  
  getCiudades: async () => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_ciudad");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los cities");
    } 
  },

  postInsertCiudad: async (ciudad) => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("insert into tbl_ciudad (ciudad) values (?);",
        [
          ciudad.ciudad,
        ]
      );
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      throw new Error("Error al crear ciudad");
    }
  },
  putUpdateciudad: async (ciudad)=>{
      try {
        const conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_ciudad set ciudad = ? WHERE IdCiudad= ?;",
        [
          ciudad.ciudad,
          ciudad.IdCiudad,
        ]
        )
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        throw new Error("Error al actualizar la ciudad")
      }
  },
  delCiudad: async (ciudad) => {
    try {
      const conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_ciudad WHERE IdCiudad = ?;", [
        ciudad.IdCiudad,
      ]);
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al eliminar la ciudad");
    }
  },
};
