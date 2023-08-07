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
          throw new Error("Error al obtener las preguntas");
        } 
    },
    postInsertPreguntas: async (preguntas) => {
      let conexion
        try {
        conexion = await connectDB();
          const [filas] = await conexion.query("INSERT INTO tbl_ms_preguntas (Pregunta,creado_por,fecha_creacion) values(?,?,?);",
            [
                preguntas.pregunta,
                preguntas.creadoPor,
                preguntas.FechaCrea,
            
            ]
          );
          conexion.end()
          return { id: filas.insertId };
        } catch (error) {
          console.log(error);
          conexion.end()
          throw new Error("Error ingresar las preguntas");
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
          throw new Error("Error al obtener las respuestas");
        } 
    },
    postInsertRespuestas: async (respuestas) => {
      let conexion
        try {
         conexion = await connectDB();
          const [filas] = await conexion.query("INSERT INTO tbl_ms_preguntas_usuario (Id_Usuario,Respuesta,Id_Pregunta,creado_por,fecha_creacion) values(?,?,?,?,?);",
            [
                respuestas.idUser,
                respuestas.respuesta,
                respuestas.idPregunta,
                respuestas.creadoPor,
                respuestas.fechaCrea,
            ]
          );
          conexion.end()
          return { id: filas.insertId };
        } catch (error) {
          console.log(error);
          conexion.end()
          throw new Error("Error ingresar las respuestas");
        }
    },
    compararRespuesta:async (respuestas)=>{
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

  getPyR : async (usuario) => {
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
      throw new Error("Error al obtener la lista de pre");
    } 
},
DeleteRespuestas: async(usuario)=>{
  let conexion
  try {
      conexion = await connectDB()
      const [filas] = await conexion.query("DELETE FROM `tbl_ms_preguntas_usuario` WHERE `Id_Pregunta`=? AND `Id_Usuario`=`Id_Usuario`;",
    [
      usuario.Id_Pregunta,
    ]
    );
    conexion.end()
  } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar la respuesta")
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
    throw new Error("Error al actualizar la respuesta")
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
    throw new Error("Error al obtener la respuesta");
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
    throw new Error("Error al obtener la respuesta");
  } 
},






};