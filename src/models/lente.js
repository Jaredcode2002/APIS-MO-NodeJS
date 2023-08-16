import { connectDB } from "../config/Conn.js";


export const ModLente = {

    getLentes:async()=>
    {
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ("SELECT * FROM tbl_lente")
            return filas;
        
        } catch (error) {
            console.log(error);
            throw new Error("Error al consultar los lentes");
        }
    },

    postInsertLente:async(lente)=>
    {
        const conexion= await connectDB(); 
        try {
            const [filas]=await conexion.query("INSERT INTO tbl_lente (lente,precio) VALUES(?,?);",
            [
                lente.lente,
                lente.precio,
            ]
            );
            return{estado:"OKAY"}
        } catch (error) {
            onsole.log(error);
            throw new Error("Error al consultar al insertar el lente");
        }
    },

    putLente:async (lente)=>
    {
        const conexion=await connectDB();
        try {
            const [filas] = await conexion.query("UPDATE tbl_lente SET lente=?,precio=? WHERE  IdLente =?;",
            [
                lente.lente,
                lente.precio,
                lente.IdLente
            ]
            );
            return{estado:"OKAY"}
        } catch (error) {
            onsole.log(error);
            throw new Error("Error al consultar al actualizar el lente");
        }
    },

    deleteLente : async (lente)=>
    {
        try {
            const conexion = await connectDB()
            const [filas]=await conexion.query("DELETE FROM tbl_lente WHERE  IdLente =?;",
            [
                lente.IdLente,
            ]
            );
        return{estado:"OKAY"}
        } catch (error) {
            console.log(error);
      throw new Error("Error al eliminar el lente");
        }
    },
}