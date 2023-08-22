import { ModRol } from "../models/rol.js";

export const ContrRol = {

    getRol: async (req, res) => {
        const rol = await ModRol.getRol()
        res.json(rol)
    },

    postRol: async (req, res) => {
        try {
            const { Rol, Descripcion, creado_por, fecha_creacion, modificado_por, fecha_modificacion } = req.body;
            const result = await ModRol.postRol({ Rol, Descripcion, creado_por, fecha_creacion, modificado_por, fecha_modificacion });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

    putUpdateRol: async (req, res) => {
        try {
            const { Rol, Descripcion, creado_por, fecha_creacion, modificado_por, fecha_modificacion, Id_Rol } = req.body;
            const result = await ModRol.putUpdateRol({ Rol, Descripcion, creado_por, fecha_creacion, modificado_por, fecha_modificacion, Id_Rol });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },


    deleteRol: async (req, res) => {
        try {
            const { Id_Rol } = req.body;
            const result = await ModRol.deleteRol({ Id_Rol });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

};




