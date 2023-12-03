import { connectDB } from "../config/Conn.js";

export const ModPago = {
  
  getPagos: async () => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("SELECT p.IdPago, p.IdVenta, tp.descripcion as MetodoDePago,p.fecha, p.saldoAbono, p.saldoRestante,p.estado FROM tbl_pago as p inner join tbl_tipopago as tp on p.IdTipoPago=tp.IdTipoPago ORDER BY p.IdPago DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    } 
  },
  getPago: async (idVenta) => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("SELECT CONCAT(cli.nombre, ' ', cli.apellido) AS cliente, p.fecha, p.estado, p.saldoAbono, p.saldoRestante "+
      " FROM tbl_pago AS p"+
      " INNER JOIN tbl_venta AS v ON p.IdVenta = v.IdVenta"+
      " INNER JOIN tbl_cliente AS cli ON v.IdCliente = cli.idCliente"+
      " WHERE v.IdVenta = ?"+
      " ORDER BY p.IdPago DESC"+
      " LIMIT 1",[idVenta]);

      if (filas[0].estado=="Pagado") {
        conexion.end()
        return {estado:"Pagado"}
      }else{
        const [pagos]= await conexion.query("SELECT CONCAT(cli.nombre,' ',cli.apellido) as cliente,tp.descripcion,p.fecha,p.`saldoAbono`,p.`saldoRestante`  FROM tbl_pago as p inner join tbl_venta as v on p.`IdVenta`=v.`IdVenta` inner join tbl_cliente as cli on v.`IdCliente`=cli.`idCliente` inner join tbl_tipopago as tp on p.`IdTipoPago`=tp.`IdTipoPago`")
        conexion.end()
        return pagos
      }

    } catch (error) {
      console.log(error);
      conexion.end()
    } 
  },

  postInsertPago: async (Pago) => {
    let conexion
    try {
     conexion = await connectDB();
     if (isNaN(Pago.saldoAbono)){
      return false
     }else if (Pago.saldoAbono===null) {
      return false
     }else if (Pago.saldoAbono<Pago.saldoRestante) {
      let saldoRestante = Pago.saldoRestante-Pago.saldoAbono
        const [filas] = await conexion.query('insert into tbl_Pago (IdVenta, IdTipoPago, saldoAbono, saldoRestante,estado) values (?,?,?,?,"Pendiente");',
          [
            Pago.IdVenta,
            Pago.IdTipoPago,
            Pago.saldoAbono,
            saldoRestante,
  
          ]
        );
        conexion.end()
      return { id: filas.insertId };
      }else if (Pago.saldoAbono>=Pago.saldoRestante) {
        const [filas] = await conexion.query('insert into tbl_Pago (IdVenta, IdTipoPago, saldoAbono, saldoRestante,estado) values (?,?,?,?,"Pagado");',
          [
            Pago.IdVenta,
            Pago.IdTipoPago,
            Pago.saldoRestante,
            0,
  
          ]
        );
        conexion.end()
        
      return { id: filas.insertId };
      }else if (Pago.saldoAbono<=0) {
        return false
      }else  {
        return false
      }
      
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  putUpdatePago: async (Pago)=>{
    let conexion
      try {
         conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_Pago set saldoAbono = ?, saldoRestante = ? WHERE IdPago= ?;",
        [
          Pago.saldoAbono,
          Pago.saldoRestante,
          Pago.IdPago,
        ]
        )
        conexion.end()
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        conexion.end()
      }
  },
  delPago: async (Pago) => {
    let conexion
    try {
       conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_Pago WHERE IdPago = ?;", [
        Pago.IdPago,
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
};