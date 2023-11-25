import { ModModelo } from "../models/modelo.js";

export const ContrModelo = {

  getModelos: async (req,res) => {
    const modelos = await ModModelo.getModelo();
    res.json(modelos);
  },

  getModeloslInactivos: async (req,res) => {
    const modelos = await ModModelo.getModeloslInactivos();
    res.json(modelos);
  },

  postInsertModelo:async(req,res)=>
    {
        try {
            const  {IdMarca, detalle, anio, estado}=req.body;
            const result = await ModModelo.postInsertModelo({IdMarca, detalle, anio, estado});
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
  
  
    putUpdateModelo: async (req, res) => {
    try {
      const {
        IdMarca,detalle,anio,estado,IdModelo
      } = req.body;
      const result = await ModModelo.putUpdateModelo({IdMarca,detalle,anio, estado, IdModelo,
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
    }
  },
  delModelo: async (req,res)=>{
    try {
      const {IdModelo} = req.body
      const result = await ModModelo.delModelo({IdModelo})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
    }
  },
};
