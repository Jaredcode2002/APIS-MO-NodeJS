import { ModClientes } from "../models/clientes.js";

export const ContrClientes = {
  getClientes: async (req, res) => {
    try {
      const clientes = await ModClientes.getClientes();
      res.status(200).json(clientes);
    } catch (error) {
      console.log(error);
      res.status(500).json("Error al consumir el api");
    }
  },
  postCliente: async (req, res) => {
    try {
        const result = await ModClientes.postCliente({idCliente,nombre,apellido,idGenero,fechaNacimiento,direccion,telefono,correo})
        res.status(200).json(result);
    } catch (error) {
      console.log(error);
      res.status(500).json("Error al consumir el api");
    }
  },
  putCliente: async (req,res)=>{
    try {
      const {idCliente,nombre,apellido,idGenero,fechaNacimiento,direccion,telefono,correo} = req.body
      const result = await ModClientes.putCliente({idCliente,nombre,apellido,idGenero,fechaNacimiento,direccion,telefono,correo})
      res.status(200).json(result);
  } catch (error) {
    console.log(error);
    res.status(500).json("Error al consumir el api");
  }
  },
  delCliente: async (req,res)=>{
    try {
      const {idCliente} = req.body
      const result = await ModClientes.delCliente({idCliente})
      res.status(200).json(result);
  } catch (error) {
    console.log(error);
    res.status(500).json("Error al consumir el api");
  }
  }
};
