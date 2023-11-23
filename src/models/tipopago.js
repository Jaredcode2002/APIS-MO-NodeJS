import { connectDB } from "../config/Conn.js";

export const ModTipoPago = {
  
  getTipoPagos: async () => {
    let conexion
    try {
    conexion = await connectDB();
      const [filas] = await conexion.query("SELECT pa.IdTipoPago, pa.descripcion, CASE WHEN pa.estado = 'A' THEN 'Activo' WHEN pa.estado = 'I' THEN 'Inactivo' ELSE 'Desconocido' END AS estado FROM tbl_tipopago AS pa WHERE pa.estado = 'A' ORDER BY pa.IdTipoPago DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener los Tipos de Pago");
    } 
  },

  getTipoPagosInactivos:async()=>
    {
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query("SELECT pa.IdTipoPago, pa.descripcion, CASE WHEN pa.estado = 'A' THEN 'Activo' WHEN pa.estado = 'I' THEN 'Inactivo' ELSE 'Desconocido' END AS estado FROM tbl_tipopago AS pa WHERE pa.estado != 'A' ORDER BY pa.IdTipoPago DESC;");
            return filas;
        
        } catch (error) {
            console.log(error);
            throw new Error("Error al consultar los tipos de pago");
        }
    },

  getTipoPagoExiste: async (TipoPago) =>
    {
      let conexion
      conexion = await connectDB();
      try {
        const [filas]=await conexion.query ("Select * from tbl_tipopago where descripcion=?;",
        
        [
          TipoPago.descripcion
        ]);
        conexion.end()
        if (filas.length>=1)
        {
          return true 
        } else {
              return false
        }
      } catch (error) {
        console.long (error);
        conexion.end()
        throw new Error ("Error al creun nuevo metodo de pago")
        
      }
    },

  postInsertTipoPago: async (TipoPago) => {
    let conexion
    conexion = await connectDB();
  if (await ModTipoPago.getTipoPagoExiste(TipoPago)== false) 
    {
      try {
        const [filas] = await conexion.query("insert into tbl_TipoPago (descripcion, estado) values (?,?);",
          [
            TipoPago.descripcion,
            TipoPago.estado,
          ]
        );
        conexion.end()
        return { estado: "OK" };
      } catch (error) {
        console.log(error);
        conexion.end()
        return false 
        throw new Error("Error al crear tipo de pago");
      }
    } else{
      return false
    }
  },

  putUpdateTipoPago: async (TipoPago)=>{
    let conexion
      try {
         conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_TipoPago set descripcion = ?, estado=? WHERE IdTipoPago= ?;",
        [
          TipoPago.descripcion,
          TipoPago.estado, 
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
      await conexion.query("DELETE FROM tbl_TipoPago WHERE IdTipoPago = ?;", 
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