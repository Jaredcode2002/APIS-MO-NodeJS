import { ModCiudad } from "../models/ciudad.js";

export const ContrCiudad = {
  getCiudades: async (req,res) => {
    const ciudad = await ModCiudad.getCiudades();
    res.status(200).json(ciudad);
  },
  postCiudad: async (req, res) => {
    try {
      const { ciudad } = req.body;
      const result = await ModCiudad.postInsertCiudad({ciudad,});
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating ciudad" });
    }
  },
  putCiudad: async (req, res) => {
    try {
      const {
        ciudad,
        IdCiudad,
        
      } = req.body;
      const result = await ModCiudad.putUpdateciudad({
        ciudad,
        IdCiudad,
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  delCiudad: async (req,res)=>{
    try {
      const {IdCiudad} = req.body
      const result = await ModCiudad.delCiudad({IdCiudad})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  
};
