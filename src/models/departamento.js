import { connectDB } from "../config/Conn.js";

export const ModDepartamento = {
  
  getDeptos: async () => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("select * from tbl_departamento");
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener los departamentos");
    } 
  },

  postInsertDepto: async (departamento) => {
    try {
    const conexion = await connectDB();
      const [filas] = await conexion.query("insert into tbl_departamento (departamento) values (?);",
        [
          departamento.departamento,
        ]
      );
      return { id: filas.insertId };
    } catch (error) {
      console.log(error);
      throw new Error("Error al crear depto");
    }
  },
  putUpdateDepto: async (departamento)=>{
      try {
        const conexion = await connectDB()
        const [filas] = await conexion.query("UPDATE tbl_departamento set departamento = ? WHERE IdDepartamento= ?;",
        [
          departamento.departamento,
          departamento.IdDepartamento,
        ]
        )
        return {estado:"ok"}
      } catch (error) {
        console.log(error);
        throw new Error("Error al actualizar la depto")
      }
  },
  delDepto: async (departamento) => {
    try {
      const conexion = await connectDB();
      await conexion.query("DELETE FROM tbl_departamento WHERE IdDepartamento = ?;", [
        departamento.IdMarca,
      ]);
      return { state: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al eliminar la depto");
    }
  },
};
