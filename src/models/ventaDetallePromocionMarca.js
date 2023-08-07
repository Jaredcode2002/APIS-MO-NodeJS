import { connectDB } from "../config/Conn.js";

export const ModVentaDetallePromMarca = {

    get_ventadetallepromocionmarca: async () => {
      let conexion
        try {
         conexion = await connectDB();
          const [filas] = await conexion.query("SELECT * FROM tbl_ventadetallepromocionmarca");
          conexion.end()
          return filas;
        } catch (error) {
          console.log(error);
          conexion.end()
          throw new Error("Error al obtener el registro");
        } 
    },
    post_ventadetallepromocionmarca: async (venta) => {
      let conexion
        try {
         conexion = await connectDB();
          const [filas] = await conexion.query("INSERT INTO  tbl_ventadetallepromocionmarca (IdVenta,IdPromocionMarca) VALUES(?,?);",
            [
                venta.IdVenta,
                venta.IdPromocion,
    
            ]
          );
          conexion.end()
          return { id: filas.insertId };
        } catch (error) {
          console.log(error);
          conexion.end()
          throw new Error("Error al crear registro");
        }
    },
    put_ventadetallepromocionmarca: async (venta)=>{
      let conexion
        try {
           conexion = await connectDB()
          const [filas] = await conexion.query("UPDATE tbl_ventadetallepromocionmarca  SET IdVenta=?,IdPromocionMarca=? WHERE IdVentaDetallePromocionMarca =?;",
          [
                venta.IdVenta,
                venta.IdPromocion,
                venta.IdDetalle,
          ]
          );
          conexion.end()
          return {estado:"ok"}
        } catch (error) {
          console.log(error);
          conexion.end()
          throw new Error("Error al actualizar el registro")
        }
    },
    delete_ventadetallepromocionmarca: async(venta)=>{
      let conexion
        try {
           conexion = await connectDB()
            const [filas] = await conexion.query("DELETE FROM tbl_ventadetallepromocionmarca WHERE IdVentaDetallePromocionMarca =?;",
          [
            venta.IdDetalle,
          ]
          );
          conexion.end()
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al eliminar el registro")
        }
    },




};
