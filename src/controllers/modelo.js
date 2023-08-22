import { ModModelo } from "../models/modelo.js";

export const ContrModelo = {
  getModelos: async (req,res) => {
    const modelos = await ModModelo.getModelo();
    res.status(200).json(modelos);
  },
  postModelo: async (req, res) => {
    try {
      const { IdMarca, detalle, anio} = req.body;
      const result = await ModModelo.postInsertModelo({IdMarca, detalle,anio});
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating model" });
    }
  },
  putModelo: async (req, res) => {
    try {
      const {
        IdMarca,
        detalle,
        anio,
        IdModelo,
        
      } = req.body;
      const result = await ModModelo.putUpdateModelo({
        IdMarca,
        detalle,
        anio,
        IdModelo,
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  delModelo: async (req,res)=>{
    try {
      const {IdModelo} = req.body
      const result = await ModModelo.delModelo({IdModelo})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
};
