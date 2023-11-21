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
      throw new Error("Error al obtener las marcas");
    } 
  },

  getMarcasInactivas:async()=>
    {
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ("SELECT ma.IdMarca, ma.descripcion, CASE  WHEN ma.estado = 'A' THEN 'Activo'  WHEN ma.estado = 'I' THEN 'Inactivo'  ELSE 'Desconocido' END AS estado FROM tbl_marca AS ma WHERE ma.estado != 'A' ORDER BY ma.IdMarca DESC;")
            return filas;
        
        } catch (error) {
            console.log(error);
            throw new Error("Error al consultar los descuentos");
        }
    },

    getMarcaExiste: async (marca) =>
    {
      let conexion
      conexion = await connectDB();
      try {
        const [filas]=await conexion.query ("Select * from tbl_marca where descripcion=?;",       
        [
          marca.descripcion
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
        throw new Error ("Error al crear una nueva marca")
        
      }
    },

  postInsertMarca: async (marca) => {
    let conexion
    conexion = await connectDB();
  if (await ModMarca.getMarcaExiste(marca)== false) 
  {
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
      throw new Error("Error al crear marca");
    }
    } else{
      return false
    }
  },

  putUpdateMarca: async (marca)=>{
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
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al actualizar la marca")
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
      throw new Error("Error al eliminar la marca");
    }
  },
};
