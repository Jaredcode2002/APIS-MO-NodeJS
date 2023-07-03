import { ModEmpleados } from "../models/empleado.js";

export const ContrEmpleado = {
    getEmpleados: async (req, res) => {
        const emple = await ModEmpleados.getEmpleados();
        res.json(emple);
    },
    getEmpleado:async(req, res)=>{
        try {
            const {idEmpleado} = req.body;
            const result = await ModEmpleados.getEmpleado({idEmpleado});
            res.json(result);
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api")
        }
    },
    postEmpleado: async (req, res) => {
        try {
            const { id, nombre, apellido, telEmple, idSucursal, idGenero, numId } = req.body;
            const result = await ModEmpleados.postInsertEmpleado({
                id,
                nombre,
                apellido,
                telEmple,
                idSucursal,
                idGenero,
                numId,
            });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
            res.status(500).json({ message: "Error al crear empleado" });
        }
    },
    putEmpleado: async (req, res) => {
        try {
            const { nombre, apellido, telEmple, idSucursal, idGenero, numId, IdEmpleado, } = req.body;
            const result = await ModEmpleados.putUpdateEmpleado({ 
                nombre, 
                apellido, 
                telEmple, 
                idSucursal, 
                idGenero, 
                numId, 
                IdEmpleado, 
            });
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api")
        }
    },
    delEmpleado:async(req, res)=>{
        try {
            const {IdEmpleado} = req.body;
            const result = await ModEmpleados.delDeleteEmpleado({IdEmpleado});
            res.status(200).json({ response: "Ok" })
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el api")
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
    
};


