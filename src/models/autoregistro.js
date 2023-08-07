import { connectDB } from "../config/Conn.js"
import bcrypt from "bcrypt";
import { ModUsuarios } from "./usuario.js";

export const ModAutoReg = {

    postInsertEmpleadoAutoRegistro: async (empleado) => {
      let conexion
        try {
         conexion = await connectDB();
          const [filas] = await conexion.query("INSERT INTO  tbl_empleado (nombre, apellido, telefonoEmpleado, IdSucursal, IdGenero, numeroIdentidad) VALUES(?,?,?,3,?,?);",
            [
              empleado.nombre,
              empleado.apellido,
              empleado.telefonoEmpleado,
              empleado.IdGenero,
              empleado.numeroIdentidad,
            ]
          );
          conexion.end()
          return { id: filas.insertId };
        } catch (error) {
          console.log(error);
          conexion.end()
          throw new Error("Error al crear empleado autoregistrado");
        }
    },
    
    postInsertUsuarioAutoRegistro: async (usuario) => {
        let conexion
        const rondasSalto = 10;
        let hash
        try {
          const saltos = await bcrypt.genSalt(rondasSalto);
           hash = await bcrypt.hash(usuario.clave, saltos);
        } catch (error) {
          throw new Error(error);
        }    
        try {
           conexion = await connectDB();
          const [filas] = await conexion.query(
            "insert into TBL_MS_USUARIO (Usuario, Nombre_Usuario, Contrasenia, Id_Rol, Correo_Electronico, Fecha_Vencimiento, idEmpleado, fecha_creacion,fecha_modificacion) values (?, ?, ?, 3, ? ,date_add(current_date(),interval 90 day), ?, current_timestamp(), current_timestamp());",
            [
              usuario.usuario,
              usuario.nombre,
              hash,
              usuario.correo,
              usuario.idEmpleado
            ]
          );
          const data ={
            clave:usuario.clave,
            id:filas.insertId,
            autor:usuario.usuario
          }
    
          const result2= await ModUsuarios.postHistPasswrd(data)
          conexion.end()
          return { id: filas.insertId };
        } catch (error) {
          console.log(error);
          conexion.end()
          throw new Error("Error al crear usuarios");
        }
      },
    
    
}