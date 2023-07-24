import { connectDB } from "../config/Conn.js";


export const ModDescuento = {

    getDescuento:async()=>
    {
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ("SELECT * FROM tbl_descuento LIMIT 100")
            return filas;
        
        } catch (error) {
            console.log(error);
            throw new Error("Error al consultar los descuentos");
        }
    },

    postInsertDescuento:async(descuento)=>
    {
        const conexion= await connectDB(); 
        try {
            const [filas]=await conexion.query("INSERT INTO tbl_descuento (estado,descPorcent,descPorcentEmpleado) VALUES(?,?,?);",
            [
                descuento.estado,
                descuento.descPorcent,
                descuento.descPorcentEmpleado,
            ]
            );
            return{estado:"OKAY"}
        } catch (error) {
            onsole.log(error);
            throw new Error("Error al consultar al insertar el descuento");
        }
    },

    putDescuento:async (descuento)=>
    {
        const conexion=await connectDB();
        try {
            const [filas] = await conexion.query("UPDATE tbl_descuento SET estado=?,descPorcent=?,descPorcentEmpleado=? WHERE  IdDescuento =?;",
            [
                descuento.estado,
                descuento.descPorcent,
                descuento.descPorcentEmpleado,
                descuento.IdDescuento,
            ]
            );
            return{estado:"OKAY"}
        } catch (error) {
            onsole.log(error);
            throw new Error("Error al consultar al actualizar el descuento");
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