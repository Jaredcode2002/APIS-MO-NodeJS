import { connectDB } from "../config/Conn.js";

export const ModPermisos = {

    getPermisos: async () => {
        let conexion
        try {
         conexion = await connectDB();
            const [filas] = await conexion.query("select p.Id_Rol, o.Objeto, r.Rol, p.Permiso_Insercion, p.Permiso_Eliminacion, p.Permiso_Actualizacion, p.Permiso_Consultar, p.creado_por, p.fecha_creacion, p.modificado_por, p.fecha_modificacion from tbl_permisos as p inner join tbl_ms_roles as r on p.Id_Rol=r.Id_Rol inner join tbl_objetos as o on o.Id_Objeto=p.Id_Objeto;")
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    getPermisosXRol: async (permisos) => {
        let conexion
        try {
         conexion = await connectDB();
            const [filas] = await conexion.query("select o.`Objeto`, p.Permiso_Insercion as PermI, p.Permiso_Eliminacion as PermDel, p.Permiso_Actualizacion as PermUpd, p.Permiso_Consultar as PermConsul, p.creado_por, p.fecha_creacion, p.modificado_por, p.fecha_modificacion from tbl_permisos as p inner join tbl_ms_roles as r on p.Id_Rol=r.Id_Rol inner join tbl_objetos as o on o.`Id_Objeto`=p.`Id_Objeto`  where p.`Id_Rol`=?",
            [permisos.idRol])
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    putPermisosXRolOBJ1: async (permisos) => {
        let conexion
        try {
         conexion = await connectDB();
            const [filas] = await conexion.query("UPDATE tbl_permisos set `Permiso_Insercion`=?,`Permiso_Eliminacion`=?,`Permiso_Actualizacion`=?,`Permiso_Consultar`=? WHERE `Id_Rol`=? and `Id_Objeto`=1;",
            [
            permisos.insert,
            permisos.del,
            permisos.upd,
            permisos.select,
            permisos.idRol])
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    putPermisosXRolOBJ2: async (permisos) => {
        let conexion
        console.log(permisos);
        try {
         conexion = await connectDB();
            const [filas] = await conexion.query("UPDATE tbl_permisos set `Permiso_Insercion`=?,`Permiso_Eliminacion`=?,`Permiso_Actualizacion`=?,`Permiso_Consultar`=? WHERE `Id_Rol`=? and `Id_Objeto`=2;",
            [
            permisos.insert,
            permisos.del,
            permisos.upd,
            permisos.select,
            permisos.idRol])
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    putPermisosXRolOBJ3: async (permisos) => {
        let conexion
        try {
         conexion = await connectDB();
            const [filas] = await conexion.query("UPDATE tbl_permisos set `Permiso_Insercion`=?,`Permiso_Eliminacion`=?,`Permiso_Actualizacion`=?,`Permiso_Consultar`=? WHERE `Id_Rol`=? and `Id_Objeto`=3;",
            [
            permisos.insert,
            permisos.del,
            permisos.upd,
            permisos.select,
            permisos.idRol])
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    putPermisosXRolOBJ4: async (permisos) => {
        let conexion
        try {
         conexion = await connectDB();
            const [filas] = await conexion.query("UPDATE tbl_permisos set `Permiso_Insercion`=?,`Permiso_Eliminacion`=?,`Permiso_Actualizacion`=?,`Permiso_Consultar`=? WHERE `Id_Rol`=? and `Id_Objeto`=4;",
            [
            permisos.insert,
            permisos.del,
            permisos.upd,
            permisos.select,
            permisos.idRol])
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    putPermisosXRolOBJ5: async (permisos) => {
        let conexion
        try {
         conexion = await connectDB();
            const [filas] = await conexion.query("UPDATE tbl_permisos set `Permiso_Insercion`=?,`Permiso_Eliminacion`=?,`Permiso_Actualizacion`=?,`Permiso_Consultar`=? WHERE `Id_Rol`=? and `Id_Objeto`=5;",
            [
            permisos.insert,
            permisos.del,
            permisos.upd,
            permisos.select,
            permisos.idRol])
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    putPermisosXRolOBJ6: async (permisos) => {
        let conexion
        try {
         conexion = await connectDB();
            const [filas] = await conexion.query("UPDATE tbl_permisos set `Permiso_Insercion`=?,`Permiso_Eliminacion`=?,`Permiso_Actualizacion`=?,`Permiso_Consultar`=? WHERE `Id_Rol`=? and `Id_Objeto`=6;",
            [
            permisos.insert,
            permisos.del,
            permisos.upd,
            permisos.select,
            permisos.idRol])
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    putPermisosXRolOBJ7: async (permisos) => {
        let conexion
        try {
         conexion = await connectDB();
            const [filas] = await conexion.query("UPDATE tbl_permisos set `Permiso_Insercion`=?,`Permiso_Eliminacion`=?,`Permiso_Actualizacion`=?,`Permiso_Consultar`=? WHERE `Id_Rol`=? and `Id_Objeto`=7;",
            [
            permisos.insert,
            permisos.del,
            permisos.upd,
            permisos.select,
            permisos.idRol])
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    putPermisosXRolOBJ8: async (permisos) => {
        let conexion
        try {
         conexion = await connectDB();
            const [filas] = await conexion.query("UPDATE tbl_permisos set `Permiso_Insercion`=?,`Permiso_Eliminacion`=?,`Permiso_Actualizacion`=?,`Permiso_Consultar`=? WHERE `Id_Rol`=? and `Id_Objeto`=8;",
            [
            permisos.insert,
            permisos.del,
            permisos.upd,
            permisos.select,
            permisos.idRol])
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    putPermisosXRolOBJ9: async (permisos) => {
        let conexion
        try {
         conexion = await connectDB();
            const [filas] = await conexion.query("UPDATE tbl_permisos set `Permiso_Insercion`=?,`Permiso_Eliminacion`=?,`Permiso_Actualizacion`=?,`Permiso_Consultar`=? WHERE `Id_Rol`=? and `Id_Objeto`=9;",
            [
            permisos.insert,
            permisos.del,
            permisos.upd,
            permisos.select,
            permisos.idRol])
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    postPermisosObj:async (permisos)=>{
        let conexion
        try {
            conexion=await connectDB()
            const [filas] = await conexion.query("SELECT `Permiso_Insercion` as insertar,`Permiso_Eliminacion` as eliminar, `Permiso_Actualizacion` as actualizar, `Permiso_Consultar` as consultar FROM tbl_permisos where `Id_Rol`=? and `Id_Objeto`=?",[permisos.idRol,permisos.idObj])
            conexion.end()
            return filas
        } catch (error) {
            
        }
    }


}