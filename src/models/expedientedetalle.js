import { connectDB } from "../config/Conn.js";

export const ModExpedienteDetalle = { 

    getExpedienteDetalle:async ()=> {
        try {
            const conexion = await connectDB();
            const [filas]=await conexion.query ("SELECT * FROM tbl_expedientedetalle")
        return filas;
        } catch (error) {
            console.log (error);
            throw new error ("Error al consultar el API");
        }

    },

    postExpedienteDetalle :async (expedientedetalle)=> {
        const conexion = await connectDB ();
 try {
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
    return {estado:"OK"};
 } catch (error) {
    console.log(error);
    throw new error ("Error al consultar el API");
 }
    },

    putExpedienteDetalle :async (expedientedetalle)=> {
        try {
            const conexion = await connectDB()
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
            return  { estado:"Okay"}
        } catch (error) {
            console.log(error);
      throw new Error("Error al consultar el API")
        }
    },

    deleteExpedienteDetalle: async (expedientedetalle)=> {
        try {
    const conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_expedientedetalle WHERE  IdExpedienteDetalle=?;",
      [
        expedientedetalle.IdExpedienteDetalle,
      ]
      );
      return  { estado:"Okay"}
        } catch (error) {
            console.log(error);
      throw new Error("Error al consultar el API")
        }
    },
}