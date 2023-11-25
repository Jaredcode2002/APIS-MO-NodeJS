import { connectDB } from "../config/Conn.js";

export const ModCiudad = {
  
  getCiudades: async () => {
    let conexion 
    try {
      conexion=await connectDB();
      const [filas] = await conexion.query("SELECT ci.IdCiudad, ci.ciudad, CASE  WHEN ci.estado = 'A' THEN 'Activo'  WHEN ci.estado = 'I' THEN 'Inactivo'  ELSE 'Desconocido' END AS estado FROM tbl_ciudad AS ci WHERE ci.estado = 'A' ORDER BY ci.IdCiudad DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    } 
  },

  getCiudadesInactivas:async()=>
    {
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query("SELECT ci.IdCiudad, ci.ciudad, CASE  WHEN ci.estado = 'A' THEN 'Activo'  WHEN ci.estado = 'I' THEN 'Inactivo'  ELSE 'Desconocido' END AS estado FROM tbl_ciudad AS ci WHERE ci.estado != 'A' ORDER BY ci.IdCiudad DESC;");
            return filas;
        
        } catch (error) {
            console.log(error);
        }
    },

    getCiudadExiste: async (ciudad) =>
    {
      let conexion
      conexion = await connectDB();
      try {
        const [filas]=await conexion.query ("Select * from tbl_ciudad where ciudad=?;",       
        [
          ciudad.ciudad
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

  postInsertCiudad: async (ciudad) => {
    let conexion 
    conexion=await connectDB ();
    if (await ModCiudad.getCiudadExiste(ciudad)==false)
    {
      try {
        conexion = await connectDB();
         const [filas] = await conexion.query("insert into tbl_ciudad (ciudad,estado) values (?,?);",
           [
             ciudad.ciudad,
             ciudad.estado,
           ]
         );
         conexion.end()
         return { estado: "OK" };
       } catch (error) {
         console.log(error);
         conexion.end()
         return false
       }
    } else 
    {
      return false
    }
  },

  putUpdateCiudad: async (ciudad)=>{
    let conexion
    if (await ModCiudad.getCiudadExiste(ciudad)==false) {
      try {
        conexion = await connectDB()
         const [filas] = await conexion.query("UPDATE tbl_ciudad set ciudad = ?, estado=? WHERE IdCiudad= ?;",
         [
           ciudad.ciudad,
           ciudad.estado,
           ciudad.IdCiudad,
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

  delCiudad: async (ciudad) => {
    let conexion
    try {
       conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_ciudad WHERE IdCiudad = ?;", [
        ciudad.IdCiudad,
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
};