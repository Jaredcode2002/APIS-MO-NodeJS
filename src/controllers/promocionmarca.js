import { ModPromocionMarca } from "../models/promocionmarca.js";

export const ContrPromocionMarca = {
  getPromoMarca: async (req, res) => {
    const promocionmarca = await ModPromocionMarca.getPromoMarca();
    res.status(200).json(promocionmarca);
  },
  postPromoMarca: async (req, res) => {
    try {
      const { IdMarca, IdPromocion } = req.body;
      const result = await ModPromocionMarca.postInsertPromoMarca({ IdMarca, IdPromocion });
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating promocion" });
    }
  },
  putPromoMarca: async (req, res) => {
    try {
      const {
        IdMarca,
        IdPromocion,
        IdPromocionMarca,

      } = req.body;
      const result = await ModPromocionMarca.putUpdatePromoMarca({
        IdMarca,
        IdPromocion,
        IdPromocionMarca,
      });
      res.status(200).json({ response: "Ok" })
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  delPromoMarca: async (req, res) => {
    try {
      const { IdPromocionMarca } = req.body
      const result = await ModPromocionMarca.delPromoMarca({ IdPromocionMarca })
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },

};
