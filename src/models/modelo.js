import { connectDB } from "../config/Conn.js";

export const ModModelo = {
  
  getModelo: async () => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT mo.`IdModelo`,ma.descripcion as Marca ,mo.detalle as Modelo, mo.anio FROM tbl_modelo as mo INNER JOIN tbl_marca as ma  ON ma.`idMarca`=mo.`idMarca`");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener modelos");
    } 
  },
  postInsertModelo: async (modelo) => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("insert into tbl_modelo (IdMarca, detalle) values (?,?);",
        [
          modelo.IdMarca,
          modelo.detalle,
        ]
      );
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      throw new Error("Error al crear modelo");
    }
  },
  putUpdateModelo: async (modelo)=>{
      try {
        const conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_modelo set IdMarca= ?, detalle = ? WHERE IdModelo= ?;",
        [
          modelo.IdMarca,
          modelo.detalle,
          modelo.IdModelo,
        ]
        )
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        throw new Error("Error al actualizar el modelo")
      }
  },
  delModelo: async (modelo) => {
    try {
      const conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_modelo WHERE IdModelo = ?;", [
        modelo.IdModelo,
      ]);
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al eliminar el modelo");
    }
  },
};
