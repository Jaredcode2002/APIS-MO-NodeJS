import { ModMarca } from "../models/marca.js";

export const ContrMarca = {

  getMarcas: async (req,res) => {
    const marcas = await ModMarca.getMarcas();
    res.json(marcas);
  },

  getMarcasInactivas: async (req,res) => {
    const marcas = await ModMarca.getMarcasInactivas();
    res.json(marcas);
  },

  postInsertMarca:async(req,res)=>
    {
        try {
            const  {descripcion, estado}=req.body;
            const result = await ModMarca.postInsertMarca({descripcion,estado});
            //res.status(201).json({ id: result.id });
            if (result == false) {
                res.status(201).json(result);
              } else {
                res.status(201).json(result);
              }
            } catch (error) {
              console.log(error);
            }
    },

  putUpdateMarca: async (req, res) => {
    try {
      const {descripcion, estado, IdMarca} = req.body;
      const result = await ModMarca.putUpdateMarca({descripcion, estado, IdMarca});
      if (result == false) {
        res.status(201).json(result);
      } else {
        res.status(201).json(result);
      }
    } catch (error) {
      console.log(error);
    }
  },
  
  delMarca: async (req,res)=>{
    try {
      const {IdMarca} = req.body
      const result = await ModMarca.delMarca({IdMarca})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
    }
  },
  
};
