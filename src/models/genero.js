import { connectDB } from "../config/Conn.js";

export const ModGenero = {

    getGenero: async () => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("SELECT ge.IdGenero, ge.descripcion, CASE  WHEN ge.estado = 'A' THEN 'Activo'  WHEN ge.estado = 'I' THEN 'Inactivo'  ELSE 'Desconocido' END AS estado FROM tbl_genero AS ge WHERE ge.estado = 'A' ORDER BY ge.IdGenero DESC;");
            conexion.end()
            return filas;
        } catch (error) {
            console.long(error);
            conexion.end()
            throw new error("Error al consumir el API")
        }
    },

    getGeneroInactivos:async()=>
    {
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query("SELECT ge.IdGenero, ge.descripcion, CASE  WHEN ge.estado = 'A' THEN 'Activo'  WHEN ge.estado = 'I' THEN 'Inactivo'  ELSE 'Desconocido' END AS estado FROM tbl_genero AS ge WHERE ge.estado != 'A' ORDER BY ge.IdGenero DESC;");
            return filas;
        
        } catch (error) {
            console.log(error);
            throw new Error("Error al consultar los generos");
        }
    },

    getGeneroExiste: async (genero) =>
    {
      let conexion
      conexion = await connectDB();
      try {
        const [filas]=await conexion.query ("Select * from tbl_genero where descripcion=?;",       
        [
          genero.descripcion
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

    postInsertGenero: async (genero)=> {
        let conexion
        conexion = await connectDB();
        if (await ModGenero.getGeneroExiste(genero)==false)
        {
            try {
                const [filas]=await conexion.query ("INSERT INTO  tbl_genero (descripcion,estado) VALUES(?,?);",
                [
                    genero.descripcion,
                    genero.estado,
                ]
                );
                conexion.end()
                return{estado:"OK"};
            } catch (error) {
                console.log(error);
                conexion.end()
                return false
                throw new Error("Error al consultar el API");
            }
        }else{
            return false
        }
    },
    
    putUpdateGenero: async (genero)=>{
        const conexion = await connectDB();
        try {
            const[filas]=await conexion.query ("UPDATE tbl_genero  SET descripcion=?,estado=? where  IdGenero =?;",
            [
                genero.descripcion,
                genero.estado,
                genero.IdGenero,
            ]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
          throw new Error("Error al consultar el API");
            
        }
    },
    
    
    deleteGenero: async (genero)=> {
    try {
        const conexion = await connectDB()
      const [filas] = await conexion.query ("DELETE FROM tbl_genero where IdGenero = ?;",
      [
        genero.IdGenero,
      ]
      );
      return {estado:"OK"}; 
    
    } catch (error) {
        console.log(error);
          throw new Error("Error al consultar el API");
        
    }
    },

}