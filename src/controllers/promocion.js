import { ModPromocion } from "../models/promocion.js";

export const ContrPromocion = {
  getPromocion: async (req, res) => {
    const producto = await ModPromocion.getPromociones();
    res.status(200).json(producto);
  },
  getPromocionesInactivas: async (req, res) => {
    const producto = await ModPromocion.getPromocionesInactivas();
    res.status(200).json(producto);
  },

  postPromocion: async (req, res) => {
    try {
      const { fechaInicial, fechaFinal, estado, descPorcent, descripcion } = req.body;
      const result = await ModPromocion.postInsertPromocion({ fechaInicial, fechaFinal, estado, descPorcent, descripcion });
      if (result == false) {
        res.status(201).json(result);
      } else {
        res.status(201).json(result);
      }
    } catch (error) {
      console.log(error);
    }
  },

  putPromocion: async (req, res) => {
    try {
      const {
        fechaInicial,
        fechaFinal,
        estado,
        descPorcent,
        descripcion,
        IdPromocion

      } = req.body;
      const result = await ModPromocion.putUpdatePromocion({
        fechaInicial,
        fechaFinal,
        estado,
        descPorcent,
        descripcion,
        IdPromocion
      });
      res.status(200).json({ response: "Ok" })
    } catch (error) {
      console.log(error);
    }
  },
  delPromocion: async (req, res) => {
    try {
      const { IdPromocion } = req.body
      const result = await ModPromocion.delPromocion({ IdPromocion })
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
    }
  },

};