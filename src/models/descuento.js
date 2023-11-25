import { connectDB } from "../config/Conn.js";


export const ModDescuento = {

    getDescuento:async()=>
    {
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ("SELECT d.IdDescuento, d.descPorcent, CASE WHEN estado = 'A' THEN 'Activo' WHEN estado = 'I' THEN 'Inactivo' ELSE 'Desconocido' END AS estado FROM tbl_descuento as d where d.estado= 'A' ORDER BY d.IdDescuento DESC;")
            return filas;
        
        } catch (error) {
            console.log(error);
        }
    },

    getDescuentosInactivos:async()=>
    {
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ("SELECT d.IdDescuento, d.descPorcent, CASE WHEN estado = 'A' THEN 'Activo' WHEN estado = 'I' THEN 'Inactivo' ELSE 'Desconocido' END AS estado FROM tbl_descuento as d where d.estado != 'A' ORDER BY d.IdDescuento DESC;")
            return filas;
        
        } catch (error) {
            console.log(error);
        }
    },
    
    getDescuentoExiste: async (descuento) => {
        let conexion
        conexion = await connectDB();
        try {
            const [filas] = await conexion.query("SELECT * FROM tbl_descuento WHERE descPorcent= ?;",
                [
                    descuento.descPorcent
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
        }
    },

    postInsertDescuento:async(descuento)=>
    {
        let conexion
        conexion = await connectDB();
        if (await ModDescuento.getDescuentoExiste(descuento) == false) {
            try {
                const [filas]=await conexion.query("INSERT INTO tbl_descuento (estado,descPorcent) VALUES(?,?);",
                [
                    descuento.estado,
                    descuento.descPorcent,
                ]
                );
                conexion.end()
                return { estado: "OK" };
            } catch (error) {
                conexion.end()
            }
        } else {
            console.log(error);
            conexion.end()
            return false
        }
    },

    putDescuento:async (descuento)=>
    {
        const conexion=await connectDB();
        if (await ModDescuento.getDescuentoExiste(descuento) == false) {
            try {
                const [filas] = await conexion.query("UPDATE tbl_descuento SET estado=?,descPorcent=? WHERE  IdDescuento =?;",
                [
                    descuento.estado,
                    descuento.descPorcent,
                    descuento.IdDescuento,
                ]
                );
                return{estado:"OKAY"}
            } catch (error) {
                console.log(error);
            }
        } else {
            console.log(error);
            conexion.end()
            return false;
        }
       
    },

    deleteDescuento : async (descuento)=>
    {
        try {
            const conexion = await connectDB()
            const [filas]=await conexion.query("DELETE FROM tbl_descuento WHERE  IdDescuento =?;",
            [
                descuento.IdDescuento,
            ]
            );
        return{estado:"OKAY"}
        } catch (error) {
            console.log(error);
      throw new Error("Error al eliminar el descuento");
        }
    },
}