import { ModRecordatorio } from "../models/recordatorio.js";

export const ContrRecordatorio = {
    getCitas: async (req, res) => {
        try {
            const { fecha} = req.body;
            const result = await ModRecordatorio.getCitas({
                fecha
            });
            res.status(201).json(result);
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al obtener la lista de citas" });
        }
    },

    getCita: async (req, res) => {
      try {
        const result = await ModRecordatorio.getCita();
        res.json(result);
      } catch (error) {
        console.log(error);
        res.status(500).json({ message: "Error al obtener la lista de citas" });
      }
    },

    getClienteEx: async (req, res) => {
      try {
        const result = await ModRecordatorio.getClienteEx();
        res.json(result);
      } catch (error) {
        console.log(error);
        res.status(500).json({ message: "Error al obtener la lista de clientes" });
      }
  },
    

    postCitas: async (req, res) => {
        try {
            const { IdRecordatorio, IdCliente, Nota, fecha } = req.body;
            const result = await ModRecordatorio.postInsertCita({
                IdRecordatorio,
                IdCliente,
                Nota,
                fecha,
            });
            if (result===false) {
              res.status(500).json({ message: "La cita ya existe" });
            }else{
              res.status(201).json({ id: result.id });
            }
           
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al agendar la cita" });
        }
    },

    deleteCita: async (req,res)=>{
        try {
          const {IdRecordatorio} = req.body
          const result = await ModRecordatorio.delCita({IdRecordatorio})
          res.status(200).json(result)
        } catch (error) {
          console.log(error);
          throw new Error("Error al consumir el api");
        }
      },
      putCitas: async (req, res) => {
        try {
          const {Nota,fecha,IdRecordatorio  } = req.body;
          const result = await ModRecordatorio.putUpdateCitas({
            Nota,
            fecha,
            IdRecordatorio,
          });
          res.status(200).json({response:"Ok"})
        } catch (error) {
          console.log(error);
          throw new Error("Error al consumir el api")
        }
      },

      getFecha: async (req, res) => {
        try {
          const { IdCliente } = req.body;
          console.log(req.body);
          const result = await ModRecordatorio.getfecha({ IdCliente });
          res.status(200).json(result);
          console.log(result);
        } catch (error) {
          console.log(error);
          res.status(500).json({
            message: "Error al obtener el registro de fecha en tbl_expedientedetalle",
          });
        }
      },


    /*const Parametro = await ModParametro.getPreguntas();
    res.status(200).json(Parametro); */
    
}