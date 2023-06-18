import { ModParametro } from "../models/parametros.js";

export const ContrParametro = {
  getParametros: async (req,res) => {
    const Parametro = await ModParametro.getParametros();
    res.status(200).json(Parametro);
  },
  putParametro: async (req, res) => {
    try {
      const {
        Id_Usuario,
        Parametro,
        Valor,
        creado_por,
        fecha_creacion,
        modificado_por,
        fecha_modificacion,
        Id_Parametro,
        
      } = req.body;
      const result = await ModParametro.putParametro()({
        Id_Usuario,
        Parametro,
        Valor,
        creado_por,
        fecha_creacion,
        modificado_por,
        fecha_modificacion,
        Id_Parametro,
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  getIntentos: async (req,res) => {
    const Parametro = await ModParametro.getIntentos();
    res.status(200).json(Parametro);
  },
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
  putIntentos: async (req, res) => {
    try {
      const {

        Parametro,

      } = req.body;
      const result = await ModParametro.put_Intentos()({
        
        Parametro,
        
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  putPreguntas: async (req, res) => {
    try {
      const {

        Parametro,

      } = req.body;
      const result = await ModParametro.put_Preguntas()({
        
        Parametro,
        
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  putImpuesto: async (req, res) => {
    try {
      const {

        Parametro,

      } = req.body;
      const result = await ModParametro.put_Impuesto()({
        
        Parametro,
        
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  putTiempoDReuintentoLogin: async (req, res) => {
    try {
      const {

        Parametro,

      } = req.body;
      const result = await ModParametro.put_TiempoDReuintentoLogin()({
        
        Parametro,
        
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  
};