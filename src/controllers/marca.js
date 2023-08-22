import { ModMarca } from "../models/marca.js";

export const ContrMarca = {
  getMarcas: async (req,res) => {
    const marcas = await ModMarca.getMarcas();
    res.status(200).json(marcas);
  },
  postMarca: async (req, res) => {
    try {
      const { descripcion } = req.body;
      const result = await ModMarca.postInsertMarca({descripcion,});
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating user" });
    }
  },
  putMarca: async (req, res) => {
    try {
      const {
        descripcion,
        IdMarca,
        
      } = req.body;
      const result = await ModMarca.putUpdateMarca({
        descripcion,
        IdMarca,
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  delMarca: async (req,res)=>{
    try {
      const {IdMarca} = req.body
      const result = await ModMarca.delMarca({IdMarca})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  
};
