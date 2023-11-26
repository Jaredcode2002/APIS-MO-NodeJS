import { connectDB } from "../config/Conn.js";

export const ModPais = {
  
  getPaises: async () => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("SELECT pa.IdPais, pa.Pais, CASE  WHEN pa.estado = 'A' THEN 'Activo'  WHEN pa.estado = 'I' THEN 'Inactivo'  ELSE 'Desconocido' END AS estado FROM tbl_pais AS pa WHERE pa.estado = 'A' ORDER BY pa.IdPais DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    } 
  },

  getPaisInactivos:async()=>
  {
      try {
          const conexion = await connectDB();
          const [filas] = await conexion.query("SELECT pa.IdPais, pa.Pais, CASE  WHEN pa.estado = 'A' THEN 'Activo'  WHEN pa.estado = 'I' THEN 'Inactivo'  ELSE 'Desconocido' END AS estado FROM tbl_pais AS pa WHERE pa.estado != 'A' ORDER BY pa.IdPais DESC;");
          return filas;
      
      } catch (error) {
          console.log(error);
      }
  },

  getPaisExiste: async (pais) =>
  {
    let conexion
    conexion = await connectDB();
    try {
      const [filas]=await conexion.query ("Select * from tbl_pais where pais=?;",       
      [
        pais.pais
      ]);
      conexion.end()
      if (filas.length>=1)
      {
        return true 
      } else {
            return false
      }
    } catch (error) {
      console.long (error);
      conexion.end()
      
    }
  },

  postInsertPais: async (pais) => {
    let conexion
    conexion=await connectDB();
    if (await ModPais.getPaisExiste(pais)==false)
    {
      try {
          const [filas] = await conexion.query("insert into tbl_pais (pais,estado) values (?,?);",
            [
              pais.pais,
              pais.estado, 
            ]
          );
          conexion.end()
          return { estado:"OK" };
        } catch (error) {
          console.log(error);
          conexion.end()
          return false
        }
    } else{
      return false
    }
  },

  putUpdatePais: async (pais)=>{
    let conexion
    if (await ModPais.getPaisExiste(pais)==false) {
      try {
        conexion = await connectDB()
       const [filas] = await conexion.query("UPDATE tbl_pais set pais = ?, estado=? WHERE IdPais= ?;",
       [
         pais.pais,
         pais.estado,
         pais.IdPais,
       ]
       )
       conexion.end()
       return {estado:"ok"}
     } catch (error) {
       console.log(error);
       conexion.end()
     }
    } else {
      return false;
    }
      
  },
  delPais: async (pais) => {
    let conexion
    try {
       conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_pais WHERE IdPais = ?;", [
        pais.IdPais,
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
};