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



}