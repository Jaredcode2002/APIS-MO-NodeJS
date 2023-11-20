import { connectDB } from "../config/Conn.js";

export const ModRecordatorio = {

  getCitas: async (citas) => {
    let conexion
    try {
     conexion = await connectDB();
      const [filas] = await conexion.query("SELECT r.`IdRecordatorio`, r.`IdCliente`, c.nombre, r.`Nota`, r.`fecha` FROM tbl_recordatorio as r INNER JOIN tbl_cliente as c ON r.`IdCliente`=c.`idCliente` WHERE fecha = ? ",
        [citas.fecha],
      );
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener las citas");
    }
  },
  getCita: async () => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("SELECT r.`IdRecordatorio`, r.`IdCliente`, c.nombre, c.apellido, r.`Nota`, DATE(r.`fecha`)as fecha FROM tbl_recordatorio as r INNER JOIN tbl_cliente as c ON r.`IdCliente`=c.`idCliente` order by r.`IdCliente` DESC");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener la cita");
    }
  },


  postInsertCita: async (citas) => {
    let conexion
    try {
     conexion = await connectDB();
       conexion = await connectDB();
      const [fila2]=await  conexion.query("SELECT * FROM tbl_recordatorio where `IdCliente`=? and fecha=?",
      [
        citas.IdCliente,
        citas.fecha,
      ])
      if (fila2.length>0) {
        return false;
      }else{
        const [filas] = await conexion.query("INSERT INTO tbl_recordatorio ( IdRecordatorio,IdCliente,Nota,fecha) values(?,?,?,?);",
        [
          citas.IdRecordatorio,
          citas.IdCliente,
          citas.Nota,
          citas.fecha,

        ]
      );
      conexion.end()
      return { id: filas.insertId };
      }
      
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al ingresar la cita");
    }
  },

  delCita: async (citas) => {
    let conexion
    try {
       conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_recordatorio WHERE  IdRecordatorio = ?;", [
        citas. IdRecordatorio,
      ]);
      conexion.end()
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar la cita");
    }
  },

  putUpdateCitas: async (citas)=>{
    let conexion
    try {
     conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_recordatorio set Nota = ?, fecha= ?  WHERE IdRecordatorio= ?;",
      [
        citas.Nota,
        citas.fecha,
        citas.IdRecordatorio,
      ]
      )
      conexion.end()
      return {estado:"ok"}
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al actualizar la cita")
    }
},

getfecha: async(citas)=>{
let conexion
  try {
    conexion = await connectDB();
      const [filas] = await conexion.query("SELECT d.`fechaExpiracion` FROM tbl_expedientedetalle as d inner join tbl_expediente as e on d.`IdExpediente`=e.`IdExpediente` INNER JOIN tbl_cliente as c on e.`IdCliente`=c.`idCliente` where e.`IdCliente`=? ORDER BY d.`fechaExpiracion` DESC LIMIT 1;",
       [
        citas.IdCliente,
        // citas.fecha,
       ],
      );
      conexion.end()
      return filas  [0] ; // Solo devolvemos el valor de 'fechaExpiracion'
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener el registro");
    }
},





}