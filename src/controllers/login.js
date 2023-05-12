import { ModLogin } from "../models/login.js";

export const ContrLogin = {
  //realiza una encryptacion
  
  postPsswrd: async (req, res) => {
    const { psswrd } = req.body;
    try {
      const result = await ModLogin.passEncript({ psswrd });
      res.status(200).json({ result });
    } catch (error) {
      console.log(error);
    }
  },

  //compara una contraseña
  getPsswrd: async (req, res) => {
    try {
      const { correo, clave } = req.body;
      const result = await ModLogin.getPsswrd({ correo, clave });
      res.status(200).json({ result: result });
      console.log(result);
    } catch (error) {
      console.log(error);
    }
  },

  getUser: async (req, res) => {
    try {
      const { correo } = req.body;
      const result = await ModLogin.userExist({ correo });
      res.status(201).json(result);
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating user" });
    }
  },

  getPreguntas: async (req, res) => {
    try {
      const { correo } = req.body;
      const result = await ModLogin.getPreguntas({ correo });
      res.status(201).json(result);
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error al consultar las preguntas" });
    }
  },
};
