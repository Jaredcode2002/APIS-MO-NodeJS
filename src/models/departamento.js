import { connectDB } from "../config/Conn.js";

export const ModDepartamento = {
  
  getDeptos: async () => {
    let conexion
    try {
    conexion = await connectDB();
      const [filas] = await conexion.query("SELECT de.IdDepartamento, de.departamento, CASE WHEN de.estado = 'A' THEN 'Activo' WHEN de.estado = 'I' THEN 'Inactivo' ELSE 'Desconocido' END AS estado FROM tbl_departamento AS de WHERE de.estado = 'A' ORDER BY de.IdDepartamento DESC;");
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
    } 
  },

  getDepartamentosInactivos:async()=>
  {
      try {
          const conexion = await connectDB();
          const [filas] = await conexion.query("SELECT de.IdDepartamento, de.departamento, CASE WHEN de.estado = 'A' THEN 'Activo' WHEN de.estado = 'I' THEN 'Inactivo' ELSE 'Desconocido' END AS estado FROM tbl_departamento AS de WHERE de.estado != 'A'ORDER BY de.IdDepartamento DESC;");
          return filas;
      
      } catch (error) {
          console.log(error);
      }
  },

  getDepartamnetoExiste: async (departamento) =>
    {
      let conexion
      conexion = await connectDB();
      try {
        const [filas]=await conexion.query ("Select * from tbl_departamento where departamento=?;", 
        [
          departamento.departamento
        ]);
        conexion.end()
        if (filas.length>=1)
        {
          return true 
        } else {
              return false
        }
      } catch (error) {
        console.long (error);
        conexion.end()
        
      }
    },

  postInsertDepto: async (departamento) => {
    let conexion
    conexion=await connectDB();
    if (await ModDepartamento.getDepartamnetoExiste(departamento)==false)
    {
      try {
        conexion = await connectDB();
          const [filas] = await conexion.query("insert into tbl_departamento (departamento,estado) values (?,?);",
            [
              departamento.departamento,
              departamento.estado,
            ]
          );
          conexion.end()
          return { estado: "OK"};
        } catch (error) {
          console.log(error);
          conexion.end()
          return false
        }
    } else{
      return false
    }
  },
  putUpdateDepto: async (departamento)=>{
    let conexion
    if (await ModDepartamento.getDepartamnetoExiste(departamento)==false) {
      try {
        conexion = await connectDB()
       const [filas] = await conexion.query("UPDATE tbl_departamento set departamento = ?, estado=? WHERE IdDepartamento= ?;",
       [
         departamento.departamento,
         departamento.estado,
         departamento.IdDepartamento,
       ]
       )
       conexion.end()
       return {estado:"ok"}
     } catch (error) {
       console.log(error);
       conexion.end()
     }
    } else {
      return false;
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
    }
  },
};