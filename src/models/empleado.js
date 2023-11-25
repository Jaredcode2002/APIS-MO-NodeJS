import { connectDB } from "../config/Conn.js";

export const ModEmpleados = {

  getEmpleados: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("select e.IdEmpleado, e.nombre, e.apellido, e.telefonoEmpleado, e.IdSucursal, s.direccion, g.IdGenero, g.descripcion, e.numeroIdentidad, e.fechaIngreso, e.fechaSalida, e.fechaCumpleanos, e.estado from tbl_empleado as e inner join tbl_sucursal as s on e.IdSucursal=s.IdSucursal INNER JOIN tbl_departamento as d on s.`IdDepartamento`=d.`IdDepartamento`inner join tbl_genero as g on g.IdGenero=e.IdGenero where e.estado = 'Activo' ORDER BY IdEmpleado DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  getEmpleadosInactivos: async () => {
    let conexion
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query("select e.IdEmpleado, e.nombre, e.apellido, e.telefonoEmpleado, e.IdSucursal, s.direccion, g.IdGenero, g.descripcion, e.numeroIdentidad, e.fechaIngreso, e.fechaSalida, e.fechaCumpleanos, e.estado from tbl_empleado as e inner join tbl_sucursal as s on e.IdSucursal=s.IdSucursal INNER JOIN tbl_departamento as d on s.`IdDepartamento`=d.`IdDepartamento`inner join tbl_genero as g on g.IdGenero=e.IdGenero  where e.estado != 'Activo' ORDER BY IdEmpleado DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    }
  },
  empleadoExist: async (empleado) => {
    let conexion
    conexion = await connectDB();
    try {
      const [filas] = await conexion.query("select e.IdEmpleado, e.nombre, e.apellido, e.telefonoEmpleado, e.IdSucursal, s.direccion, g.IdGenero, g.descripcion, e.numeroIdentidad, e.fechaIngreso, e.fechaSalida, e.fechaCumpleanos, e.estado from tbl_empleado as e inner join tbl_sucursal as s on e.IdSucursal=s.IdSucursal INNER JOIN tbl_departamento as d on s.`IdDepartamento`=d.`IdDepartamento`inner join tbl_genero as g on g.IdGenero=e.IdGenero where e.numeroIdentidad= ? or e.telefonoEmpleado= ?;",
        [
          empleado.numId,
          empleado.telEmple,
        ]
      );
      conexion.end()
      if (filas.legth >= 1) {
        return true
      } else {
        return false
      }
    } catch (error) {
      console.log(error);
      conexion.end()
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
    }
  },
  postInsertEmpleado: async (empleado) => {
    let conexion
    conexion = await connectDB();
    if (await ModEmpleados.empleadoExist(empleado) == false) {
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
        return { estado: "OK" };
      } catch (error) {
        console.log(error);
        conexion.end()
      }
    } else {
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
    }
  },

}