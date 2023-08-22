import { ModInventario } from "../models/inventario.js";

export const ContrInventario = {
  getInventarios: async (req,res) => {
    const Inventarios = await ModInventario.getInventarios();
    res.status(200).json(Inventarios);
  },
  postInventario: async (req, res) => {
    try {
      const { IdProducto, cantidad } = req.body;
      const result = await ModInventario.postInsertInventario({IdProducto, cantidad});
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating inventory" });
    }
  },
  putInventario: async (req, res) => {
    try {
      const {
      cantidad,
      IdInventario,
        
      } = req.body;
      const result = await ModInventario.putUpdateInventario({
        cantidad,
        IdInventario,
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  delInventario: async (req,res)=>{
    try {
      const {IdInventario} = req.body
      const result = await ModInventario.delInventario({IdInventario})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  
};
