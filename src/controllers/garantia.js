import { ModGarantia } from "../models/garantia.js";

export const ContrGarantia = {
  getGarantias: async (req, res) => {
    const garantia = await ModGarantia.getGarantias();
    res.status(200).json(garantia);
  },
  getGarantiasInactivas: async (req, res) => {
    const garantia = await ModGarantia.getGarantiasInactivas();
    res.status(200).json(garantia);
  },
  postGarantia: async (req, res) => {
    try {
      const { descripcion, mesesGarantia, IdProducto, estado } = req.body;
      const result = await ModGarantia.postInsertGarantia({ descripcion, mesesGarantia, IdProducto, estado });
      if (result == false) {
        res.status(201).json({ id: result.id });
      } else {
        res.status(201).json({ id: result.id });
      }
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating garantia" });
    }
  },
  putGarantia: async (req, res) => {
    try {
      const {
        descripcion,
        mesesGarantia,
        IdProducto,
        estado,
        IdGarantia,
      } = req.body;
      const result = await ModGarantia.putUpdateGarantia({
        descripcion,
        mesesGarantia,
        IdProducto,
        estado,
        IdGarantia
      });
      if (result == false) {
        res.status(201).json(result);
      } else {
        res.status(201).json(result);
      }
    } catch (error) {
      console.log(error);
    }
  },
  delGarantia: async (req, res) => {
    try {
      const { IdGarantia } = req.body
      const result = await ModGarantia.delGarantia({ IdGarantia })
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
    }
  },
};
