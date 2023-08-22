import { ModTipoPago } from "../models/tipopago.js";

export const ContrTipoPago = {
  getTipoPagos: async (req,res) => {
    const TipoPagos = await ModTipoPago.getTipoPagos();
    res.status(200).json(TipoPagos);
  },
  postTipoPago: async (req, res) => {
    try {
      const { descripcion } = req.body;
      const result = await ModTipoPago.postInsertTipoPago({descripcion,});
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating payment type" });
    }
  },
  putTipoPago: async (req, res) => {
    try {
      const {
        descripcion,
        IdTipoPago,
        
      } = req.body;
      const result = await ModTipoPago.putUpdateTipoPago({
        descripcion,
        IdTipoPago,
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  delTipoPago: async (req,res)=>{
    try {
      const {IdTipoPago} = req.body
      const result = await ModTipoPago.delTipoPago({IdTipoPago})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  
};
