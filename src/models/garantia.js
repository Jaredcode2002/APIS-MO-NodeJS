import { connectDB } from "../config/Conn.js";

export const ModGarantia = {

  getGarantias: async () => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("SELECT g.IdGarantia, g.descripcion, ma.descripcion as Marca, mo.detalle as Modelo, g.mesesGarantia as Meses, g.estado, p.descripcion AS producto FROM tbl_garantia as g inner join tbl_producto as p on g.IdProducto=p.IdProducto inner join tbl_modelo as mo on mo.IdModelo=p.IdModelo inner join tbl_marca as ma on ma.IdMarca=mo.idMarca;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener las garantias");
    }
  },
  postInsertGarantia: async (garantia) => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("INSERT INTO tbl_garantia (descripcion, mesesGarantia, IdProducto, estado) VALUES (?,?,?,?);",
        [
          garantia.descripcion,
          garantia.mesesGarantia,
          garantia.IdProducto,
          garantia.estado,
        ]
      );
      conexion.end()
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al crear garantia");
    }
  },
  putUpdateGarantia: async (garantia) => {
    let conexion
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_garantia set descripcion=? , mesesGarantia= ?, IdProducto= ?, estado= ? where IdGarantia = ?;",
        [
          garantia.descripcion,
          garantia.mesesGarantia,
          garantia.IdProducto,
          garantia.estado,
          garantia.IdGarantia,
        ]
      )
      conexion.end()
      return { estado: "okss" }
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al actualizar la garantia")
    }
  },
  delGarantia: async (garantia) => {
    let conexion
    try {
       conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_garantia WHERE IdGarantia = ?;", [
        garantia.IdGarantia
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar la garantia");
    }
  },
  
};
