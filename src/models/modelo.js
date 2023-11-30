import { connectDB } from "../config/Conn.js";

export const ModModelo = {
  
  getModelo: async () => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("SELECT mo.IdModelo, ma.descripcion AS Marca,mo.detalle,mo.color,mo.anio,CASE WHEN mo.estado = 'A' THEN 'Activo'WHEN mo.estado = 'I' THEN 'Inactivo' ELSE 'Desconocido'END AS estado FROM tbl_modelo AS mo INNER JOIN tbl_marca AS ma ON ma.idMarca = mo.idMarca WHERE mo.estado = 'A' ORDER BY mo.IdModelo DESC ");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    } 
  },

  getModeloslInactivos:async()=> {
    let conexion
        try {
        conexion = await connectDB();
          const [filas] = await conexion.query ("SELECT mo.IdModelo, ma.descripcion AS Marca,mo.detalle,mo.color,mo.anio,CASE WHEN mo.estado = 'A' THEN 'Activo'WHEN mo.estado = 'I' THEN 'Inactivo' ELSE 'Desconocido'END AS estado FROM tbl_modelo AS mo INNER JOIN tbl_marca AS ma ON ma.idMarca = mo.idMarca WHERE mo.estado != 'A' ORDER BY mo.IdModelo DESC;")
        conexion.end()
          return filas;
        } catch (error) {
            console.log(error);
             conexion.end()
        }
    },

    getModeloExiste: async(modelo)=>
    {
      let conexion 
      conexion = await connectDB();
      try {
        const [filas]=await conexion.query("SELECT *FROM tbl_modelo WHERE detalle =?;",
        [
          modelo.detalle
        ]
        );
        conexion.end()
        if (filas.length >=1)
        {
          return true
        } else{
          return false
        }
      } catch (error) {
        console.log(error);
        conexion.end()
        
      }
    },

    postInsertModelo: async (modelo) => {
      let conexion;
      conexion = await connectDB();
      if (await ModModelo.getModeloExiste(modelo)==false)
      {
        try {
            const [filas] = await conexion.query("insert into tbl_modelo (IdMarca, detalle, color, anio, estado) values (?,?,?,?,?);", [
              modelo.IdMarca,
              modelo.detalle,
              modelo.color,
              modelo.anio,
              modelo.estado
            ]
            );
              conexion.end()
            return { estado: "OK"  };
        } catch (error)
        {
          console.log(error);
      conexion.end()
      return false
        }
      } else 
      {
        return false
      }
    },
      
    putUpdateModelo: async (modelo)=>{
    let conexion
    if (await ModModelo.getModeloExiste(modelo)==false) {
      try {
        conexion = await connectDB()
       const [filas] = await conexion.query("UPDATE tbl_modelo set IdMarca= ?, detalle = ?, color=? , anio=?, estado=?  WHERE IdModelo= ?;",
       [
         modelo.IdMarca,
         modelo.detalle,
         modelo.color,
         modelo.anio,
         modelo.estado,
         modelo.IdModelo,
       ]
       )
       conexion.end()
       return {estado:"ok"}
     } catch (error) {
       console.log(error);
       conexion.end()
     }
    } else {
      false 
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
    }
  },
};