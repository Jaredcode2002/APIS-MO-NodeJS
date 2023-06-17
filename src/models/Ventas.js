import { compare } from "bcrypt";
import { connectDB } from "../config/Conn.js";

export const ModVentas = {

    getVentas: async ()=>{

        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query("SELECT v.IdVenta, concat_ws(' ', c.nombre, c.apellido) as Cliente, e.nombre as Empleado, v.fecha, v.fechaEntrega, v.estado, v.totalAPagar as Total FROM tbl_venta as v inner join tbl_cliente as c on v.IdCliente=c.idCliente inner join tbl_empleado as e on v.idEmpleado=e.IdEmpleado")
            return filas;
        } catch (error) {
            console.log(error);
            throw new Error("Error al obtener las ventas");
        }
    },

    postInsertVentas: async (venta)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ("INSERT INTO tbl_venta (fecha,fechaLimiteEntrega,fechaEntrega,estado,observacion,IdCliente,idEmpleado,NumeroCAI,RTN,isv,subtotal,totalAPagar) VALUES(?,?,?,?,?,?,?,?,?,?,?,?);",
            [
             venta.fecha,
             venta.fechaLimiteEntrega,
             venta.fechaEntrega,
             venta.estado,
             venta. observacion,
             venta.IdCliente,
             venta.idEmpleado,
             venta.NumeroCAI,
             venta.rnt,
             venta.isv,
             venta.subtotal,
             venta.totalAPagar,
            ]
            );
            return {estado:"OK"};
        } catch (error) {
            console.log(error);
            throw new Error("Error al crear una nueva venta");    
        }
    },

    putUpdateVenta : async (venta)=> {
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ("UPDATE tbl_venta SET  fecha=?, fechaLimiteEntrega=?, fechaEntrega=?, estado=?, observacion=?, idCliente=?, IdEmpleado=?, NumeroCAI=?, RTN=?, ISV=?, SubTotal=?, TotalAPagar=? where IdVenta =?;",
            [
             venta.fecha,
             venta.fechaLimiteEntrega,
             venta.fechaEntrega,
             venta.estado,
             venta. observacion,
             venta.IdCliente,
             venta.idEmpleado,
             venta.NumeroCAI,
             venta.rnt,
             venta.isv,
             venta.subtotal,
             venta.totalAPagar,
             venta.IdVenta,
            ]
            );
            return {estado:"OK"};
        } catch (error) {
            console.log(error);
            throw new Error("Error al actualizar la venta");    
        }
    },

    deleteVenta : async (venta)=> {
       try {
        const conexion = await connectDB()
        const [filas] = await conexion.query( "DELETE FROM tbl_venta where IdVenta = ?;",
        [
            venta.IdVenta,
        ]
        );
        return {estado:"OK"}; 
       } catch (error) {
        console.log(error);
        throw new Error("Error al eliminar la venta");    
       }
    },

}