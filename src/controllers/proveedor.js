import { ModProveedor } from "../models/proveedor.js";

export const ContrProveedor= {

    getProveedores:async(req,res)=>{
        const proveedor=await ModProveedor.getProveedores()
        res.json(proveedor)
    },

    getProveedoresInactivos:async(req,res)=>{
        const proveedor=await ModProveedor.getProveedoresInactivos()
        res.json(proveedor)
    },

    postInsertProveedor:async(req,res)=>{
        try {
            const{CiaProveedora,encargado,IdPais,IdCiudad,Productos,direccion,telefono,correoElectronico, estado}= req.body;
            const result = await ModProveedor.postInsertProveedor({CiaProveedora,encargado,IdPais,IdCiudad,Productos,direccion,telefono,correoElectronico, estado});
            if (result ==false) {
                res.status(201).json(result);
            }else{
                res.status(201).json(result);
            }
        } catch (error) {
            console.log(error);
        }
    },

    putUpdateProveedor:async(req,res)=>{
        try {
            const{CiaProveedora,encargado,IdPais,IdCiudad,Productos,direccion,telefono,correoElectronico, estado, IdProveedor}= req.body;
            const result = await ModProveedor.putUpdateProveedor({CiaProveedora,encargado,IdPais,IdCiudad,Productos,direccion,telefono,correoElectronico, estado,IdProveedor});
            if (result ==false) {
                res.status(201).json(result);
            }else{
                res.status(201).json(result);
            }
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