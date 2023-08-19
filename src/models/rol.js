import { connectDB } from "../config/Conn.js";

export const ModRol = {

  getRol: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("SELECT Id_Rol,Rol,Descripcion from tbl_ms_roles")
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener los roles");
    }
  },

  postRol: async (rol) => {
    let conexion
    conexion = await connectDB();
    try {
      const [filas] = await conexion.query("INSERT INTO tbl_ms_roles(Rol,Descripcion,creado_por,fecha_creacion,modificado_por,fecha_modificacion) values (?,?,?,?,?,?)",
        [
          rol.Rol,
          rol.Descripcion,
          rol.creado_por,
          rol.fecha_creacion,
          rol.modificado_por,
          rol.fecha_modificacion,
        ]
      );
      conexion.end()
      return { estado: "OK" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al crear un nuevo rol");
    }

  },


  putUpdateRol: async (rol) => {
    let conexion
    conexion = await connectDB();
    try {
      const [filas] = await conexion.query("UPDATE tbl_ms_roles  SET Rol=?,Descripcion=?, creado_por=?,  fecha_creacion=?, modificado_por=?,fecha_modificacion=? WHERE  Id_Rol=?",
        [
          rol.Rol,
          rol.Descripcion,
          rol.creado_por,
          rol.fecha_creacion,
          rol.modificado_por,
          rol.fecha_modificacion,
          rol.Id_Rol,

        ]);
      conexion.end()
      return { estado: "OK" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al actualizar el rol");
    }

  },
  deleteRol: async (rol) => {
    let conexion
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("DELETE FROM tbl_ms_roles where Id_Rol = ?;",
        [
          rol.Id_Rol,
        ]
      );
      conexion.end()
      return { estado: "OK" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar el rol");
    }
  },

}