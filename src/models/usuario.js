import { connectDB } from "../config/Conn.js";
import bcrypt from "bcrypt";
import { ModLogin } from "./login.js";

export const ModUsuarios = {
  getUsuarios: async () => {
    let conexion;
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query(
        "SELECT u.id_Usuario,u.Usuario,u.Nombre_Usuario,r.rol,u.Id_Rol,u.Estado_Usuario,u.idEmpleado, u.Correo_Electronico,u.Contrasenia,u.Fecha_Ultima_Conexion,u.Fecha_Vencimiento FROM tbl_ms_usuario as u INNER JOIN tbl_ms_roles as r on u.`Id_Rol` = r.`Id_Rol` where u.`Estado_Usuario`='Activo' ORDER BY u.`Id_Usuario` DESC;"
      );
      conexion.end();
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },
  getUsuariosBlockInactivos: async () => {
    let conexion;
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query(
        "SELECT u.id_Usuario,u.Usuario,u.Nombre_Usuario,r.rol,u.Estado_Usuario, u.Correo_Electronico,u.Contrasenia,u.Fecha_Ultima_Conexion,u.Fecha_Vencimiento FROM tbl_ms_usuario as u INNER JOIN tbl_ms_roles as r on u.`Id_Rol` = r.`Id_Rol` where u.`Estado_Usuario`!='Activo' ORDER BY u.`Id_Usuario` DESC"
      );
      conexion.end();
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },
  getUsuario: async (usuario) => {
    let conexion;
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query(
        "SELECT u.`Id_Usuario`, u.`Contrasenia`, u.`Nombre_Usuario`, e.nombre, e.apellido, e.`numeroIdentidad`,r.`Rol`, u.`Correo_Electronico`, e.`telefonoEmpleado`, u.`idEmpleado` FROM tbl_ms_usuario as u INNER JOIN tbl_empleado as e on  u.`idEmpleado`=e.`idEmpleado`  INNER JOIN tbl_ms_roles as r on  u.`Id_Rol`=r.`Id_Rol` WHERE u.`Correo_Electronico`=? ",
        [usuario.Correo_Electronico]
      );
      conexion.end();
      return filas[0];
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },

  PutUsuarioPerfil: async (usuario) => {
    let conexion;
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query(
        "UPDATE tbl_ms_usuario AS u INNER JOIN tbl_empleado AS e ON u.idEmpleado = e.idEmpleado SET e.nombre =?, e.apellido =?, e.numeroIdentidad =?, u.Correo_Electronico =? WHERE u.Id_usuario =?;",
        [
          usuario.nombre,
          usuario.apellido,
          usuario.numeroIdentidad,
          usuario.Correo_Electronico,
          usuario.id,
        ]
      );
      conexion.end();
      return { estado: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },

  PutUsuarioEstado: async (usuario) => {
    let conexion;
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query(
        "UPDATE tbl_ms_usuario set `Estado_Usuario`=? where `Id_Usuario`=?",
        [usuario.estado, usuario.id]
      );
      conexion.end();
      return { estado: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },

  postInsertUsuario: async (usuario) => {
    let conexion;
    let hash=await ModLogin.passEncript({psswrd:usuario.clave})
    console.log(hash);
    try {
      conexion = await connectDB();
      let exist = await ModUsuarios.userExist(usuario);

      if (!exist) {
        const [filas] = await conexion.query(
          'insert into TBL_MS_USUARIO (Usuario, Nombre_Usuario, Contrasenia,Id_Rol, Correo_Electronico, idEmpleado, fecha_creacion,fecha_modificacion,Estado_Usuario,Fecha_Vencimiento)values (?, ?, ?, ?, ?, ?, current_timestamp(), current_timestamp(),"Nuevo",date_add(current_date(),interval 90 day));',
          [
            usuario.usuario,
            usuario.nombre,
            hash,
            usuario.rol,
            usuario.correo,
            usuario.id,
          ]
        );
        let data = {
          id: filas.insertId,
          clave: usuario.clave,
          autor: usuario.nombre,
        };
        ModUsuarios.postHistPasswrd(data);
        conexion.end();
        return { id: filas.insertId };
      } else {
        return false;
      }
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },
  userExist: async (Usuario) => {
    let conexion;
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query(
        "select u.Nombre_Usuario,u.Estado_Usuario,r.Rol,u.Correo_Electronico,u.Id_Usuario,u.`Id_Rol` as idRol from TBL_MS_USUARIO as u INNER JOIN tbl_ms_roles as r  ON  u.`Id_Rol` = r.`Id_Rol`   where Correo_Electronico  =  ? OR `Nombre_Usuario` = ?",
        [Usuario.correo, Usuario.nombre]
      );
      conexion.end();
      console.log(filas.length > 0);
      if (filas.length > 0) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },

  compararContraVSHistorial: async (Usuario) => {
    let conexion;

    try {
      conexion = await connectDB();
      const [filas] = await conexion.query(
        "SELECT `Contrasenia` FROM tbl_ms_hist_contrasenia where `Id_Usuario`=? ORDER BY `Id_Historial` DESC ",
        [Usuario.id]
      );

      // const clavesota = {
      //   psswrd:Usuario.clave
      // }
      // const clave = await ModLogin.passEncript(clavesota)

      let data = {
        psswrd: Usuario.clave,
        hashed: filas[0].Contrasenia,
      };
      conexion.end();
      return await ModLogin.comparePass(data);
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },

  putUpdateUsuario: async (usuario) => {
    let conexion;
    let hash = await ModLogin.passEncript({psswrd:usuario.clave})
    try {
      conexion = await connectDB();

     if(usuario.clave===""||usuario.clave===null){
      const [filas] = await conexion.query(
        "UPDATE tbl_ms_usuario set Usuario = ?, Nombre_Usuario = ?, Estado_Usuario = ?, Id_Rol = ?, Correo_Electronico = ? , Fecha_Vencimiento = date_add(current_date(),interval 90 day)  WHERE Id_usuario=?;",
        [
          usuario.usuario,
          usuario.nombreUsuario,
          usuario.estadoUsuario,
          usuario.idRol,
          usuario.correo,
          usuario.idUsuario,
        ]
      );
     }else{
       const [filas] = await conexion.query(
         "UPDATE tbl_ms_usuario set Usuario = ?, Nombre_Usuario = ?, Contrasenia = ?, Estado_Usuario = ?, Id_Rol = ?, Correo_Electronico = ? , Fecha_Vencimiento = date_add(current_date(),interval 90 day)  WHERE Id_usuario=?;",
         [
           usuario.usuario,
           usuario.nombreUsuario,
           hash,
           usuario.estadoUsuario,
           usuario.idRol,
           usuario.correo,
           usuario.idUsuario,
         ]
       );
     }
      conexion.end();
      return { estado: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },

  delUsuario: async (usuario) => {
    let conexion;
    try {
      conexion = await connectDB();
      await conexion.query("DELETE FROM TBL_MS_USUARIO WHERE Id_Usuario = ?;", [
        usuario.id,
      ]);
      conexion.end();
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },

  getFechaExp: async (usuario) => {
    let conexion;
    try {
      const obj = { correo: usuario.correo };
      const { correo } = obj;
      conexion = await connectDB();
      const [filas] = await conexion.query(
        "SELECT `Fecha_Vencimiento` from tbl_ms_usuario WHERE `Correo_Electronico` = ?;",
        [usuario.correo]
      );
      const fechaCompleta = filas[0].Fecha_Vencimiento.toString();
      const fechaobj = new Date(fechaCompleta);
      const fecha = fechaobj.toISOString().substring(0, 10);

      const fechaAc = new Date();
      const fechaActual = fechaAc.toISOString().substring(0, 10);

      //console.log(fechaActual>fecha?"fecha actual es mayor a expiracion":"aun no expira");
      conexion.end();
      if (fechaActual > fecha) {
        const result = await ModUsuarios.putUpdateEstado({ correo });
        return { state: "F" };
      }
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },
  putUpdateEstado: async (usuario) => {
    let conexion;
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query(
        'UPDATE tbl_ms_usuario set `Estado_Usuario` ="Inactivo" where `Correo_Electronico` = ?;',
        [usuario.correo]
      );
      conexion.end();
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },

  putUpdateEstadoActivo: async (usuario) => {
    let conexion;
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query(
        'UPDATE tbl_ms_usuario set `Estado_Usuario` ="Activo" where `Correo_Electronico` = ?;',
        [usuario.correo]
      );
      conexion.end();
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },

  putUpdatePassword: async (usuario) => {
    let conexion;
    try {
      const clave = { psswrd: usuario.clave };
      const { psswrd } = clave;
      conexion = await connectDB();
      const contra = await ModLogin.passEncript({ psswrd });
      const [filas] = await conexion.query(
        "update tbl_ms_usuario set `Contrasenia` = ? where `Correo_Electronico` = ?",
        [contra, usuario.correo]
      );
      conexion.end();
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },

  postHistPasswrd: async (usuario) => {
    let conexion;
    try {
      console.log(usuario);
      const clave = { psswrd: usuario.clave };
      const { psswrd } = clave;
      let contra = await ModLogin.passEncript({ psswrd });

      conexion = await connectDB();
      const [filas] = await conexion.query(
        "INSERT into tbl_ms_hist_contrasenia (Id_Usuario,Contrasenia,creado_por) values(?,?,?)",
        [usuario.id, contra, usuario.autor]
      );
      conexion.end();
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      conexion.end();
    }
  },
};
