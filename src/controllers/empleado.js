import { ModEmpleados } from "../models/empleado.js";

export const ContrEmpleado = {
    getEmpleados: async (req, res) => {
        const emple = await ModEmpleados.getEmpleados();
        res.json(emple);
    },
    getEmpleadosSinUsuario: async (req, res) => {
        const emple = await ModEmpleados.getEmpleadosSinUsuario();
        res.json(emple);
    },
    getEmpleadosInactivos:async(req, res)=>{
        const emple = await ModEmpleados.getEmpleadosInactivos();
        res.json(emple);
    },
    getEmpleado:async(req, res)=>{
        try {
            const {idEmpleado} = req.body;
            const result = await ModEmpleados.getEmpleado({idEmpleado});
            res.json(result);
        } catch (error) {
            console.log(error);
        }
    },
    postEmpleado: async (req, res) => {
        try {
            const { id, nombre, apellido, telEmple, idSucursal, idGenero, numId, fechaIngreso, fechaSalida, fechaCumpleanos, estado } = req.body;
            const result = await ModEmpleados.postInsertEmpleado({
                id,
                nombre,
                apellido,
                telEmple,
                idSucursal,
                idGenero,
                numId,
                fechaIngreso,
                fechaSalida,
                fechaCumpleanos,
                estado
            });
            //res.status(201).json({ id: result.id });
            if (result ==false) {
                res.status(201).json(result);
            }else{
                res.status(201).json(result);
            }
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al crear empleado" });
        }
    },
    putEmpleado: async (req, res) => {
        try {
            const { nombre, apellido, telEmple, idSucursal, idGenero, numId, IdEmpleado,fechaIngreso,fechaSalida,fechaCumpleanos,estado } = req.body;
            const result = await ModEmpleados.putUpdateEmpleado({ 
                nombre, 
                apellido, 
                telEmple, 
                idSucursal, 
                idGenero, 
                numId, 
                fechaIngreso,
                fechaSalida,
                fechaCumpleanos,
                estado,
                IdEmpleado, 
            });
            if (result ==false) {
                res.status(201).json(result);
            }else{
                res.status(201).json(result);
            }
        } catch (error) {
            console.log(error);
        }
    },
    delEmpleado:async(req, res)=>{
        try {
            const {IdEmpleado} = req.body;
            const result = await ModEmpleados.delDeleteEmpleado({IdEmpleado});
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
        }
    },
    getSucursales: async (req, res) => {
        const sucur = await ModEmpleados.getSucursal();
        res.json(sucur);
    },
    getGeneros: async (req, res) => {
        const gene = await ModEmpleados.getGenero();
        res.json(gene);
    },
    getEmpleadoExist: async (req, res) => {
        try {
          const { numId } = req.body;
          const result = await ModEmpleados.empleadoExist({ numId });
          res.status(201).json(result);
        } catch (error) {
          console.log(error);
          res.status(500).json({ message: "Error creating employe" });
        }
      },
    
};