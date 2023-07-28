import { ModProducto } from "../models/producto.js";

export const ContrProducto = {
  getProductos: async (req,res) => {
    const producto = await ModProducto.getProductos();
    res.status(200).json(producto);
  },
  getProducto: async (req,res) => {
    const {IdProducto} = req.body
    const producto = await ModProducto.getProducto(IdProducto);
    res.status(200).json(producto);
  },
  postProducto: async (req, res) => {
    try {
      const {IdModelo, precio, cantidadMin, cantidadMax, descripcion } = req.body;
      const result = await ModProducto.postInsertProducto ({IdModelo, precio, cantidadMin, cantidadMax, descripcion });
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating product" });
    }
  },
  putProducto: async (req, res) => {
    try {
      const {
        precio,
        cantidadMin,
        cantidadMax,
        descripcion,
        IdProducto,

      } = req.body;
      const result = await ModProducto.putUpdateProducto({
        precio,
        cantidadMin,
        cantidadMax,
        descripcion,
        IdProducto,
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  delProducto: async (req,res)=>{
    try {
      const {IdProducto} = req.body
      const result = await ModProducto.delProducto({IdProducto})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  getProductosInv: async (req,res) => {
    const producto = await ModProducto.getProductos();
    res.status(200).json(producto);
  },
 
};
