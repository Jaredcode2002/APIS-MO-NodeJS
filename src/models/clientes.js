import { connectDB } from "../config/Conn.js"

export const ModClientes = {
    getClientes: async ()=>{
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("SELECT c.idCliente, c.nombre,c.apellido, g.descripcion as genero, c.fechaNacimiento, c.direccion, c.telefonoCliente as Telefono, c.correoElectronico as Email, c.COD_CLIENTE from tbl_cliente as c inner join tbl_genero as g on c.IdGenero=g.IdGenero ORDER BY c.COD_CLIENTE DESC;")
            conexion.end()
            return filas
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    getClienteExiste: async (Cliente)=>{
        let conexion
        conexion = await connectDB();
       try {
           const [filas] = await conexion.query("SELECT c.idCliente, c.nombre,c.apellido, g.descripcion as genero, c.fechaNacimiento, c.direccion, c.telefonoCliente as Telefono, c.correoElectronico as Email, c.COD_CLIENTE from tbl_cliente as c inner join tbl_genero as g on c.IdGenero=g.IdGenero where c.idCliente= ? or c.correoElectronico= ? or c.telefonoCliente= ? ;",
               [
                   Cliente.idCliente,
                   Cliente.correo,
                   Cliente.telefono
               ]
           );
           conexion.end()
           if (filas.legth>=1) {
            return true
           } else {
            return false
           }
       } catch (error) {
           console.log(error);
           conexion.end()
           throw new Error("Error al crear un nuevo proveedor");
       }
    },
    postCliente: async (Cliente)=>{
        let conexion
         conexion = await connectDB();
         if (await ModClientes.getClienteExiste(Cliente)==false) {
            try {
                const [filas] = await conexion.query("INSERT INTO tbl_cliente (idCliente,nombre,apellido,IdGenero,fechaNacimiento,direccion,telefonoCliente,correoElectronico,COD_CLIENTE) VALUES(?,?,?,?,?,?,?,?,?);",
                [Cliente.idCliente,Cliente.nombre,Cliente.apellido,Cliente.idGenero,Cliente.fechaNacimiento,Cliente.direccion,Cliente.telefono,Cliente.correo,Cliente.COD_CLIENTE])
                conexion.end()
                return { estado: "OK" };
            } catch (error) {
                conexion.end()
                return false
                throw new Error("Error al crear un nuevo cliente");
            }
         }else{
            return false
         }
       
    },
    putCliente: async (Cliente)=>{
        let conexion
        try {
             conexion = await connectDB()
            const [filas] = await conexion.query("UPDATE tbl_cliente SET nombre=?, apellido=?, IdGenero=?, fechaNacimiento=?, direccion=?, telefonoCliente=?, correoElectronico= ?, COD_CLIENTE=? where idCliente =?;",
            [Cliente.nombre,Cliente.apellido,Cliente.idGenero,Cliente.fechaNacimiento,Cliente.direccion,Cliente.telefono,Cliente.correo,Cliente.idCliente, Cliente.COD_CLIENTE])
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