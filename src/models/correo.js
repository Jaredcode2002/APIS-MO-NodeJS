import nodemailer from "nodemailer";
import { connectDB } from "../config/Conn.js";

const enviarMail = async (mail) => {
  let conexion;
  try {
    conexion = await connectDB();

    const [filaCorreo] = await conexion.query("SELECT valor FROM tbl_ms_parametros where Id_Parametro=3;");
    // host = filasHost[0].valor;
    console.log(filaCorreo[0].valor);

    const [filaCorreoPass] = await conexion.query("SELECT valor FROM tbl_ms_parametros where Id_Parametro=15;");
    // host = filasHost[0].valor;
    console.log(filaCorreoPass[0].valor);



    const config = {
      host: "smtp.gmail.com",
      port: 587,
      auth: {
        user: filaCorreo[0].valor,
        pass: filaCorreoPass[0].valor,
      },
    };


    //3


    const mensaje = {
      from: filaCorreo[0].valor,
      to: mail.para,
      subject: mail.titulo,
      html: mail.html, // Cambia de 'text' a 'html'
    };

    const transport = nodemailer.createTransport(config);
    const info = await transport.sendMail(mensaje);
  } catch (error) {
    throw error; // Propaga el error
  } finally {
    if (conexion) {
      conexion.end(); // Cierra la conexión en cualquier caso
    }
  }


};

export const MailMod = {
  sendMail: enviarMail,
};
