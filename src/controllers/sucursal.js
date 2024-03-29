import { ModSucursal } from "../models/sucursal.js";

export const ContrSucursal= {

    getSucursales:async(req,res)=>{
        const sucursal =await ModSucursal.getSucursales()
        res.json(sucursal)
    },

    getSucursalInactivas:async(req,res)=>{
        const sucursal =await ModSucursal.getSucursalInactivas()
        res.json(sucursal)
    },

    postInsertSucursal:async(req,res)=>{
        try {
            const{IdDepartamento, IdCiudad, direccion, telefono, sucursal, estado}= req.body;
            const result = await ModSucursal.postInsertSucursal({IdDepartamento, IdCiudad, direccion, telefono, sucursal, estado});
            if (result == false) {
                res.status(201).json(result);
              } else {
                res.status(201).json(result);
              }
        } catch (error) {
            console.log(error);
        }
    },

    putUpdateSucursal:async(req,res)=>{
        try {
            const{IdDepartamento, IdCiudad, direccion, telefono, estado, IdSucursal}= req.body;
            const result = await ModSucursal.putUpdateSucursal({IdDepartamento, IdCiudad, direccion, telefono, estado, IdSucursal});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },


    deleteSucursal:async(req,res)=> {
        try {
            const {IdSucursal} = req.body;
            const result  = await ModSucursal.deleteSucursal({IdSucursal});
            res.status(201).json({ id: result.id});
        } catch (error) {
            console.log(error);
        }
    },


}