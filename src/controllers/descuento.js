import { ModDescuento } from "../models/descuento.js";

export const ContrDescuento = {

    getDescuento:async(req,res)=>
    {
        const descuento = await ModDescuento.getDescuento()
        res.json(descuento)
    },

    getDescuentosInactivos:async(req,res)=>
    {
        const descuento = await ModDescuento.getDescuentosInactivos()
        res.json(descuento)
    },

    postInsertDescuento:async(req,res)=>
    {
        try {
            const  {estado,descPorcent,descPorcentEmpleado}=req.body;
            const result = await ModDescuento.postInsertDescuento({estado,descPorcent,descPorcentEmpleado});
            if (result == false) {
                res.status(201).json( result );
              } else {
                res.status(201).json( result);
              }
            } catch (error) {
              console.log(error);
            }
    },

    putDescuento:async(req,res)=>
    {
        try {
            const  {estado,descPorcent,descPorcentEmpleado,IdDescuento}=req.body;
            const result = await ModDescuento.putDescuento({estado,descPorcent,descPorcentEmpleado,IdDescuento});
            if (result == false) {
                res.status(201).json( result );
              } else {
                res.status(201).json( result);
              }
        } catch (error) {
            console.log(error);
        }
    },

    deleteDescuento : async (req,res)=>
    {
        try {
            const  {IdDescuento}=req.body;
            const result = await ModDescuento.deleteDescuento({IdDescuento});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },
    
}