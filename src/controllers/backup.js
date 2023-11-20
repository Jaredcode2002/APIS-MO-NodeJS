import { ModBackup } from "../models/backup.js";

export const ContrBackup = {
    getBackup: async (req, res) => {
        try {
            const Backup = await ModBackup.getBackup();
            res.status(200).json(Backup);
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api de backup")
        }

    },

    getArchivos: async (req, res) => {
        try {
            const Archivos = await ModBackup.getArchivos();
            res.status(200).json(Archivos);
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api de archivos")
        }

    },

    getRestore: async (req, res) => {
        try {

            const Restore = await ModBackup.getRestore(req.body);
            res.status(200).json(Restore);
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api de restore")
        }

    },




}