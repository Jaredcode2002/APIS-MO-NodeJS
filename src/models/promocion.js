import { connectDB } from "../config/Conn.js";

export const ModPromocion = {

  getPromociones: async () => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("SELECT IdPromocion, descripcion, descPorcent, fechaInicial, DATE_FORMAT(fechaInicial, '%d/%m/%Y') as fechaInicialF, fechaFinal, DATE_FORMAT(fechaFinal, '%d/%m/%Y') as fechaFinalF, CASE WHEN estado = 'A' THEN 'Activo' WHEN estado = 'I' THEN 'Inactivo' ELSE 'Desconocido' END AS estado FROM tbl_promocion where estado = 'A' ORDER BY IdPromocion DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  getPromocionesInactivas: async () => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("SELECT IdPromocion,descripcion, descPorcent, fechaInicial, DATE_FORMAT(fechaInicial, '%d/%m/%Y') as fechaInicialF, fechaFinal, DATE_FORMAT(fechaFinal, '%d/%m/%Y') as fechaFinalF, CASE WHEN estado = 'A' THEN 'Activo' WHEN estado = 'I' THEN 'Inactivo' ELSE 'Desconocido' END AS estado FROM tbl_promocion where estado != 'A' ORDER BY IdPromocion DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  getPromocionExiste: async (promocion) => {
    let conexion
    conexion = await connectDB();
    try {
        const [filas] = await conexion.query("SELECT * FROM tbl_promocion where descripcion= ?;",
            [
                promocion.descripcion
            ]
        );
        conexion.end()
        if (filas.legth >= 1) {
            return true
        } else {
            return false
        }
    } catch (error) {
        console.log(error);
        conexion.end()
    }
},
  postInsertPromocion: async (promocion) => {
    let conexion
    conexion = await connectDB();
    if (await ModPromocion.getPromocionExiste(promocion) == false) {
        try {
            const [filas]=await conexion.query("INSERT INTO tbl_promocion (fechaInicial, fechaFinal, estado, descPorcent, descripcion) VALUES (?,?,?,?,?);",
            [
              promocion.fechaInicial,
              promocion.fechaFinal,
              promocion.estado,
              promocion.descPorcent,
              promocion.descripcion
            ]
          );
          conexion.end()
            return { estado: "OK" };
        } catch (error) {
            conexion.end()
            return false
        }
    } else {
        return false
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
    }
  },
 
};
