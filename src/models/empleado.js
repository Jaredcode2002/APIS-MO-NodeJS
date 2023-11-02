import { connectDB } from "../config/Conn.js";

export const ModEmpleados = {

  getEmpleados: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("select e.IdEmpleado, e.nombre, e.apellido, e.telefonoEmpleado, s.direccion, g.descripcion, e.numeroIdentidad, e.fechaIngreso, e.fechaSalida, e.fechaCumpleanos, e.estado from tbl_empleado as e inner join tbl_sucursal as s on e.IdSucursal=s.IdSucursal INNER JOIN tbl_departamento as d on s.`IdDepartamento`=d.`IdDepartamento`inner join tbl_genero as g on g.IdGenero=e.IdGenero ORDER BY IdEmpleado DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener empleados");
    }
  },
  getEmpleado: async (empleado) => {
    let conexion
    conexion = await connectDB();
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("Select * from tbl_empleado where telefonoEmpleado = ?;",
        [empleado.telEmple]);
      conexion.end()
      if (filas.legth >= 1) {
        return true
      } else {
        return false
      }

    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar el empleado")
    }
  },
  postInsertEmpleado: async (empleado) => {
    let conexion
    conexion = await connectDB();
    if(await ModEmpleados.getEmpleado(empleado)== false){
    try { //Se agrega a la sentencia los campos nuevos al igual que en el arreglo
      const [filas] = await conexion.query("INSERT INTO  tbl_empleado (IdEmpleado, nombre, apellido, telefonoEmpleado, IdSucursal, IdGenero, numeroIdentidad, fechaIngreso, fechaSalida, fechaCumpleanos, estado) VALUES(?,?,?,?,?,?,?,?,?,?,?);",
        [

          empleado.id,
          empleado.nombre,
          empleado.apellido,
          empleado.telEmple,
          empleado.idSucursal,
          empleado.idGenero,
          empleado.numId,
          empleado.fechaIngreso,
          empleado.fechaSalida,
          empleado.fechaCumpleanos,
          empleado.estado
        ]
      );
      conexion.end()
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al crear empleado");
    }}else{
      return false
   }
  },
  putUpdateEmpleado: async (empleado) => {
    let conexion
    try {
      conexion = await connectDB() //Se agrega de igual manera en el query de actualizacion.
      const [filas] = await conexion.query("UPDATE tbl_empleado SET  nombre=?, apellido=?, telefonoEmpleado=?, IdSucursal=?, IdGenero=?, numeroIdentidad=?, fechaIngreso=?, fechaSalida=?, fechaCumpleanos=?, estado=? WHERE IdEmpleado=?;",
        [
          empleado.nombre,
          empleado.apellido,
          empleado.telEmple,
          empleado.idSucursal,
          empleado.idGenero,
          empleado.numId,
          empleado.fechaIngreso,
          empleado.fechaSalida,
          empleado.fechaCumpleanos,
          empleado.estado,
          empleado.IdEmpleado,
        ]
      );
      conexion.end()
      return { estado: "ok" }
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al actualizar el empleado")
    }
  },
  delDeleteEmpleado: async (empleado) => {
    let conexion
    try {
      conexion = await connectDB()
      const [filas] = await conexion.query("DELETE FROM tbl_empleado where IdEmpleado = ?;",
        [
          empleado.IdEmpleado,
        ]
      );
      conexion.end()
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar el empleado")
    }
  },
  getSucursal: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("SELECT * FROM tbl_sucursal");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener sucursales");
    }
  },
  getGenero: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("SELECT * FROM tbl_genero");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener lista de géneros");
    }
  },

  empleadoExist: async (empleado) => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query(
        "select e.IdEmpleado, e.nombre, e.apellido, e.telefonoEmpleado, e.numeroIdentidad from tbl_empleado as e where numeroIdentidad = ?;",
        [empleado.numId]
      );
      conexion.end()
      if (filas.length === 1) {
        return filas;
      } else {
        return false;
      }
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },


}