
import { MailMod } from "../models/correo.js"


export const Mailer = {
    sendMail: async(req,res)=>{
        try {
            const {para,titulo,texto}= req.body
             await MailMod.sendMail({para,titulo,texto})
            res.status(200).json({state:'ok'})
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: 'Error al enviar correo' });
        }
    }
}