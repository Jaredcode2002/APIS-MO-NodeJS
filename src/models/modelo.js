import { connectDB } from "../config/Conn.js";

export const ModModelo = {
  
  getModelo: async () => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("SELECT mo.`IdModelo`,ma.descripcion as Marca ,mo.detalle as Modelo, mo.anio FROM tbl_modelo as mo INNER JOIN tbl_marca as ma  ON ma.`idMarca`=mo.`idMarca`");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener modelos");
    } 
  },
  postInsertModelo: async (modelo) => {
    let conexion
    try {
    conexion = await connectDB();
      const [filas] = await conexion.query("insert into tbl_modelo (IdMarca, detalle,anio) values (?,?,?);",
        [
          modelo.IdMarca,
          modelo.detalle,
          modelo.anio,
        ]
      );
      conexion.end()
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al crear modelo");
    }
  },
  putUpdateModelo: async (modelo)=>{
    let conexion
      try {
         conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_modelo set IdMarca= ?, detalle = ?, anio=? WHERE IdModelo= ?;",
        [
          modelo.IdMarca,
          modelo.detalle,
          modelo.anio,
          modelo.IdModelo,
        ]
        )
        conexion.end()
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al actualizar el modelo")
      }
  },
  delModelo: async (modelo) => {
    let conexion
    try {
       conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_modelo WHERE IdModelo = ?;", [
        modelo.IdModelo,
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar el modelo");
    }
  },
};