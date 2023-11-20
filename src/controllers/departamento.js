import { ModDepartamento } from "../models/departamento.js";

export const ContrDepto = {

  getDepartamentos: async (req,res) => {
    const departamento = await ModDepartamento.getDeptos();
    res.status(200).json(departamento);
  },

  getDepartamentosInactivos: async (req,res) => {
    const departamento = await ModDepartamento.getDepartamentosInactivos();
    res.status(200).json(departamento);
  },
  
  postInsertDepto:async(req,res)=>
  {
      try {
          const  {departamento, estado}=req.body;
          const result = await ModDepartamento.postInsertDepto({departamento,estado});
          res.status(201).json({ id: result.id });
          if (result == false) {
              res.status(201).json(result);
            } else {
              res.status(201).json(result);
            }
          } catch (error) {
            console.log(error);
          }
  },

  putUpdateDepto: async (req, res) => {
    try {
      const {departamento, estado, IdDepartamento} = req.body;
      const result = await ModDepartamento.putUpdateDepto({departamento, estado, IdDepartamento});
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
      res.status(201).json({ id: result.id});
    } catch (error) {
      console.log(error);
    }
  },
  
};