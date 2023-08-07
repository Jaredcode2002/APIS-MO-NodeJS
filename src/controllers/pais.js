import { ModPais } from "../models/pais.js";

export const ContrPais = {
  getPaises: async (req,res) => {
    const pais = await ModPais.getPaises();
    res.status(200).json(pais);
  },
  
  postPais: async (req, res) => {
    try {
      const { pais } = req.body;
      const result = await ModPais.postInsertPais({pais,});
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating pais" });
    }
  },
  putPais: async (req, res) => {
    try {
      const {
        pais,
        IdPais,
        
      } = req.body;
      const result = await ModPais.putUpdatePais({
        pais,
        IdPais,
        
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  delPais: async (req,res)=>{
    try {
      const {IdPais} = req.body
      const result = await ModPais.delPais({IdPais})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  
};