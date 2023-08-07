import { connectDB } from "../config/Conn.js";

export const ModDepartamento = {
  
  getDeptos: async () => {
    let conexion
    try {
    conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_departamento");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener los departamentos");
    } 
  },

  postInsertDepto: async (departamento) => {
    let conexion
    try {
    conexion = await connectDB();
      const [filas] = await conexion.query("insert into tbl_departamento (departamento) values (?);",
        [
          departamento.departamento,
        ]
      );
      conexion.end()
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al crear depto");
    }
  },
  putUpdateDepto: async (departamento)=>{
    let conexion
      try {
         conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_departamento set departamento = ? WHERE IdDepartamento= ?;",
        [
          departamento.departamento,
          departamento.IdDepartamento,
        ]
        )
        conexion.end()
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al actualizar la depto")
      }
  },
  delDepto: async (departamento) => {
    let conexion
    try {
      conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_departamento WHERE IdDepartamento = ?;", 
      [
        departamento.IdDepartamento,
      ]
      );
      conexion.end()
      return { estado:"OK" };
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al eliminar el departamento");
    }
  },
};