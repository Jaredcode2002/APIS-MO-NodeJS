import { connectDB } from "../config/Conn.js";

export const ModSucursal = {

    getSucursales: async () => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("select s.IdSucursal, d.departamento, c.ciudad, s.direccion, s.telefono from tbl_sucursal as s inner join tbl_departamento as d on s.IdDepartamento=d.IdDepartamento inner join tbl_ciudad as c on s.IdCiudad=c.IdCiudad;")
            conexion.end()
            return filas;
        } catch (error) {
            console.long(error);
            conexion.end()
            throw new error("Error al consumir el API")
        }
    },

    postInsertSucursal: async (sucursal) => {
        let conexion
         
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("INSERT INTO tbl_sucursal (IdDepartamento, IdCiudad, direccion, telefono) VALUES (?, ?, ?, ?);",
                [
                    sucursal.IdDepartamento,
                    sucursal.IdCiudad,
                    sucursal.direccion,
                    sucursal.telefono,
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
            const [filas] = await conexion.query("UPDATE tbl_sucursal SET IdDepartamento = ?, IdCiudad = ?, direccion = ?, telefono = ? WHERE (IdSucursal = ?);",
                [
                    sucursal.IdDepartamento,
                    sucursal.IdCiudad,
                    sucursal.direccion,
                    sucursal.telefono,
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