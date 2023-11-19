import { connectDB } from "../config/Conn.js";

export const ModExpediente = {


    getExpediente :async ()=> {
        let conexion
 try {
    conexion = await connectDB ();
    const [filas]= await conexion.query ("SELECT e.IdExpediente,c.IdCliente AS Cliente,CONCAT(c.nombre, ' ', c.apellido) AS Nombre,  em.nombre AS CreadoPor,e.`fechaCreacion`,COUNT(ed.`IdExpediente`) AS TotalRegistros FROM  tbl_expediente AS e INNER JOIN  tbl_empleado AS em ON e.IdEmpleado = em.IdEmpleado INNER JOIN  tbl_cliente AS c ON e.IdCliente = c.idCliente LEFT JOIN  tbl_expedientedetalle AS ed ON ed.IdExpediente = e.IdExpediente GROUP BY  e.IdExpediente, c.IdCliente, em.nombre, e.`fechaCreacion`")
    conexion.end()
    return filas;
} catch (error) {
    console.log (error);
     conexion.end()
    throw new error ("Error al consultar el API");
 }

},

postInsertExpediente:async (expediente)=> {
    let conexion
try {
    conexion = await connectDB();
    const [filas]= await conexion.query ("INSERT INTO tbl_expediente (fechaCreacion, IdCliente, IdEmpleado) VALUES (?,?,?);",
    [
        expediente.fechaCreacion, 
        expediente.IdCliente, 
        expediente.IdEmpleado,
    ]
        );
        conexion.end()
    return {id:filas.insertId};
} catch (error) {
    console.log(error);
    conexion.end()
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
    let conexion
try {
     conexion = await connectDB ()
    const [filas]=await conexion.query("DELETE FROM tbl_expediente where IdExpediente = ?;",
    [
        expediente.IdExpediente,
    ]);
    conexion.end()
    return {estado:"OK"}; 
} catch (error) {
    console.log(error);
    conexion.end()
    throw new error ("Error al consultar el API");
}
},
}