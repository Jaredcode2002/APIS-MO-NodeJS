import { ModPais } from "../models/pais.js";

export const ContrPais = {

  getPaises: async (req,res) => {
    const pais = await ModPais.getPaises();
    res.status(200).json(pais);
  },

  getPaisInactivos: async (req,res) => {
    const pais = await ModPais.getPaisInactivos();
    res.status(200).json(pais);
  },
  
  postInsertPais:async(req,res)=>
    {
        try {
            const  {pais, estado}=req.body;
            const result = await ModPais.postInsertPais({pais,estado});
            if (result == false) {
                res.status(201).json(result);
              } else {
                res.status(201).json(result);
              }
            } catch (error) {
              console.log(error);
            }
    },
    
    putUpdatePais: async (req, res) => {
    try {
      const {pais, estado, IdPais} = req.body;
      const result = await ModPais.putUpdatePais({pais,estado,IdPais});
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
    }
  },

  delPais: async (req,res)=>{
    try {
      const {IdPais} = req.body
      const result = await ModPais.delPais({IdPais})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
    }
  },
  
};