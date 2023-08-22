import { ModExpedienteDetalle } from "../models/expedientedetalle.js";

export const ContrExpedineteDetalle = {

    getExpedienteDetalle:async (req,res)=> {
        const {id} = req.body
        const expedientedetalle = await ModExpedienteDetalle.posttExpedienteDetalle({id})
        res.json(expedientedetalle)
       
    },

    postExpedienteDetalle: async (req,res)=>{
        try {
            const{IdExpediente, diagnostico, Optometrista, AsesorVenta, Antecedentes, ODEsfera, OIEsfera, ODCilindro, OICilindro, ODEje, OIEje, ODAdicion, OIAdicion, ODAltura, OIAltura, ODDistanciaPupilar, OIDistanciaPupilar,fechaConsulta,fechaExpiracion} = req.body;
            const result = await ModExpedienteDetalle.postExpedienteDetalle({IdExpediente, diagnostico, Optometrista, AsesorVenta, Antecedentes, ODEsfera, OIEsfera, ODCilindro, OICilindro, ODEje, OIEje, ODAdicion, OIAdicion, ODAltura, OIAltura, ODDistanciaPupilar, OIDistanciaPupilar,fechaConsulta,fechaExpiracion});
         res.status(201).json({ id: result.id });
             //res.status(200).json(expediente);
        } catch (error) {
            console.log(error);
        }
    },

    putExpedienteDetalle: async (req,res)=>{
        try {
            const{IdExpediente, diagnostico, Optometrista, AsesorVenta, Antecedentes, ODEsfera, OIEsfera, ODCilindro, OICilindro, ODEje, OIEje, ODAdicion, OIAdicion, ODAltura, OIAltura, ODDistanciaPupilar, OIDistanciaPupilar,fechaConsulta,fechaExpiracion, IdExpedienteDetalle} = req.body;
            const result = await ModExpedienteDetalle.putExpedienteDetalle({IdExpediente, diagnostico, Optometrista, AsesorVenta, Antecedentes, ODEsfera, OIEsfera, ODCilindro, OICilindro, ODEje, OIEje, ODAdicion, OIAdicion, ODAltura, OIAltura, ODDistanciaPupilar, OIDistanciaPupilar,fechaConsulta,fechaExpiracion, IdExpedienteDetalle});
         res.status(201).json({ id: result.id });
             //res.status(200).json(expediente);
        } catch (error) {
            console.log(error);
        }
    },

    deleteExpedienteDetalle: async (req,res)=>{
        try {
            const{IdExpedienteDetalle} = req.body;
            const result = await ModExpedienteDetalle.deleteExpedienteDetalle({IdExpedienteDetalle});
         res.status(201).json({ id: result.id });
             //res.status(200).json(expediente);
        } catch (error) {
            console.log(error);
        }
    },

}