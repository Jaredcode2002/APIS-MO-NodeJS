import { connectDB } from "../config/Conn.js"

export const ModClientes = {
    getClientes: async ()=>{
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("SELECT c.idCliente, c.nombre,c.apellido, g.descripcion as genero, c.fechaNacimiento, c.direccion, c.telefonoCliente as Telefono, c.correoElectronico as Email from tbl_cliente as c inner join tbl_genero as g on c.IdGenero=g.IdGenero ORDER BY c.idCliente DESC;")
            conexion.end()
            return filas
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    postCliente: async (Cliente)=>{
        let conexion
        try {
             conexion = await connectDB()
            const [filas] = await conexion.query("INSERT INTO tbl_cliente (idCliente,nombre,apellido,IdGenero,fechaNacimiento,direccion,telefonoCliente,correoElectronico) VALUES(?,?,?,?,?,?,?,?);",
            [Cliente.idCliente,Cliente.nombre,Cliente.apellido,Cliente.idGenero,Cliente.fechaNacimiento,Cliente.direccion,Cliente.telefono,Cliente.correo])
            conexion.end()
            return {estado:"ok"}
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    putCliente: async (Cliente)=>{
        let conexion
        try {
             conexion = await connectDB()
            const [filas] = await conexion.query("UPDATE tbl_cliente SET nombre=?, apellido=?, IdGenero=?, fechaNacimiento=?, direccion=?, telefonoCliente=?, correoElectronico= ? where idCliente =?;",
            [Cliente.nombre,Cliente.apellido,Cliente.idGenero,Cliente.fechaNacimiento,Cliente.direccion,Cliente.telefono,Cliente.correo,Cliente.idCliente])
            conexion.end()
            return {estado:"ok"}
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    delCliente: async (Cliente)=>{
        let conexion
        try {
             conexion = await connectDB()
            const [filas] = await conexion.query("DELETE FROM tbl_cliente where idCliente = ?;",
           [Cliente.idCliente])
           conexion.end()
            return {estado:"ok"}
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    }
}