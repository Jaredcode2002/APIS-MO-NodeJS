import { connectDB } from "../config/Conn.js";

export const ModVentaDetalleDescuento = {
  
    getVentaDetalleDescuento: async () => {
      let conexion
      try {
       conexion = await connectDB();
        const [filas] = await conexion.query("select * from tbl_ventadetalledescuento");
        conexion.end()
        return filas;
      } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al obtener el registro");
      } 
   
    },
  
    post_VentaDetalleDescuento: async (venta) => {
      let conexion
      try {
       conexion = await connectDB();
        const [filas] = await conexion.query("INSERT INTO  tbl_ventadetalledescuento (IdVenta, IdDescuento,porcDescuento,totalDescuento) VALUES(?,?,?,?);",
          [
            venta.IdVenta, 
            venta.IdDescuento,
            venta.porcDescuento,
            venta.totalDescuento,
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

  put_VentaDetalleDescuento: async (venta)=>{
    let conexion
    try {
       conexion = await connectDB()
    const [filas] = await conexion.query("UPDATE tbl_ventadetalledescuento  SET IdVenta=?, IdDescuento=?,porcDescuento=?,totalDescuento=? WHERE IdVentaDetalleDescuento =?;",
      [
        venta.IdVenta, 
        venta.IdDescuento,
        venta.porcDescuento,
        venta.totalDescuento,
        venta.IdVentaDetalleDescuento,
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
  
delete_VentaDetalleDescuento: async(venta)=>{
  let conexion
  try {
       conexion = await connectDB()
      const [filas] = await conexion.query("DELETE FROM tbl_ventadetalledescuento WHERE IdVentaDetalleDescuento =?;",
    [
      venta.IdVentaDetalleDescuento,
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
