import { connectDB } from "../config/Conn.js";

export const ModPromocionMarca = {

  getPromoMarca: async () => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("SELECT pm.IdPromocionMarca, m.descripcion as Marca , p.descripcion as Promocion FROM tbl_promocionmarca as pm inner join tbl_promocion as p on pm.IdPromocion=p.IdPromocion inner join tbl_marca as m on pm.IdMarca=m.IdMarca;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener las promociones");
    }
  },
  postInsertPromoMarca: async (PromoMarca) => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("INSERT INTO tbl_promocionmarca (IdMarca, IdPromocion) VALUES (?,?);",
        [
          PromoMarca.IdMarca,
          PromoMarca.IdPromocion,
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
  putUpdatePromoMarca: async (PromoMarca) => {
    let conexion
    try {
       conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_promocionmarca SET `IdMarca`=?, IdPromocion=?  WHERE `IdPromocionMarca`=?;",
        [
          PromoMarca.IdMarca,
          PromoMarca.IdPromocion,
          PromoMarca.IdPromocionMarca
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
  delPromoMarca: async (PromoMarca) => {
    let conexion
    try {
     conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_promocionmarca WHERE IdPromocionMarca = ?;", [
        PromoMarca.IdPromocionMarca,
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
