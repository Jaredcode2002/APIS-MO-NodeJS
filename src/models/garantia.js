import { connectDB } from "../config/Conn.js";

export const ModGarantia = {

  getGarantias: async () => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("SELECT g.IdGarantia, g.descripcion, ma.descripcion as Marca, mo.detalle as Modelo, g.mesesGarantia as Meses, p.descripcion AS producto,CASE WHEN g.estado = 'A' THEN 'Activo' WHEN g.estado = 'I' THEN 'Inactivo' ELSE 'Desconocido' END AS estado FROM tbl_garantia as g inner join tbl_producto as p on g.IdProducto=p.IdProducto inner join tbl_modelo as mo on mo.IdModelo=p.IdModelo inner join tbl_marca as ma on ma.IdMarca=mo.idMarca where g.estado= 'A' ORDER BY g.IdGarantia DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  getGarantiasInactivas: async () => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("SELECT g.IdGarantia, g.descripcion, ma.descripcion as Marca, mo.detalle as Modelo, g.mesesGarantia as Meses, p.descripcion AS producto,CASE WHEN g.estado = 'A' THEN 'Activo' WHEN g.estado = 'I' THEN 'Inactivo' ELSE 'Desconocido' END AS estado FROM tbl_garantia as g inner join tbl_producto as p on g.IdProducto=p.IdProducto inner join tbl_modelo as mo on mo.IdModelo=p.IdModelo inner join tbl_marca as ma on ma.IdMarca=mo.idMarca where g.estado != 'A' ORDER BY g.IdGarantia DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  getGarantiaExiste: async (garantia) => {
    let conexion
    conexion = await connectDB();
    try {
        const [filas] = await conexion.query("select * from tbl_garantia where descripcion =?;",
            [
                garantia.descripcion
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
  postInsertGarantia: async (garantia) => {
    let conexion
    conexion = await connectDB();
    if (await ModGarantia.getGarantiaExiste(garantia) == false) {
      try {
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
      }
    } else {
      return false
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
    }
  },
  
};
