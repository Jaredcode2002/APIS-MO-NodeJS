import { connectDB } from "../config/Conn.js";

export const ModPago = {
  
  getPagos: async () => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT p.IdPago, p.IdVenta, tp.descripcion as MetodoDePago, p.saldoAbono, p.saldoRestante FROM tbl_pago as p inner join tbl_tipopago as tp on p.IdTipoPago=tp.IdTipoPago;");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los Pagos");
    } 
  },

  postInsertPago: async (Pago) => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("insert into tbl_Pago (IdVenta, IdTipoPago, saldoAbono, saldoRestante) values (?,?,?,?);",
        [
          Pago.IdVenta,
          Pago.IdTipoPago,
          Pago.saldoAbono,
          Pago.saldoRestante,

        ]
      );
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      throw new Error("Error al crear pago");
    }
  },
  putUpdatePago: async (Pago)=>{
      try {
        const conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_Pago set saldoAbono = ?, saldoRestante = ? WHERE IdPago= ?;",
        [
          Pago.saldoAbono,
          Pago.saldoRestante,
          Pago.IdPago,
        ]
        )
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        throw new Error("Error al actualizar el pago")
      }
  },
  delPago: async (Pago) => {
    try {
      const conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_Pago WHERE IdPago = ?;", [
        Pago.IdPago,
      ]);
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al eliminar el tipo de pago");
    }
  },
};