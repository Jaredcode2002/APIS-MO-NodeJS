import { ModCompraDetalle} from "../models/CompraDetalle.js";

export const ContrCompraDetalle = {
    GetCompraDetalle: async (req, res) => {
        try {
            const compra = await ModCompraDetalle.getCompraDetalle();
            res.status(200).json(compra);
        } catch (error) {
            console.log(error);
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
        }
    },
    DeleteCompraDetalle:async(req, res)=>{
        try {
            const {IdCompraDetalle} = req.body;
            const result = await ModCompraDetalle.delete_CompraDetalle({IdCompraDetalle});
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
        }
    },

};