import { connectDB } from "../config/Conn.js";

export const ModPreguntas = {

  getPreguntas: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_ms_preguntas");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },

  postInsertPreguntas: async (preguntas) => {
    let conexion
    try {
      conexion = await connectDB();

      // Verificar si ya existe un registro con la misma pregunta
      const [existingRows] = await conexion.query(
        "SELECT * FROM tbl_ms_preguntas WHERE Pregunta = ? ",
        [preguntas.pregunta]
      );

      if (existingRows.length > 0) {
        // Ya existe un registro con los mismos valores
        console.log("ya existe esta pregunta.");
        conexion.end();
      } else {
        const [filas] = await conexion.query("INSERT INTO tbl_ms_preguntas (Pregunta,creado_por,fecha_creacion) values(?,?,current_timestamp());",
          [
            preguntas.pregunta,
            preguntas.creadoPor,


          ]
        );
        conexion.end()
        return { id: filas.insertId };
      }

    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },


 /*  ExistePregunta: async (preguntas) => {
    let conexion;
    try {
      conexion = await connectDB();

      // Verificar si ya existe un registro con la misma pregunta
      const [filas] = await conexion.query(
        "SELECT Pregunta FROM tbl_ms_preguntas WHERE `Pregunta`=?",
        [preguntas.pregunta]
      );

      if (filas.length > 0) {
        console.log("ya existe esta pregunta.");
        return true
      } else {
        console.log("No existe ninguna pregunta con ese texto.");
        return false
      }
    } catch (error) {
      console.error(error);
      conexion.end();
    }
  },
 */

  putPreguntas: async (preguntas) => {
    let conexion;
    try {
        conexion = await connectDB();

        const [existingRows] = await conexion.query(
            "SELECT Pregunta FROM tbl_ms_preguntas WHERE Pregunta = ?",
            [preguntas.pregunta]
        );

        if (existingRows.length > 0) {
            console.log("Ya existe esta pregunta.");
            conexion.end();
            return { estado: "ya_existe" };

        } else {
            const [filas] = await conexion.query(
                "UPDATE tbl_ms_preguntas SET Pregunta = ?, modificado_por = ?, fecha_modificacion = current_timestamp() WHERE Id_Pregunta = ?;",
                [
                    preguntas.pregunta,
                    preguntas.modificado_por,
                   
                    preguntas.Id_Pregunta,
                ]
            );
            conexion.end();
            return { estado: "ok" };
        }
    } catch (error) {
        console.error(error);
        throw error;
    } finally {
        if (conexion) {
            conexion.end();
        }
    }
},




  DeletePreguntas: async (preguntas) => {
    let conexion
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("DELETE FROM `tbl_ms_preguntas` WHERE `Id_Pregunta`=?",
        [
          preguntas.Id_Pregunta,
        ]
      );
      conexion.end()
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },

  getRespuestas: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_ms_preguntas_usuario");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  postInsertRespuestas: async (respuestas) => {
    let conexion
    try {
      conexion = await connectDB();

      // Verificar si ya existe un registro con el mismo Id_Pregunta y Respuesta
      const [existingRows] = await conexion.query(
        "SELECT * FROM tbl_ms_preguntas_usuario WHERE Id_Usuario = ? AND Id_Pregunta = ? ",
        [respuestas.idUser, respuestas.idPregunta]
      );

      if (existingRows.length > 0) {
        // Ya existe un registro con los mismos valores
        conexion.end();
      }

      const [filas] = await conexion.query("INSERT INTO tbl_ms_preguntas_usuario (Id_Usuario,Respuesta,Id_Pregunta,creado_por,fecha_creacion) values(?,?,?,?,current_timestamp());",
        [
          respuestas.idUser,
          respuestas.respuesta,
          respuestas.idPregunta,
          respuestas.creadoPor,
        
        ]
      );
      conexion.end()
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },

  compararRespuesta: async (respuestas) => {
    let conexion
    try {
      conexion = await connectDB()
      const [rows] = await conexion.query('select * from tbl_ms_preguntas_usuario  where Id_Pregunta=? and Id_Usuario=? and Respuesta=?',
        [
          respuestas.Id_Pregunta,
          respuestas.Id_Usuario,
          respuestas.Respuesta
        ]
      );

      conexion.end()
      if (rows.length === 1) {
        return true;
      } else {
        return false;
      }

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
        "select Correo_Electronico from TBL_MS_USUARIO  where Correo_Electronico  =  ?",
        [Usuario.correo]
      );
      conexion.end()
      if (filas.length === 1) {
        return true;
      } else {
        return false;
      }
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },

  getPyR: async (usuario) => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("SELECT  p.`Pregunta`, r.`Respuesta`, r.Id_Pregunta   FROM tbl_ms_preguntas_usuario as r INNER JOIN tbl_ms_preguntas as p where `Id_Usuario`=? AND r.`Id_Pregunta`=p.`Id_Pregunta`",
        [usuario.Id_Usuario],
      );
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  DeleteRespuestas: async (usuario) => {
    let conexion
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("DELETE FROM `tbl_ms_preguntas_usuario` WHERE `Id_Pregunta`=? AND `Id_Usuario`=?;",
        [
          usuario.Id_Pregunta,
          usuario.Id_Usuario
        ]
      );
      conexion.end()
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  DeleteRespuestasUsuario: async (usuario) => {
    let conexion
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("DELETE FROM `tbl_ms_preguntas_usuario` WHERE `Id_Usuario`=?;",
        [
          usuario.Id_Usuario
        ]
      );
      conexion.end()
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },

  putRespuestas: async (usuario) => {
    let conexion
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("UPDATE tbl_ms_preguntas_usuario set  Respuesta=?, Id_Usuario=?, modificado_por=?  where Id_Pregunta =?;",
        [
          usuario.Respuesta,
          usuario.idUser,
          usuario.modificado_por,
          usuario.Id_Pregunta,

        ])
      conexion.end()
      return { estado: "ok" }
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },

  getRespuesta: async (usuario) => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("select `Respuesta` from tbl_ms_preguntas_usuario WHERE `Id_Pregunta`=?",
        [usuario.Id_Pregunta],);
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  getPregunta: async (usuario) => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("select `Pregunta` from tbl_ms_preguntas WHERE `Id_Pregunta`=?",
        [usuario.Id_Pregunta],);
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },






};