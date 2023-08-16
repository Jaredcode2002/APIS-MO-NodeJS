import { ModPermisos } from "../models/permisos.js";

export const ContrPermisos= {

    getPermisos:async(req,res)=>{
        const permisos =await ModPermisos.getPermisos()
        res.json(permisos)
    },
    getPermisosXRol:async(req,res)=>{
        const {idRol} = req.body
        const permisos =await ModPermisos.getPermisosXRol({idRol})
        res.json(permisos)
    },
    putPermisosXRolOBJ1:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.putPermisosXRolOBJ1({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ2:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.putPermisosXRolOBJ2({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ3:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.putPermisosXRolOBJ3({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ4:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.putPermisosXRolOBJ4({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ5:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.putPermisosXRolOBJ5({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ6:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.putPermisosXRolOBJ6({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ7:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.putPermisosXRolOBJ7({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ8:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.putPermisosXRolOBJ8({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    putPermisosXRolOBJ9:async(req,res)=>{
        const {idRol,insert,del,select,upd} = req.body
        const permisos =await ModPermisos.putPermisosXRolOBJ9({idRol,insert,del,select,upd})
        res.json(permisos)
    },
    postPermisosObj:async (req,res)=>{
        const {idRol,idObj}=req.body
        const permisos = await ModPermisos.postPermisosObj({idRol,idObj})
        res.json(permisos)
    },

}