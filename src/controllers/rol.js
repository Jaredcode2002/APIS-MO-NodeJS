import { ModRol } from "../models/rol.js";

export const ContrRol = {

    getRol: async (req, res) => {
        const rol = await ModRol.getRol()
        res.json(rol)
    },
    getRolesInactivos: async (req, res) => {
        const rol = await ModRol.getRolesInactivos()
        res.json(rol)
    },

    postRol: async (req, res) => {
        const { Rol, Descripcion, estado} = req.body;
        try {
            const result = await ModRol.postRol({ Rol, Descripcion, estado});
            if (result == false) {
                res.status(201).json(result);
              } else {
                res.status(201).json(result);
              }

        } catch (error) {
            console.log(error);
        }
    },

    putUpdateRol: async (req, res) => {
        try {
            const { Rol, Descripcion,estado, Id_Rol } = req.body;
            const result = await ModRol.putUpdateRol({ Rol, Descripcion,estado, Id_Rol });
            res.status(201).json({ id: result.id });
        } catch (error) {estado,
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




