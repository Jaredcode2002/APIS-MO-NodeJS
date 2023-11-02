import { ModParametro } from "../models/parametros.js";

export const ContrParametro = {
  getParametros: async (req,res) => {
    const Parametro = await ModParametro.getParametros();
    res.status(200).json(Parametro);
  },
  putParametros: async (req, res) => {
    try {
      const {
        Valor,
        Id_Parametro,
      } = req.body;
      const result = await ModParametro.putParametro({
        Valor,
        Id_Parametro,
      });
      res.status(200).json({id: result})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  getIntentos: async (req,res) => {
    const Parametro = await ModParametro.getIntentos();
    res.status(200).json(Parametro);
  },

  getCorreo: async (req,res) =>{
    const Parametro = await ModParametro.getCorreo();
    res.status(200).json(Parametro)
  },

  getBitacora: async (req,res) => {
    const Parametro = await ModParametro.getBitacora();
    res.status(200).json(Parametro);
  },

  //Usado en la pantalla del perfil en agregar preguntas según el parámetro
  getPreguntas: async (req,res) => {
    const Parametro = await ModParametro.getPreguntas();
    res.status(200).json(Parametro);
  },
  getImpuesto: async (req,res) => {
    const Parametro = await ModParametro.getImpuesto();
    res.status(200).json(Parametro);
  },
  getTiempoDReuintentoLogin: async (req,res) => {
    const Parametro = await ModParametro.get_TiempoDReuintentoLogin();
    res.status(200).json(Parametro);
  },
  putBitacora: async (req, res) => {
    try {
      const {Parametro} = req.body;
      const result = await ModParametro.put_Bitacora({Parametro});
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  putIntentos: async (req, res) => {
    try {
      const {
        Parametro,
      } = req.body;
      const result = await ModParametro.put_Intentos({Parametro});
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  putPreguntas: async (req, res) => {
    try {
      const {Parametro} = req.body;
      const result = await ModParametro.put_Preguntas({Parametro});
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  putImpuesto: async (req, res) => {
    try {
      const {Parametro} = req.body;
      const result = await ModParametro.put_Impuesto({Parametro});
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  putTiempoDReuintentoLogin: async (req, res) => {
    try {
      const {Parametro} = req.body;
      const result = await ModParametro.put_TiempoDReuintentoLogin({Parametro});
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  
};