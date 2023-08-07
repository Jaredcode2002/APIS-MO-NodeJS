import { ModPermisos } from "../models/permisos.js";

export const ContrPermisos= {

    getPermisos:async(req,res)=>{
        const permisos =await ModPermisos.getPermisos()
        res.json(permisos)
    },

}
