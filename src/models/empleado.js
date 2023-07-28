import { connectDB } from "../config/Conn.js";

export const ModEmpleados = {
    getEmpleados: async () => {
        try {
        const conexion = await connectDB();
          const [filas] = await conexion.query("select e.IdEmpleado, e.nombre, e.apellido, e.telefonoEmpleado, s.departamento, g.descripcion, e.numeroIdentidad from tbl_empleado as e inner join tbl_sucursal as s on e.IdSucursal=s.IdSucursal inner join tbl_genero as g on g.IdGenero=e.IdGenero ORDER BY IdEmpleado ASC;");
          return filas;
        } catch (error) {
          console.log(error);
          throw new Error("Error al obtener empleados");
        } 
    },
    getEmpleado: async(empleado)=>{
        try {
            const conexion = await connectDB()
            const [filas] = await conexion.query("Select * from tbl_empleado where IdEmpleado = ?;",
            [empleado.idEmpleado,] );
            return filas;
            
        } catch (error) {
            console.log(error);
            throw new Error("Error al eliminar el empleado")
        }
    },
    postInsertEmpleado: async (empleado) => {
        try {
        const conexion = await connectDB();
          const [filas] = await conexion.query("INSERT INTO  tbl_empleado (IdEmpleado, nombre, apellido, telefonoEmpleado, IdSucursal, IdGenero, numeroIdentidad) VALUES(?,?,?,?,?,?,?);",
            [
              empleado.id,
              empleado.nombre,
              empleado.apellido,
              empleado.telEmple,
              empleado.idSucursal,
              empleado.idGenero,
              empleado.numId,
            ]
          );
          return { id: filas.insertId };
        } catch (error) {
          console.log(error);
          throw new Error("Error al crear empleado");
        }
    },
    putUpdateEmpleado: async (empleado)=>{
        try {
          const conexion = await connectDB()
          const [filas] = await conexion.query("UPDATE tbl_empleado SET  nombre=?, apellido=?, telefonoEmpleado=?, IdSucursal=?, IdGenero=?, numeroIdentidad=? WHERE IdEmpleado=?;",
          [
            empleado.nombre,
            empleado.apellido,
            empleado.telEmple,
            empleado.idSucursal,
            empleado.idGenero,
            empleado.numId,
            empleado.IdEmpleado,
          ]
          );
          return {estado:"ok"}
        } catch (error) {
          console.log(error);
          throw new Error("Error al actualizar el empleado")
        }
    },
    delDeleteEmpleado: async(empleado)=>{
        try {
            const conexion = await connectDB()
            const [filas] = await conexion.query("DELETE FROM tbl_empleado where IdEmpleado = ?;",
          [
            empleado.IdEmpleado,
          ]
          );
            
        } catch (error) {
            console.log(error);
            throw new Error("Error al eliminar el empleado")
        }
    },
    getSucursal: async () => {
        try {
        const conexion = await connectDB();
          const [filas] = await conexion.query("SELECT * FROM tbl_sucursal");
          return filas;
        } catch (error) {
          console.log(error);
          throw new Error("Error al obtener sucursales");
        } 
    },
    getGenero: async () => {
        try {
        const conexion = await connectDB();
          const [filas] = await conexion.query("SELECT * FROM tbl_genero");
          return filas;
        } catch (error) {
          console.log(error);
          throw new Error("Error al obtener lista de géneros");
        } 
    },

    empleadoExist: async (empleado) => {
      try {
        const conexion = await connectDB();
        const [filas] = await conexion.query(
          "select e.IdEmpleado, e.nombre, e.apellido, e.telefonoEmpleado, e.numeroIdentidad from tbl_empleado as e where numeroIdentidad = ?;",
          [empleado.numId]
        );
  
        if (filas.length === 1) {
          return filas;
        } else {
          return false;
        }
      } catch (error) {
        console.log(error);
      }
    },
   

}
