import { connectDB } from "../config/Conn.js";

export const ModPromocion = {

  getPromociones: async () => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("SELECT * FROM tbl_promocion");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener las promociones");
    }
  },
  postInsertPromocion: async (promocion) => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("INSERT INTO tbl_promocion (fechaInicial, fechaFinal, estado, descPorcent, descripcion) VALUES (?,?,?,?,?);",
        [
          promocion.fechaInicial,
          promocion.fechaFinal,
          promocion.estado,
          promocion.descPorcent,
          promocion.descripcion
        ]
      );
      conexion.end()

      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al crear promocion");
    }
  },
  putUpdatePromocion: async (promocion) => {
    let conexion
    try {
       conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_promocion  SET `fechaInicial`=?,fechaFinal=?,`estado`=?,`descPorcent`=?, descripcion=?  WHERE `IdPromocion`=?;",
        [
          promocion.fechaInicial,
          promocion.fechaFinal,
          promocion.estado,
          promocion.descPorcent,
          promocion.descripcion,
          promocion.IdPromocion,
        ]
      )
      conexion.end()
      return { estado: "okss" }
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al actualizar la promocion")
    }
  },
  delPromocion: async (promocion) => {
    let conexion
    try {
      conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_promocion WHERE IdPromocion = ?;", [
        promocion.IdPromocion,
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar la promocion");
    }
  },
 
};
