import { ModKardex} from "../models/Kardex.js";

export const ContrKardex = {
    GetKardex: async (req, res) => {
        try {
            const kardex = await ModKardex.getKardex();
            res.status(200).json(kardex);
        } catch (error) {
            console.log(error);
            res.status(500).json("Error al consumir la API");
        }
    },
    postProductoKardexFiltro:async (req,res)=>{
        try {
            const {IdProducto}=req.body
            const result = await ModKardex.postProductoKardexFiltro({IdProducto})
            res.status(200).json(result)
        } catch (error) {
            
        }
    },

    PostKardex: async (req, res) => {
        try {
            const { IdTipoMovimiento,IdProducto,Id_Usuario,fechaYHora,cantidad} = req.body;
            const result = await ModKardex.post_Kardex({
                IdTipoMovimiento,
                IdProducto,
                Id_Usuario,
                fechaYHora,
                cantidad,
            });
            res.status(200).json(result);
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al consumir la API" });
        }
    },

};