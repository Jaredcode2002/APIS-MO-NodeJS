import { connectDB } from "../config/Conn.js";

export const ModMarca = {

  getMarcas: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("SELECT ma.IdMarca, ma.descripcion, CASE  WHEN ma.estado = 'A' THEN 'Activo'  WHEN ma.estado = 'I' THEN 'Inactivo'  ELSE 'Desconocido' END AS estado FROM tbl_marca AS ma WHERE ma.estado = 'A' ORDER BY ma.IdMarca DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },

  getMarcasInactivas: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT ma.IdMarca, ma.descripcion, CASE  WHEN ma.estado = 'A' THEN 'Activo'  WHEN ma.estado = 'I' THEN 'Inactivo'  ELSE 'Desconocido' END AS estado FROM tbl_marca AS ma WHERE ma.estado != 'A' ORDER BY ma.IdMarca DESC;")
      return filas;

    } catch (error) {
      console.log(error);
    }
  },

  getMarcaExiste: async (marca) => {
    let conexion
    conexion = await connectDB();
    try {
      const [filas] = await conexion.query("SELECT * FROM tbl_marca where descripcion=?;",
        [
          marca.descripcion
        ]);
      conexion.end()
      if (filas.length >= 1) {
        return true
      } else {
        return false
      }
    } catch (error) {
      console.long(error);
      conexion.end()

    }
  },

  postInsertMarca: async (marca) => {
    let conexion
    conexion = await connectDB();
    if (await ModMarca.getMarcaExiste(marca) == false) {
      try {
        const [filas] = await conexion.query("insert into tbl_marca (descripcion, estado) values (?,?);",
          [
            marca.descripcion,
            marca.estado,
          ]
        );
        conexion.end()
        return { estado: "OK" };
      } catch (error) {
        console.log(error);
        conexion.end()
        return false
      }
    } else {
      return false
    }
  },

  putUpdateMarca: async (marca) => {
    let conexion
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_marca set descripcion = ?, estado=? WHERE IdMarca= ?;",
        [
          marca.descripcion,
          marca.estado,
          marca.IdMarca,
        ]
      )
      conexion.end()
      return { estado: "ok" }
    } catch (error) {
      console.log(error);
      conexion.end()
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
    }
  },
};
