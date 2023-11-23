import { connectDB } from "../config/Conn.js";

export const ModSucursal = {

    getSucursales: async () => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("SELECT s.IdSucursal,d.departamento,c.ciudad,s.direccion,s.telefono, CASE  WHEN s.estado = 'A' THEN 'Activo'  WHEN s.estado = 'I' THEN 'Inactivo'  ELSE 'Desconocido'  END AS estado FROM tbl_sucursal AS s INNER JOIN tbl_departamento AS d ON s.IdDepartamento = d.IdDepartamento INNER JOIN tbl_ciudad AS c ON s.IdCiudad = c.IdCiudad WHERE s.estado = 'A' ORDER BY s.IdSucursal DESC;")
            conexion.end()
            return filas;
        } catch (error) {
            console.long(error);
            conexion.end()
            throw new error("Error al consumir el API")
        }
    },
    
    getSucursalInactivas:async()=>
    {
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ("SELECT s.IdSucursal,d.departamento,c.ciudad,s.direccion,s.telefono, CASE  WHEN s.estado = 'A' THEN 'Activo'  WHEN s.estado = 'I' THEN 'Inactivo'  ELSE 'Desconocido'  END AS estado FROM tbl_sucursal AS s INNER JOIN tbl_departamento AS d ON s.IdDepartamento = d.IdDepartamento INNER JOIN tbl_ciudad AS c ON s.IdCiudad = c.IdCiudad WHERE s.estado != 'A' ORDER BY s.IdSucursal DESC;")
            return filas;
        
        } catch (error) {
            console.log(error);
            throw new Error("Error al consumir el API");
        }
    },

    postInsertSucursal: async (sucursal) => {
        let conexion
         
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("INSERT INTO tbl_sucursal (IdDepartamento, IdCiudad, direccion, telefono, estado) VALUES (?, ?, ?, ?, ?);",
                [
                    sucursal.IdDepartamento,
                    sucursal.IdCiudad,
                    sucursal.direccion,
                    sucursal.telefono,
                    sucursal.estado
                ]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al crear un nueva sucursalr");
        }
    },

    putUpdateSucursal: async (sucursal) => {
        let conexion
    
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("UPDATE tbl_sucursal SET IdDepartamento = ?, IdCiudad = ?, direccion = ?, telefono = ?, estado= ? WHERE (IdSucursal = ?);",
                [
                    sucursal.IdDepartamento,
                    sucursal.IdCiudad,
                    sucursal.direccion,
                    sucursal.telefono,
                    sucursal.estado,
                    sucursal.IdSucursal,
                    
                ]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al actualizar la sucursal");
        }
    },

    deleteSucursal: async (sucursal) => {
        let conexion
        try {
         conexion = await connectDB()
            const [filas] = await conexion.query("DELETE FROM tbl_sucursal where IdSucursal=?;",
                [
                    sucursal.IdSucursal,
                ]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al eliminar la sucursal");
        }
    },


}