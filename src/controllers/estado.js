import { EstadoMod } from "../models/estado.js";

export const ContrEstado = {
    updActivo:async (req,res)=>{
        try {
            const {id}= req.body
            const result = await EstadoMod.updActivo({id})
            res.status(201).json({state: result.state});
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al ingresar las preguntas" });
        }
    },
    updInactivo:async (req,res)=>{
        try {
            const {id}= req.body
            const result = await EstadoMod.updInactivo({id})
            res.status(201).json({state: result.state});
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al ingresar las preguntas" });
        }
    },
}