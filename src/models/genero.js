import { connectDB } from "../config/Conn.js";

export const ModGenero = {

    getGenero: async () => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("SELECT * FROM tbl_genero")
            conexion.end()
            return filas;
        } catch (error) {
            console.long(error);
            conexion.end()
            throw new error("Error al consumir el API")
        }
    },

    postInsertGenero: async (genero)=> {
        const conexion = await connectDB();
        try {
            const [filas]=await conexion.query ("INSERT INTO  tbl_genero (descripcion) VALUES(?);",
            [
                genero.descripcion,
            ]
            );
            return{estado:"OK"};
        } catch (error) {
            console.log(error);
            throw new Error("Error al consultar el API");
        }
    },
    
    putInsertGenero: async (genero)=>{
        const conexion = await connectDB();
        try {
            const[filas]=await conexion.query ("UPDATE tbl_genero  SET descripcion=? where  IdGenero =?;",
            [
                genero.descripcion,
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