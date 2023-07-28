import { ModDepartamento } from "../models/departamento.js";

export const ContrDepto = {
  getDepartamentos: async (req,res) => {
    const departamento = await ModDepartamento.getDeptos();
    res.status(200).json(departamento);
  },
  postDepto: async (req, res) => {
    try {
      const { departamento } = req.body;
      const result = await ModDepartamento.postInsertDepto({departamento,});
      res.status(201).json({ id: result.id });
    } catch (error) {
      console.log(error);
      res.status(500).json({ message: "Error creating depto" });
    }
  },
  putDepto: async (req, res) => {
    try {
      const {
        departamento,
        IdDepartamento,
        
      } = req.body;
      const result = await ModDepartamento.putUpdateDepto({
        departamento,
        IdDepartamento,
      });
      res.status(200).json({response:"Ok"})
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api")
    }
  },
  delDepto: async (req,res)=>{
    try {
      const {IdDepartamento} = req.body
      const result = await ModDepartamento.delDepto({IdDepartamento})
      res.status(200).json(result)
    } catch (error) {
      console.log(error);
      throw new Error("Error al consumir el api");
    }
  },
  
};
