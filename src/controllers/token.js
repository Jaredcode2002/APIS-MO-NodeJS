import  {TokenMod}  from "../models/token.js";


    export const TokenContr = {
    enviarCodigo: async (req, res) => {
        try {
        const { correo, id } = req.body;
        const result =await TokenMod.enviarCodigoVerificacion({ correo, id });
        res.status(200).json(result);
        } catch (error) {console.log(error);}
    },
    verificarCodigo:async (req, res) => {
        try {
        const { codigo, id, correo } = req.body;
        const result = await TokenMod.verificarToken({id, codigo,correo});
        res.status(200).json(result);
        } catch (error) {
            console.log(error);
        }
    },
    obtenerId:async(req,res)=>{
        try {
            const {correo}=req.body
            const result= await TokenMod.obtenerId({correo})
            res.status(200).json(result)
        } catch (error) {
            
        }
    },
    };
