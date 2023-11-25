import { connectDB } from "../config/Conn.js";
import bcrypt from "bcrypt";

export const ModLogin = {

  putLoginPVez:async(Usuario)=>{
    let conexion
    try {
       conexion = await connectDB()
      const [filas] = await conexion.query('UPDATE tbl_ms_usuario  SET `Preguntas_Contestadas`=?,`Primer_Ingreso`=1  WHERE  `Correo_Electronico`=?',
      [Usuario.nPreguntas,Usuario.correo])
      conexion.end()
      return {state :"ok"}      
    } catch (error) {
      conexion.end()
    }
  },


  getPreguntas: async (Usuario)=>{
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("select pu.`Id_Usuario`,p.`Pregunta`,pu.`Respuesta`, p.`Id_Pregunta` from tbl_ms_preguntas as p INNER join tbl_ms_preguntas_usuario as pu on pu.`Id_Pregunta`= p.`Id_Pregunta` INNER join tbl_ms_usuario as msu on pu.`Id_Usuario`=msu.`Id_Usuario` where msu.`Correo_Electronico` = ?",
        [Usuario.correo] 
      )
      conexion.end()
      return filas
    } catch (error) {
      console.log(error);
      conexion.end()
    }

  },

  userExist: async (Usuario) => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query(
        "select u.Nombre_Usuario,u.Estado_Usuario,r.Rol,u.Correo_Electronico,u.Id_Usuario,e.`IdEmpleado`,u.`Id_Rol` as idRol from TBL_MS_USUARIO as u INNER JOIN tbl_ms_roles as r  ON  u.`Id_Rol` = r.`Id_Rol` INNER JOIN tbl_empleado as e on e.`IdEmpleado`=u.`idEmpleado`   where Correo_Electronico  =  ?",
        [Usuario.correo]
      );
      conexion.end()
      if (filas.length === 1) {
        return filas;
      } else {
        return false;
      }
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },

  //obtengo la clave para compararla luego con el metodo comparePass que esta declarado mas abajo.
  getPsswrd: async (clave) => {
    let conexion
    try {
      console.log(clave);
      conexion = await connectDB();
      const [filas] = await conexion.query(
        "SELECT `Contrasenia` from tbl_ms_usuario WHERE `Correo_Electronico` = ?;",
        [clave.correo]
      );

      const compare = {
        psswrd:clave.clave,
        hashed:filas[0].Contrasenia
      }
      conexion.end()
      return await ModLogin.comparePass(compare)

    } catch (e) {
      conexion.end()
    }
  },

  //De momento solo encripta la contraseña
  passEncript: async (clave) => {
    const rondasSalto = 10;
    try {
      const saltos = await bcrypt.genSalt(rondasSalto);
      const hash = await bcrypt.hash(clave.psswrd, saltos);
      return hash;
    } catch (error) {
      console.log(new Error(error));
    }
  },

  //Devuelve true si la contraseña encriptada coincide con el string.
  comparePass: async (claves) => {
    try {
      const match = await bcrypt.compare(claves.psswrd, claves.hashed);
      return match;
    } catch (error) {
    }
  }
};
