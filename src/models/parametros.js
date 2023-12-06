import { connectDB } from "../config/Conn.js";

export const ModParametro = {

  getParametros: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_ms_parametros");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },

  putParametro: async (parametro) => {
    let conexion
    conexion = await connectDB()
    try {
      const [filas] = await conexion.query("UPDATE TBL_MS_PARAMETROS SET Valor = ? WHERE Id_Parametro = ?;",
        [
          parametro.Valor,
          parametro.Id_Parametro,
        ]
      )
      conexion.end()
      return { estado: "ok" }
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  getIntentos: async () => { //#1
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("SELECT valor FROM tbl_ms_parametros where Id_Parametro=1;");
      conexion.end()
      return filas[0].valor;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  //Usado en la pantalla del perfil en agregar preguntas según el parámetro
  getPreguntas: async () => { //#2
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("SELECT valor FROM tbl_ms_parametros where `Id_Parametro`=2");
      conexion.end()
      return filas[0].valor; // Solo devolvemos el valor del parámetro 'ADMIN_PREGUNTAS' JohaLa26
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },

  getCorreo: async () => { //#3
    let conexion
    try {
      conexion = await connectDB();
      const { filas } = await conexion.query("SELECT valor FROM tbl_ms_parametros where `Id_Parametro`=3");
      conexion.end();
      return filas[0].valor;
    } catch (error) {
      console.log(error);
    }

  },

  getImpuesto: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("SELECT parametro,valor FROM tbl_ms_parametros where `Id_Parametro`=7'");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  get_TiempoDReuintentoLogin: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("SELECT parametro,valor FROM tbl_ms_parametros where `Id_Parametro`=9'");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  put_Intentos: async (parametro) => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("UPDATE tbl_ms_parametros set valor=? where `Id_Parametro`=1",
        parametro.Parametro,
      );
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  put_Preguntas: async (parametro) => {
    let conexion
    try {

      conexion = await connectDB();

      const [filas] = await conexion.query("UPDATE tbl_ms_parametros set valor=? where `Id_Parametro`=2",
        parametro.Parametro,
      );
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  put_Impuesto: async (parametro) => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("UPDATE tbl_ms_parametros set valor=? where `Id_Parametro`=7",
        parametro.Parametro,
      );
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  put_TiempoDReuintentoLogin: async (parametro) => {
    let conexion
    try {

      conexion = await connectDB();
      const [filas] = await conexion.query("UPDATE tbl_ms_parametros set valor=? where `Id_Parametro`=9",
        parametro.Parametro,
      );
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  getBitacora: async () => {
    let conexion
    try {

      conexion = await connectDB();
      const [filas] = await conexion.query("SELECT parametro,valor FROM tbl_ms_parametros where `Id_Parametro`=14");
      conexion.end()
      return filas[0];
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  put_Bitacora: async (parametro) => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("UPDATE tbl_ms_parametros set valor=? where `Id_Parametro`=14",
        parametro.Parametro,
      );
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
};