import { ModLente } from "../models/lente.js";

export const ContrLente = {

    getLente: async (req, res) => {
        const lente = await ModLente.getLentes()
        res.json(lente)
    },
    getLentesInactivos: async (req, res) => {
        const lente = await ModLente.getLentesInactivos()
        res.json(lente)
    },

    postInsertLente: async (req, res) => {
        try {
            const { lente, precio, estado } = req.body;
            const result = await ModLente.postInsertLente({ lente, precio, estado });
            if (result == false) {
                res.status(201).json(result);
            }else{
                res.status(201).json(result);
            }
        } catch (error) {
            console.log(error);
        }
    },



    putUpdLente: async (req, res) => {
        try {
            const { lente, precio, estado, IdLente } = req.body;
            const result = await ModLente.putLente({ lente, precio, estado, IdLente });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);

        }
    },

    deleteLente: async (req, res) => {
        try {
            const { IdLente } = req.body;
            const result = await ModLente.deleteLente({ IdLente });
            res.status(201).json({ id: result.id });

        } catch (error) {
            console.log(error);
        }

    },


}
