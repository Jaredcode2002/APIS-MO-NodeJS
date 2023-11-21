import { ModGenero } from "../models/genero.js";

export const ContrGenero= {

    getGenero:async(req,res)=>{
        const genero =await ModGenero.getGenero()
        res.json(genero)
    },

    getGeneroInactivos:async(req,res)=>{
        const genero =await ModGenero.getGeneroInactivos()
        res.json(genero)
    },

    postInsertGenero:async(req,res)=>
    {
        try {
            const  {descripcion, estado}=req.body;
            const result = await ModGenero.postInsertGenero({descripcion,estado});
            res.status(201).json({ id: result.id });
            if (result == false) {
                res.status(201).json(result);
              } else {
                res.status(201).json(result);
              }
            } catch (error) {
              console.log(error);
            }
    },
        
    putUpdateGenero : async (req,res)=>{
        try {
            const{descripcion, estado, IdGenero} = req.body;
            const result  = await ModGenero.putUpdateGenero({descripcion, estado, IdGenero});
            res.status(201).json({ id: result.id});
        } catch (error) {
            console.log(error);
        }
    },
        
            deleteGenero : async (req,res)=>{
        try {
            const{IdGenero} = req.body;
            const result  = await ModGenero.deleteGenero({IdGenero});
           res.status(201).json({ id: result.id});
            
        } catch (error) {
            console.log(error);
        }
        
        },
         

}
