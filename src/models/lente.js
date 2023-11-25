import { connectDB } from "../config/Conn.js";


export const ModLente = {

    getLentes: async () => {
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query("SELECT l.IdLente, l.lente, FORMAT(precio, 2) as precio, l.estado FROM tbl_lente as l where estado = 'Activo' ORDER BY l.IdLente DESC;")
            return filas;

            
        } catch (error) {
            console.log(error);
            throw new Error("Error al consultar los lentes");
        }
    },
    getLentesInactivos: async () => {
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query("SELECT l.IdLente, l.lente, FORMAT(precio, 2) as precio, l.estado FROM tbl_lente as l where estado != 'Activo' ORDER BY l.IdLente DESC;")
            return filas;

        } catch (error) {
            console.log(error);
            throw new Error("Error al consultar los lentes");
        }
    },


     getLenteExiste: async (lente) => {
        let conexion
        conexion = await connectDB();
        try {
            const [filas] = await conexion.query("SELECT l.IdLente, l.lente, l.precio, l.estado FROM tbl_lente as l where l.lente = ?;",
                [
                    lente.lente
                ]
            );
            conexion.end()
            if (filas.legth >= 1) {
                return true
            } else {
                return false
            }
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al crear un nuevo lente");
        }
    }, 
    postInsertLente: async (lente) => {
        let conexion
        conexion = await connectDB();
        if (await ModLente.getLenteExiste(lente) == false) {
            try {
                const [filas]=await conexion.query("INSERT INTO tbl_lente (lente,precio, estado) VALUES(?,?,?);",
                [
                    lente.lente,
                    lente.precio,
                    lente.estado,
                ]
                );
                conexion.end()
                return { estado: "OK" };
            } catch (error) {
                conexion.end()
                return false
                throw new Error("Error al crear un nuevo proveedor");
            }
        } else {
            return false
        }
    },

    putLente: async (lente) => {
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query("UPDATE tbl_lente SET lente=?,precio=?, estado=? WHERE  IdLente =?;",
                [
                    lente.lente,
                    lente.precio,
                    lente.estado,
                    lente.IdLente
                ]
            );
            return { estado: "OKAY" }
        } catch (error) {
            console.log(error);
            throw new Error("Error al consultar al actualizar el lente");
        }
    },

    deleteLente: async (lente) => {
        try {
            const conexion = await connectDB()
            const [filas] = await conexion.query("DELETE FROM tbl_lente WHERE  IdLente =?;",
                [
                    lente.IdLente,
                ]
            );
            return { estado: "OKAY" }
        } catch (error) {
            console.log(error);
            throw new Error("Error al eliminar el lente");
        }
    },
}