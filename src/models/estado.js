import { connectDB } from "../config/Conn.js";

export const EstadoMod = {
    
    updActivo: async (Usuario)=>{
        let conexion
        try {
             conexion = await connectDB()
            const [filas]= await conexion.query('UPDATE tbl_ms_usuario  SET `Estado_Usuario` = "Activo"  WHERE `Id_Usuario` =?',
            [Usuario.id])
            conexion.end()
            return {state:"ok"}
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    updInactivo: async (Usuario)=>{
        let conexion
        try {
             conexion = await connectDB()
            const [filas]= await conexion.query('UPDATE tbl_ms_usuario  SET `Estado_Usuario` = "Inactivo"  WHERE `Id_Usuario` =?',
            [Usuario.id])
            conexion.end()
            return {state:"ok"}
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
}