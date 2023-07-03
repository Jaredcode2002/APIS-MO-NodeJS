import { connectDB } from "../config/Conn.js"
import bcrypt from "bcrypt";

export const ModAutoReg = {

    postInsertEmpleadoAutoRegistro: async (empleado) => {
        try {
        const conexion = await connectDB();
          const [filas] = await conexion.query("INSERT INTO  tbl_empleado (nombre, apellido, telefonoEmpleado, IdSucursal, IdGenero, numeroIdentidad) VALUES(?,?,?,3,?,?);",
            [
              empleado.nombre,
              empleado.apellido,
              empleado.telEmple,
              empleado.idGenero,
              empleado.numId,
            ]
          );
          return { id: filas.insertId };
        } catch (error) {
          console.log(error);
          throw new Error("Error al crear empleado autoregistrado");
        }
    },
    
    postInsertUsuarioAutoRegistro: async (usuario) => {
        const rondasSalto = 10;
        let hash
        try {
          const saltos = await bcrypt.genSalt(rondasSalto);
           hash = await bcrypt.hash(usuario.clave, saltos);
        } catch (error) {
          throw new Error(error);
        }    
        try {
          const conexion = await connectDB();
          const [filas] = await conexion.query(
            "insert into TBL_MS_USUARIO (Usuario, Nombre_Usuario, Contrasenia, Id_Rol, Correo_Electronico, Fecha_Vencimiento, idEmpleado, fecha_creacion,fecha_modificacion) values (?, ?, ?, 3, ? ,date_add(current_date(),interval 90 day), last_insert_id(), current_timestamp(), current_timestamp());",
            [
              usuario.usuario,
              usuario.nombre,
              hash,
              usuario.correo,
            ]
          );
          return { id: filas.insertId };
        } catch (error) {
          console.log(error);
          throw new Error("Error al crear usuarios");
        }
      },
    
    
}