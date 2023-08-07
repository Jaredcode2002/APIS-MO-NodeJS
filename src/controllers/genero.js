import { ModGenero } from "../models/genero.js";

export const ContrGenero= {

    getGenero:async(req,res)=>{
        const genero =await ModGenero.getGenero()
        res.json(genero)
    },

    postInsertGenero: async (req,res)=> {
        try {
            const{descripcion}=req.body;
            const result = await ModGenero.postInsertGenero({descripcion});
            res.status(201).json({ id: result.id });
            // res.status(200).json(sucursal);
        } catch (error) {
            console.log(error);
        }
    },
        
    
        
    putInsertGenero : async (req,res)=>{
        try {
            const{descripcion,IdGenero} = req.body;
                    const result  = await ModGenero.putInsertGenero({descripcion,IdGenero});
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
