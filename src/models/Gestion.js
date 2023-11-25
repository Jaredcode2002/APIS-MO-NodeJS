import { connectDB } from "../config/Conn.js";

export const ModGestion ={ 

getSucursal : async ()=> {
    let conexion
    try {
         conexion = await connectDB();
        const [filas]= await conexion.query("SELECT * FROM tbl_sucursal")
        conexion.end()
        return filas;

    } catch (error) {
        console.log(error);
        conexion.end()
    }
},

postInsertSucursal: async (sucursal)=> {
    let conexion
    try {
        conexion = await connectDB ();
        const [filas]=await conexion.query ("INSERT INTO  tbl_sucursal (departamento,ciudad,direccion,telefono) VALUES(?,?,?,?);",
        [
            sucursal.departamento,
            sucursal.ciudad,
            sucursal.direccion,
            sucursal.telefono,
        ]
        );
        conexion.end()
        return{estado:"OK"};
    } catch (error) {
        console.log(error);
        conexion.end()
    }
},

putInsertSucursal : async (sucursal)=>{
    let conexion
    try {
        conexion = await connectDB ();
        const[filas]=await conexion.query ("UPDATE tbl_sucursal SET departamento=?, ciudad=?, direccion=?, telefono=? where IdSucursal =?;",
        [
            sucursal.departamento,
            sucursal.ciudad,
            sucursal.direccion,
            sucursal.telefono,
            sucursal.IdSucursal,
        ]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        
    }
},


deleteSucursal: async (sucursal)=> {
    let conexion
try {
     conexion = await connectDB()
  const [filas] = await conexion.query ("DELETE FROM tbl_sucursal where IdSucursal = ?;",
  [
    sucursal.IdSucursal,
  ]
  );
  conexion.end()
  return {estado:"OK"}; 

} catch (error) {
    console.log(error);
    conexion.end()
    
}
},

}