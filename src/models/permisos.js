
import { connectDB } from "../config/Conn.js";

export const ModPermisos= {
 
    getPermisos : async()=> {
try {
    const conexion = await connectDB();
    const[filas] = await conexion.query("select p.Id_Rol, r.Rol, p.Permiso_Insercion, p.Permiso_Eliminacion, p.Permiso_Actualizacion, p.Permiso_Consultar, p.creado_por, p.fecha_creacion, p.modificado_por, p.fecha_modificacion from tbl_permisos as p inner join tbl_ms_roles as r on p.Id_Rol=r.Id_Rol;")
    return filas;
    } catch (error) {
    console.log(error);
    throw new Error("Error al obtener los permisos");
    }
},

}
