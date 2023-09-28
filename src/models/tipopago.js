import { connectDB } from "../config/Conn.js";

export const ModTipoPago = {
  
  getTipoPagos: async () => {
    let conexion
    try {
    conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_tipopago");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener los Tipos de Pago");
    } 
  },

  postInsertTipoPago: async (TipoPago) => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("insert into tbl_tipopago (descripcion) values (?);",
        [
          TipoPago.descripcion,
        ]
      );
      conexion.end()
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al crear tipo de pago");
    }
  },
  putUpdateTipoPago: async (TipoPago)=>{
    let conexion
      try {
         conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_tipopago set descripcion = ? WHERE IdTipoPago= ?;",
        [
          TipoPago.descripcion,
          TipoPago.IdTipoPago
        ]
        )
        conexion.end()
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al actualizar el tipo de pago")
      }
  },
  delTipoPago: async (TipoPago) => {
    let conexion
    try {
       conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_tipopago WHERE IdTipoPago = ?;", 
      [
        TipoPago.IdTipoPago,
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar el tipo de pago");
    }
  },
};