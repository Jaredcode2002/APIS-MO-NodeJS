import { ModUsuarios } from "../models/usuario.js";

export const ContrUsuario = {
  
  getUsuarios: async (req, res) => {
    const users = await ModUsuarios.getUsuarios();
    res.json(users);
  },
  getUsuariosABlockInnactivos: async (req, res) => {
    const users = await ModUsuarios.getUsuariosBlockInactivos();
    res.json(users);
  },
  getUsuario:async(req, res)=>{
    try {
        const {Correo_Electronico} = req.body;
      
        const result = await ModUsuarios.getUsuario({Correo_Electronico});
        res.json(result);
    } catch (error) {
        console.log(error);
        throw new Error("Error al consumir el api")
    }
},

putUpdUsuarioPerfil:async(req, res)=>{
  try {
      const {nombre, apellido,numeroIdentidad, Correo_Electronico, id} = req.body;
    
      const result = await ModUsuarios.PutUsuarioPerfil({nombre, apellido,numeroIdentidad, Correo_Electronico, id});
      res.status(200).json(result);
  } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
  }
},
  postUsuario: async (req, res) => {
    try {
      const { id, usuario, nombre, clave, correo, rol } = req.body;
      console.log({id,usuario,nombre,clave,correo,rol});
      const result = await ModUsuarios.postInsertUsuario({id,usuario,nombre,clave,correo,rol});
      console.log(result);
      res.status(201).json(result);
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating user" });
    }
  },
  putUsuario: async (req, res) => {
    try {
      console.log(req.body);
      const {
        usuario,
        nombreUsuario,
        estadoUsuario,
        idRol,
        correo,
        idEmpleado,
        idUsuario,
      } = req.body;
      const result = await ModUsuarios.putUpdateUsuario({
        usuario,
        nombreUsuario,
        estadoUsuario,
        idRol,
        correo,
        idEmpleado,
        idUsuario,
      });
      console.log("ok");
      res.status(200).json({ response: "Ok" });
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  delUsuario: async (req, res) => {
    try {
      const { id } = req.body;
      const result = await ModUsuarios.delUsuario({ id });
      res.status(200).json(result);
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  getFechaExp: async (req, res) => {
    try {
      const { correo } = req.body;
      const result = await ModUsuarios.getFechaExp({ correo });
      res.status(200).json(result);
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  putUpdateEstado: async (req, res) => {
    try {
      const { correo } = req.body;
      const result = await ModUsuarios.putUpdateEstado({ correo });
      res.status(200).json(result);
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },

  putUpdateEstadoUsuario: async (req, res) => {//Edicion del usuario (solamente el estado)
    try {
      const { id,estado } = req.body;
      const result = await ModUsuarios.PutUsuarioEstado({ id,estado });
      res.status(200).json(result);
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },

  putUpdateEstadoActivo: async (req, res) => {
    try {
      const { correo } = req.body;
      const result = await ModUsuarios.putUpdateEstadoActivo({ correo });
      res.status(200).json(result);
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  compararContraVSHistorial: async (req, res) => {
    try {
      const { correo, clave, id } = req.body;
      const result = await ModUsuarios.compararContraVSHistorial({
        correo,
        clave,
        id,
      });
      res.status(200).json(result);
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },

  ActualizarContra:async (req,res)=>{
    try {
      const {correo,clave,id,autor}= req.body
      const result = await ModUsuarios.putUpdatePassword({correo,clave})
      const result2= await ModUsuarios.postHistPasswrd({id,clave,autor})
      res.status(200).json(result) 
     } catch (error) {
       console.log(error);
       throw new Error("Error al consumir el api");
     }
  },

  //Update por recuperacion
  putUpdatePassword: async (req, res) => {
    try {
      const { correo, clave, id, autor } = req.body;
      console.log(req.body);

      if (await ModUsuarios.compararContraVSHistorial({id,clave})===false) {
        const result = await ModUsuarios.putUpdatePassword({ correo, clave });
        await ModUsuarios.postHistPasswrd({ id, clave, autor });
        res.status(200).json(result);
      }else{
        res.status(200).json(false)
      }
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  postHistPassword: async (req, res) => {
    try {
      const { id, clave, autor } = req.body;
      const result = await ModUsuarios.postHistPasswrd({ id, clave, autor });
      res.status(200).json(result);
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
};