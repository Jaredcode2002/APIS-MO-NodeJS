import { connectDB } from "../config/Conn.js";

export const ModExpedienteDetalle = { 

    posttExpedienteDetalle:async (expediente)=> {
        let conexion
        try {
            conexion = await connectDB();
        const [filas]=await conexion.query ("SELECT * FROM tbl_expedientedetalle WHERE `IdExpediente` =?",[expediente.id])
        conexion.end()
        return filas;
        } catch (error) {
            console.log (error);
            conexion.end()

            throw new error ("Error al consultar el API");

        }

    },

    postExpedienteDetalle :async (expedientedetalle)=> {
        let conexion

 try {
    conexion = await connectDB ();
    const [filas]=await conexion.query("INSERT INTO tbl_expedientedetalle(IdExpediente, diagnostico, Optometrista, AsesorVenta, Antecedentes, ODEsfera, OIEsfera, ODCilindro, OICilindro, ODEje, OIEje, ODAdicion, OIAdicion, ODAltura, OIAltura, ODDistanciaPupilar, OIDistanciaPupilar,fechaConsulta,fechaExpiracion)VALUES (?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?);",
    [
    expedientedetalle.IdExpediente,
    expedientedetalle.diagnostico,
    expedientedetalle.Optometrista, 
    expedientedetalle.AsesorVenta, 
    expedientedetalle.Antecedentes, 
    expedientedetalle.ODEsfera, 
    expedientedetalle.OIEsfera, 
    expedientedetalle.ODCilindro, 
    expedientedetalle.OICilindro, 
    expedientedetalle.ODEje, 
    expedientedetalle.OIEje, 
    expedientedetalle.ODAdicion, 
    expedientedetalle.OIAdicion, 
    expedientedetalle.ODAltura, 
    expedientedetalle.OIAltura, 
    expedientedetalle.ODDistanciaPupilar, 
    expedientedetalle.OIDistanciaPupilar,
    expedientedetalle.fechaConsulta,
    expedientedetalle.fechaExpiracion,
    ]    
    );
    conexion.end()
    return {estado:"OK"};
 } catch (error) {
    console.log(error);
    conexion.end()
    throw new error ("Error al consultar el API");
 }

    },

    putExpedienteDetalle :async (expedientedetalle)=> {
        let conexion
        try {
             conexion = await connectDB()
            const [filas] = await conexion.query("UPDATE tbl_expedientedetalle SET IdExpediente=?, diagnostico=?, Optometrista=?, AsesorVenta=?, Antecedentes=?, ODEsfera=?, OIEsfera=?, ODCilindro=?, OICilindro=?, ODEje=?, OIEje=?, ODAdicion=?, OIAdicion=?, ODAltura=?, OIAltura=?, ODDistanciaPupilar=?, OIDistanciaPupilar=?,fechaConsulta=?,fechaExpiracion=? WHERE  IdExpedienteDetalle=?;",
            [
                expedientedetalle.IdExpediente,
                expedientedetalle.diagnostico,
                expedientedetalle.Optometrista, 
                expedientedetalle.AsesorVenta, 
                expedientedetalle.Antecedentes, 
                expedientedetalle.ODEsfera, 
                expedientedetalle.OIEsfera, 
                expedientedetalle.ODCilindro, 
                expedientedetalle.OICilindro, 
                expedientedetalle.ODEje, 
                expedientedetalle.OIEje, 
                expedientedetalle.ODAdicion, 
                expedientedetalle.OIAdicion, 
                expedientedetalle.ODAltura, 
                expedientedetalle.OIAltura, 
                expedientedetalle.ODDistanciaPupilar, 
                expedientedetalle.OIDistanciaPupilar,
                expedientedetalle.fechaConsulta,
                expedientedetalle.fechaExpiracion,
                expedientedetalle.IdExpedienteDetalle,
            ]
            );
            conexion.end()
            return  { estado:"Okay"}
        } catch (error) {
            console.log(error);
            conexion.end()

      throw new Error("Error al consultar el API")

        }
    },

    deleteExpedienteDetalle: async (expedientedetalle)=> {
        let conexion
        try {
     conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_expedientedetalle WHERE  IdExpedienteDetalle=?;",
      [
        expedientedetalle.IdExpedienteDetalle,
      ]
      );
      conexion.end()
      return  { estado:"Okay"}
        } catch (error) {
            console.log(error);
            conexion.end()

      throw new Error("Error al consultar el API")

        }
    },
}