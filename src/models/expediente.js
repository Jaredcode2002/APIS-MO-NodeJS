import { connectDB } from "../config/Conn.js";

export const ModExpediente = {


    getExpediente :async ()=> {
 try {
    const conexion = await connectDB ();
    const [filas]= await conexion.query ("SELECT e.IdExpediente, c.IdCliente as Cliente, em.nombre as CreadoPor,e.`fechaCreacion`from tbl_expedientedetalle as ed inner join tbl_expediente as e on ed.IdExpediente=e.IdExpediente inner join tbl_empleado as em on e.IdEmpleado=em.IdEmpleado inner join tbl_cliente as c on e.IdCliente=c.idCliente;")
 return filas;
} catch (error) {
    console.log (error);
    throw new error ("Error al consultar el API");
 }

},

postInsertExpediente:async (expediente)=> {
const conexion = await connectDB();
try {
    const [filas]= await conexion.query ("INSERT INTO tbl_expediente (fechaCreacion, IdCliente, IdEmpleado) VALUES (?,?,?);",
    [
        expediente.fechaCreacion, 
        expediente.IdCliente, 
        expediente.IdEmpleado,
    ]
        );
    return {estado:"OK"};
} catch (error) {
    console.log(error);
    throw new error ("Error al consultar el API");
}
},

// putUpdateExpediente: async (compra)=>{
//   try {
//     const conexion = await connectDB();
//     const[filas]=await conexion.query ("UPDATE tbl_expediente SET fechaCreacion=?, IdCliente=?, IdEmpleado=? where  IdExpediente =?;",
//     [
//         expediente.fechaCreacion, 
//         expediente.IdCliente, 
//         expediente.IdEmpleado,
//         expediente.IdExpediente,
//     ]
//     );
//    return {estado:"OK"}; 
//   } catch (error) {
//     console.log(error);
//       throw new Error("Error al consultar el API");
//   }
//   },

deleteExpediente:async (expediente)=>{
try {
    const conexion = await connectDB ()
    const [filas]=await conexion.query("DELETE FROM tbl_expediente where IdExpediente = ?;",
    [
        expediente.IdExpediente,
    ]);
    return {estado:"OK"}; 
} catch (error) {
    console.log(error);
    throw new error ("Error al consultar el API");
}
},
}