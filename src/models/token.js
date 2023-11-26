import jwt from "jsonwebtoken";
import { MailMod } from "../models/correo.js"
import { connectDB } from "../config/Conn.js";

export const TokenMod = {
  guardarToken: async (destinatario, token) => {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query(
        'INSERT INTO tbl_token (`Id_Usuario`,`NombreToken`,`descripcion`) VALUES (?,"Cambio de contraseña",?);',
        [destinatario, token]
      );
      conexion.end()
    } catch (err) {
      console.log(err);
      conexion.end()
    }
  },
  obtenerToken: async (idUsuario) => {
    let conexion
    try {
      conexion = await connectDB();
      const [rows] = await conexion.execute(
        "SELECT * FROM TBL_Token WHERE Id_Usuario = ? ORDER BY IdToken DESC LIMIT 1;",
        [idUsuario]
      );
      conexion.end()
      if (rows.length > 0) {
        return rows[0].descripcion;
      } else {
        return null;
      }
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  enviarCodigoVerificacion: async (destinatario) => {
    const codigoVerif = TokenMod.generarCodig();
    const token = jwt.sign(
      { codigo: codigoVerif },
      TokenMod.generarSecretoUsuario(destinatario.correo),
      { expiresIn: "5m" }
    );
    const mail = {
      para: destinatario.correo,
      titulo: "Codigo de verificacion",
      texto: `Precaucion, el siguiente codigo es para verificar tu identidad, por favor no lo compartas con nadie\n${codigoVerif}`,
    };
    try {
      //primero se guarda en la base el token para luego enviarlo por correo
      //como el token ya tiene un tiempo de caducidad no es necesario un flag
      await TokenMod.guardarToken(destinatario.id, token);
      //se envia el codigo con el que se verificará el token despues
      await MailMod.sendMail(mail);
    } catch (error) {
      console.log(error);
    }
  },
  generarCodig: () => {
    const longitud = 6;
    const caracteres = "0123456789";
    let codigo = "";

    for (let i = 0; i < longitud; i++) {
      const indice = Math.floor(Math.random() * caracteres.length);
      codigo += caracteres[indice];
    }

    return codigo;
  },
  generarSecretoUsuario: (usuario) => {
    // Lógica para generar un secreto único para cada usuario
    const secretoBase = "secreto_super_seguro";
    return secretoBase + usuario;
  },
  verificarToken: async (Token) => {
    try {
      
      const token =await TokenMod.obtenerToken(Token.id);
      if (token) {
        // Verificar y decodificar el token JWT
        const decoded = jwt.verify(token, TokenMod.generarSecretoUsuario(Token.correo));
        // Obtener el código de verificación del token decodificado
        const codigoVerificacion = decoded.codigo;
        const codigoToken = Token.codigo.toString()
        console.log(codigoToken === codigoVerificacion);
        // Comparar el código de verificación con el proporcionado
        return codigoToken === codigoVerificacion;
      } else {
        return false; // No se encontró el token
      }
    } catch (error) {
      console.error("Error al validar el código de verificación:", error);
      return false;
    }
  },
  obtenerId:async (correo)=>{
    let conexion
    try {
     conexion = await connectDB()
      const [rows] = await conexion.query('SELECT `Id_Usuario` FROM tbl_ms_usuario where `Correo_Electronico`=?',
      [correo.correo])
      conexion.end()
      return rows[0].Id_Usuario     
    } catch (error) {
      conexion.end()
      return error
    }

  },
  
  
};