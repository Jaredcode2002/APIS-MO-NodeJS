import { ModProveedor } from "../models/proveedor.js";

export const ContrProveedor= {

    getProveedores:async(req,res)=>{
        const proveedor=await ModProveedor.getProveedores()
        res.json(proveedor)
    },

    postInsertProveedor:async(req,res)=>{
        try {
            const{nombreProveedor,encargado,pais,ciudad,codigoPostal,direccion,telefono,correoElectronico}= req.body;
            const result = await ModProveedor.postInsertProveedor({nombreProveedor,encargado,pais,ciudad,codigoPostal,direccion,telefono,correoElectronico});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

    putUpdateProveedor:async(req,res)=>{
        try {
            const{nombreProveedor,encargado,pais,ciudad,codigoPostal,direccion,telefono,correoElectronico,IdProveedor}= req.body;
            const result = await ModProveedor.putUpdateProveedor({nombreProveedor,encargado,pais,ciudad,codigoPostal,direccion,telefono,correoElectronico,IdProveedor});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },


    deleteProveedor:async(req,res)=> {
        try {
            const {IdProveedor} = req.body;
            const result  = await ModProveedor.deleteProveedor({IdProveedor});
            res.status(201).json({ id: result.id});
        } catch (error) {
            console.log(error);
        }
    },


}
