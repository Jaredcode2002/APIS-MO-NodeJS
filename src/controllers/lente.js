import { ModLente } from "../models/lente.js";

export const ContrLente = {

    getLente: async (req, res) => {
        const lente = await ModLente.getLentes()
        res.json(lente)
    },

    postInsertLente: async (req, res) => {
        try {
            const { lente, precio } = req.body;
            const result = await ModLente.postInsertLente({ lente, precio });
            res.status(201).json({ id: result.id });
            // res.status(200).json(sucursal);
        } catch (error) {
            console.log(error);
        }
    },



    putUpdLente: async (req, res) => {
        try {
            const { lente, precio } = req.body;
            const result = await ModLente.putUpdLente({ lente, precio });
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
