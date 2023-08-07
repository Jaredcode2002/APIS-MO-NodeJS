import { connectDB } from "../config/Conn.js";

export const ModVentaDetalle = {
  
    getVentaDetalle: async () => {
      let conexion
      try {
       conexion = await connectDB();
        const [filas] = await conexion.query("select * from tbl_ventadetalle");
        conexion.end()
        return filas;
      } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al obtener el detalle de la venta");
      } 
   
    },
  
    post_VentaDetalle: async (venta) => {
      let conexion
      try {
      conexion = await connectDB();
        const [filas] = await conexion.query("INSERT INTO  tbl_ventadetalle (IdVenta, IdGarantia ,IdProducto,cantidad,precioExamen) VALUES(?,?,?,?,?);",
          [
              venta.IdVenta,
              venta.IdGarantia,
              venta.IdProducto,
              venta.cantidad,
              venta.precioExamen,
          ]
        );
        conexion.end()
        return {estado:"ok" };
      } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear registro");
      }
  },

  put_VentaDetalle: async (venta)=>{
    let conexion
    try {
     conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_ventadetalle  SET IdVenta=?, IdGarantia=? ,IdProducto=? ,cantidad=?, precioExamen=? WHERE IdVentaDetalle =?;",
      [
        venta.IdVenta,
        venta.IdGarantia,
        venta.IdProducto,
        venta.cantidad,
        venta.precioExamen,
        venta.IdVentaDetalle,
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
  
delete_VentaDetalle: async(venta)=>{
  let conexion
  try {
       conexion = await connectDB()
      const [filas] = await conexion.query("DELETE FROM tbl_ventadetalle WHERE IdVentaDetalle =?;",
    [
      venta.IdVentaDetalle,
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
