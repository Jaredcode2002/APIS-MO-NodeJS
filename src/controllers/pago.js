import { ModPago } from "../models/pago.js";

export const ContrPago = {
  getPagos: async (req,res) => {
    const Pagos = await ModPago.getPagos();
    res.status(200).json(Pagos);
  },
  postPago: async (req, res) => {
    try {
      const { IdVenta, IdTipoPago, saldoAbono, saldoRestante } = req.body;
      const result = await ModPago.postInsertPago({IdVenta, IdTipoPago, saldoAbono, saldoRestante});
      if (result===false) {
        res.status(500).json("error");  
      }
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating payment type" });
    }
  },
  putPago: async (req, res) => {
    try {
      const {
        saldoAbono,
        saldoRestante,
        IdPago,
        
      } = req.body;
      const result = await ModPago.putUpdatePago({
        saldoAbono,
        saldoRestante,
        IdPago,
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  delPago: async (req,res)=>{
    try {
      const {IdPago} = req.body
      const result = await ModPago.delPago({IdPago})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  
};