import { ModTipoPago } from "../models/tipopago.js";

export const ContrTipoPago = {

  getTipoPagos: async (req,res) => {
    const TipoPagos = await ModTipoPago.getTipoPagos();
    res.json(TipoPagos);
  },

  getTipoPagosInactivos: async (req,res) => {
    const TipoPagos = await ModTipoPago.getTipoPagosInactivos();
    res.json(TipoPagos);
  },

  postInsertTipoPago: async (req, res) => {
    const { descripcion, estado} = req.body;
    try {
      const result = await ModTipoPago.postInsertTipoPago({descripcion,estado});
      if (result == false) {
        res.status(201).json( result );
      } else {
        res.status(201).json( result);
      }
    } catch (error) {
      console.log(error);
    }
  },

  putUpdateTipoPago: async (req, res) => {
    try {
      const {descripcion,estado, IdTipoPago} = req.body;
      const result = await ModTipoPago.putUpdateTipoPago({descripcion, estado, IdTipoPago});
      if (result == false) {
        res.status(201).json( result );
      } else {
        res.status(201).json( result);
      }
    } catch (error) {
      console.log(error);
    }
  },

  delTipoPago: async (req,res)=>{
    try {
      const {IdTipoPago} = req.body
      const result = await ModTipoPago.delTipoPago({IdTipoPago})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
    }
  },
  
};
