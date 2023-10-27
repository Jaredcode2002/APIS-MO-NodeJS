import { connectDB } from "../config/Conn.js";

export const ModProveedor = {

    getProveedores: async () => {
        let conexion
        try {
             conexion = await connectDB();
            const [filas] = await conexion.query("SELECT p.IdProveedor, p.CiaProveedora, p.encargado, pa.Pais, c.Ciudad, p.Productos, p.direccion, p.telefono, p.correoElectronico FROM tbl_proveedor as p inner join tbl_pais as pa on p.IdPais=pa.IdPais inner join tbl_ciudad as c on p.IdCiudad=c.IdCiudad;")
            conexion.end()
            return filas;
        } catch (error) {
            console.long(error);
            conexion.end()
            throw new error("Error al consumir el API")
        }
    },

    getProveedor: async (proveedor)=>{
        let conexion
        conexion = await connectDB();
       try {
           const [filas] = await conexion.query("SELECT p.IdProveedor, p.CiaProveedora, p.encargado, pa.Pais, c.Ciudad, p.Productos, p.direccion, p.telefono, p.correoElectronico FROM tbl_proveedor as p inner join tbl_pais as pa on p.IdPais=pa.IdPais inner join tbl_ciudad as c on p.IdCiudad=c.IdCiudad where p.`CiaProveedora` = ? or p.`correoElectronico` = ?",
               [
                   proveedor.CiaProveedora,
                   proveedor.correoElectronico,
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
    

    postInsertProveedor: async (proveedor) => {
        let conexion
         conexion = await connectDB();
         if (await ModProveedor.getProveedor(proveedor)==false) {
            try {
                const [filas] = await conexion.query("INSERT INTO tbl_proveedor(CiaProveedora,encargado,IdPais,IdCiudad,Productos,direccion,telefono,correoElectronico)  VALUES(?,?,?,?,?,?,?,?);",
                    [
                        proveedor.CiaProveedora,
                        proveedor.encargado,
                        proveedor.IdPais,
                        proveedor.IdCiudad,
                        proveedor.Productos,
                        proveedor.direccion,
                        proveedor.telefono,
                        proveedor.correoElectronico,
                    ]
                );
                conexion.end()
                return { estado: "OK" };
            } catch (error) {
                conexion.end()
                return false
                throw new Error("Error al crear un nuevo proveedor");
            }
         }else{
            return false
         }
       
    },

    putUpdateProveedor: async (proveedor) => {
        let conexion
         conexion = await connectDB();
        try {
            const [filas] = await conexion.query("UPDATE tbl_proveedor  SET  CiaProveedora = ? ,encargado= ?,IdPais= ?,IdCiudad= ?,Productos= ?,direccion= ?,telefono= ?,correoElectronico= ?  WHERE IdProveedor=?;",
                [
                    proveedor.CiaProveedora,
                    proveedor.encargado,
                    proveedor.IdPais,
                    proveedor.IdCiudad,
                    proveedor.Productos,
                    proveedor.direccion,
                    proveedor.telefono,
                    proveedor.correoElectronico,
                    proveedor.IdProveedor,
                ]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al actualizar el proveedor");
        }
    },

    deleteProveedor: async (proveedor) => {
        let conexion
        try {
             conexion = await connectDB()
            const [filas] = await conexion.query("DELETE FROM tbl_proveedor where IdProveedor=?;",
                [
                    proveedor.IdProveedor,
                ]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al eliminar el proveedor");
        }
    },


}