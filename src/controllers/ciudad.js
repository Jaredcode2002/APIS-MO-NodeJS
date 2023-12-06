import { ModCiudad } from "../models/ciudad.js";

export const ContrCiudad = {

  getCiudades: async (req,res) => {
    const ciudad = await ModCiudad.getCiudades();
    res.status(200).json(ciudad);
  },

  getCiudadesInactivas: async (req,res) => {
    const ciudad = await ModCiudad.getCiudadesInactivas();
    res.status(200).json(ciudad);
  },

  postInsertCiudad:async(req,res)=>
  {
      try {
          const  {ciudad, estado}=req.body;
          const result = await ModCiudad.postInsertCiudad({ciudad,estado});
          if (result == false) {
              res.status(201).json(result);
            } else {
              res.status(201).json(result);
            }
          } catch (error) {
            console.log(error);
          }
  },

  putUpdateCiudad: async (req, res) => {
    try {
      const {ciudad,estado,IdCiudad} = req.body;
      const result = await ModCiudad.putUpdateCiudad({ciudad,estado,IdCiudad});
      res.status(200).json({id: result.id})
    } catch (error) {
      console.log(error);
    }
  },

  delCiudad: async (req,res)=>{
    try {
      const {IdCiudad} = req.body
      const result = await ModCiudad.delCiudad({IdCiudad})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
    }
  },
  
};