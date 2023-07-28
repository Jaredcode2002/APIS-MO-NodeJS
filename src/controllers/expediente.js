import { ModCompras } from "../models/compra.js";
import { ModExpediente } from "../models/expediente.js";

export const ContrExpediente= {

     getExpediente :async  (req,res)=> {

        const expediente = await ModExpediente.getExpediente()
        res.json(expediente)
       
    },

    postInsertExpediente: async (req,res)=>{
        try {
            const{fechaCreacion,IdCliente,IdEmpleado} = req.body;
            const result = await ModExpediente.postInsertExpediente({fechaCreacion,IdCliente,IdEmpleado});
         res.status(201).json({ id: result.id });
             //res.status(200).json(expediente);
        } catch (error) {
            console.log(error);
        }
    },

    // putUpdateExpediente: async (req,res)=>{
    //     try {
    //         const{fechaCreacion,IdCliente,IdEmpleado,IdExpediente} = req.body;
    //         const result = await ModExpediente.putUpdateExpediente({fechaCreacion,IdCliente,IdEmpleado,IdExpediente});
    //      res.status(201).json({ id: result.id });
    //     } catch (error) {
    //         console.log(error);
    //     }
    // },
    
    deleteExpediente: async (req,res)=>{
        try {
            const{IdExpediente} = req.body;
            const result  = await ModExpediente.deleteExpediente({IdExpediente});
         res.status(201).json({ id: result.id });
             //res.status(200).json(expediente);
        } catch (error) {
            console.log(error);
        }
    },

}