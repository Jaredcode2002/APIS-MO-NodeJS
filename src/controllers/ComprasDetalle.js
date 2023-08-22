import { ModCompraDetalle} from "../models/CompraDetalle.js";

export const ContrCompraDetalle = {
    GetCompraDetalle: async (req, res) => {
        try {
            const compra = await ModCompraDetalle.getCompraDetalle();
            res.status(200).json(compra);
        } catch (error) {
            console.log(error);
            res.status(500).json("Error al consumir la API");
        }
    },
    PostCompraDetalle: async (req, res) => {
        try {
            const { IdCompra, cantidad, idProducto, costoCompra } = req.body;
            const result = await ModCompraDetalle.post_CompraDetalle({
                IdCompra,
                cantidad,
                idProducto,
                costoCompra,
            });
            res.status(200).json(result);
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al consumir la API" });
        }
    },
    PutCompraDetalle: async (req, res) => {
        try {
            const { IdCompra, cantidad, idProducto, costoCompra, IdCompraDetalle} = req.body;
            const result = await ModCompraDetalle.put_CompraDetalle({ 
                IdCompra, 
                cantidad, 
                idProducto, 
                costoCompra, 
                IdCompraDetalle,
            });
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api")
        }
    },
    DeleteCompraDetalle:async(req, res)=>{
        try {
            const {IdCompraDetalle} = req.body;
            const result = await ModCompraDetalle.delete_CompraDetalle({IdCompraDetalle});
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api")
        }
    },

};