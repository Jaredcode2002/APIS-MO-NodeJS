import { connectDB } from "../config/Conn.js";

export const ModRol = {

  getRol: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("SELECT Id_Rol,Rol,Descripcion, estado from tbl_ms_roles Where estado = 'Activo' ORDER BY Id_Rol DESC;")
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  getRolesInactivos: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("SELECT Id_Rol,Rol,Descripcion, estado from tbl_ms_roles Where estado!= 'Activo' ORDER BY Id_Rol DESC")
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  getRolExiste: async (rol) => {
    let conexion
    conexion = await connectDB();
    try {
      const [filas] = await conexion.query("SELECT Id_Rol,Rol,Descripcion, estado from tbl_ms_roles Where Rol= ? or Descripcion= ?;",
        [
          rol.Rol,
          rol.Descripcion,
        ]
      );
      conexion.end()
      if (filas.legth >= 1) {
        return true
      } else {
        return false
      }
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  postRol: async (rol) => {
    let conexion
    conexion = await connectDB();
    if (await ModRol.getRolExiste(rol) == false) {
      try {
        const [filas] = await conexion.query("INSERT INTO tbl_ms_roles(Rol,Descripcion, estado) values (?,?,?)",
          [
            rol.Rol,
            rol.Descripcion,
            rol.estado
          ]
        );
        const [filas2] = await conexion.query("INSERT INTO tbl_permisos (Id_Objeto, Id_Rol, Permiso_Insercion, Permiso_Eliminacion, Permiso_Actualizacion, Permiso_Consultar) VALUES (2, last_insert_id(), 'n','n','n','n')",
          [
            rol.Id_Rol,
          ]);
        const [filas3] = await conexion.query("INSERT INTO tbl_permisos (Id_Objeto, Id_Rol, Permiso_Insercion, Permiso_Eliminacion, Permiso_Actualizacion, Permiso_Consultar) VALUES (3, last_insert_id(), 'n','n','n','n')",
          [
            rol.Id_Rol,
          ]);
        const [filas4] = await conexion.query("INSERT INTO tbl_permisos (Id_Objeto, Id_Rol, Permiso_Insercion, Permiso_Eliminacion, Permiso_Actualizacion, Permiso_Consultar) VALUES (4, last_insert_id(), 'n','n','n','n')",
          [
            rol.Id_Rol,
          ]);
        const [filas5] = await conexion.query("INSERT INTO tbl_permisos (Id_Objeto, Id_Rol, Permiso_Insercion, Permiso_Eliminacion, Permiso_Actualizacion, Permiso_Consultar) VALUES (5, last_insert_id(), 'n','n','n','n')",
          [
            rol.Id_Rol,
          ]);
        const [filas6] = await conexion.query("INSERT INTO tbl_permisos (Id_Objeto, Id_Rol, Permiso_Insercion, Permiso_Eliminacion, Permiso_Actualizacion, Permiso_Consultar) VALUES (6, last_insert_id(), 'n','n','n','n')",
          [
            rol.Id_Rol,
          ]);
        const [filas7] = await conexion.query("INSERT INTO tbl_permisos (Id_Objeto, Id_Rol, Permiso_Insercion, Permiso_Eliminacion, Permiso_Actualizacion, Permiso_Consultar) VALUES (7, last_insert_id(), 'n','n','n','n')",
          [
            rol.Id_Rol,
          ]);
        const [filas8] = await conexion.query("INSERT INTO tbl_permisos (Id_Objeto, Id_Rol, Permiso_Insercion, Permiso_Eliminacion, Permiso_Actualizacion, Permiso_Consultar) VALUES (8, last_insert_id(), 'n','n','n','n')",
          [
            rol.Id_Rol,
          ]);
        const [filas9] = await conexion.query("INSERT INTO tbl_permisos (Id_Objeto, Id_Rol, Permiso_Insercion, Permiso_Eliminacion, Permiso_Actualizacion, Permiso_Consultar) VALUES (9, last_insert_id(), 'n','n','n','n')",
          [
            rol.Id_Rol,
          ]);
        conexion.end()
        return { id: filas.insertId, id: filas2.insertId, id: filas3.insertId, id: filas4.insertId, id: filas5.insertId, id: filas6.insertId, id: filas7.insertId, id: filas8.insertId, id: filas9.insertId };
      } catch (error) {
        console.log(error);
        conexion.end()
        return false
      }
    } else {
      return false;
    }


  },


  putUpdateRol: async (rol) => {
    let conexion
    conexion = await connectDB();
    if (await ModRol.getRolExiste(rol) == false) {
      try {
        const [filas] = await conexion.query("UPDATE tbl_ms_roles  SET Rol=?,Descripcion=?, estado=? WHERE  Id_Rol=?",
          [
            rol.Rol,
            rol.Descripcion,
            rol.estado,
            rol.Id_Rol,
  
          ]);
        conexion.end()
        return { estado: "OK" };
      } catch (error) {
        console.log(error);
        conexion.end()
      }
    } else {
      return false;
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
    }
  },

}