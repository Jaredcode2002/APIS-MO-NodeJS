import { connectDB } from "../config/Conn.js";

export const ModTipoPago = {
  
  getTipoPagos: async () => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_TipoPago");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los Tipos de Pago");
    } 
  },

  postInsertTipoPago: async (TipoPago) => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("insert into tbl_TipoPago (descripcion) values (?);",
        [
          TipoPago.descripcion,
        ]
      );
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      throw new Error("Error al crear tipo de pago");
    }
  },
  putUpdateTipoPago: async (TipoPago)=>{
      try {
        const conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_TipoPago set descripcion = ? WHERE IdTipoPago= ?;",
        [
          TipoPago.descripcion,
          TipoPago.IdTipoPago
        ]
        )
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        throw new Error("Error al actualizar el tipo de pago")
      }
  },
  delTipoPago: async (TipoPago) => {
    try {
      const conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_TipoPago WHERE IdTipoPago = ?;", 
      [
        TipoPago.IdTipoPago,
      ]);
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al eliminar el tipo de pago");
    }
  },
};
