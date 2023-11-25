import { ModBackup } from "../models/backup.js";

export const ContrBackup = {
    getBackup: async (req, res) => {
        try {
            const Backup = await ModBackup.getBackup();
            res.status(200).json(Backup);
        } catch (error) {
            console.log(error);
        }

    },

    getArchivos: async (req, res) => {
        try {
            const Archivos = await ModBackup.getArchivos();
            res.status(200).json(Archivos);
        } catch (error) {
            console.log(error);
        }

    },

    getRestore: async (req, res) => {
        try {

            const Restore = await ModBackup.getRestore(req.body);
            res.status(200).json(Restore);
        } catch (error) {
            console.log(error);
        }

    },




}