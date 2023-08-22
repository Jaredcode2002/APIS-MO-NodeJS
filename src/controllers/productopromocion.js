import { ModPromocionMarca } from "../models/promocionmarca.js";

export const ContrProductoProm = {
  getProductosProm: async (req, res) => {
    const productopromocion = await ModProductoProm.getProductoProm();
    res.status(200).json(productopromocion);
  },
  postProductoProm: async (req, res) => {
    try {
      const { IdProducto, IdPromocion } = req.body;
      const result = await ModProductoProm.postInsertProductoProm({ IdProducto, IdPromocion });
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating product" });
    }
  },
  putProductoProm: async (req, res) => {
    try {
      const {
        IdProducto,
        IdPromocion,
        IdProductoPromocion,

      } = req.body;
      const result = await ModProductoProm.putUpdateProductoProm({
        IdProducto,
        IdPromocion,
        IdProductoPromocion,
      });
      res.status(200).json({ response: "Ok" })
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  delProductoProm: async (req, res) => {
    try {
      const { IdProductoPromocion } = req.body
      const result = await ModProductoProm.delProductoProm({ IdProductoPromocion })
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },

};
