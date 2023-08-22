import { ModLogin } from "../models/login.js";

export const ContrLogin = {

  putLoginPVez: async (req,res)=>{
    try {
      const {nPreguntas,correo}=req.body
      const result = await ModLogin.putLoginPVez({nPreguntas,correo})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      res.status(500).json("Error al consumir el api")
    }
  },

  //realiza una encryptacion
  
  postPsswrd: async (req, res) => {
    const { psswrd } = req.body;
    try {
      const result = await ModLogin.passEncript({ psswrd });
      res.status(200).json({ result });
    } catch (error) {
      console.log(error);
      res.status(500).json("Error al consumir el api")
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
      res.status(500).json("Error al consumir el api")
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
  test: async (req,res)=>{
    try {
      const {psswrd,hashed} = req.body
      const result = await ModLogin.comparePass({psswrd,hashed})
      res.json(result)
    } catch (error) {
      
    }
  }
};
