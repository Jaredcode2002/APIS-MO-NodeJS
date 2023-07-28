import { connectDB } from "../config/Conn.js";

export const ModBitacora = {


//---------Llamado a toda la bitacora --------------

getBitacora : async ()=>  {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query("SELECT * FROM tbl_ms_bitacora")
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener la bitacora");
    }
  },


//-----------LOGIN---------------

    postInsertLogin: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,1,"Login","Inicio de sesión ")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

//------Cierre de Secion -----

    postCerrarSesion: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,1,"Cierre de sesión ","El usuario salio del sistema ")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },


//CONFIGURACION 
 //------Ingreso a las pantallas de Configuración----------
 postPantallaConfig: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Configuración","Se ingreso a la pantalla de Configuración")',
        [idusuario.Id]
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error en consumir el API");
    }
},

//------Ingreso a la pantalla de Lista de Bitacora----------
postListaBitacora: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Lista de Bitácora","Se ingreso al a la pantalla de Lista de Bitácora")',
        [idusuario.Id]
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error en consumir el API");
    }
},

//------Salir de la pantalla de Lista de Bitacora----------
postSalirLB: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la pantalla de Lista de Bitácora")',
        [idusuario.Id]
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error en consumir el API");
    }
},



   //---------CONTRASEÑA OLVIDADA-----------------
    postInsertContra: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Login","Contraseña olvidada")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

    //Envio de correo invalido 

    postCorreoInvalido: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Recuperacion"," Ingreso un correo incorrecto")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },


    //-----------PREGUNTAS DE SEGURIDAD-----------
    //----Preguntas ---------

    postPrgunta: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Pregunta Seguridad","El usuario ingreso a la pantalla de Preguntas de Seguridad")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

    //------------Respuestas-----------
    postRespuesta: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Pregunta Seguridad","El usuario ingreso ingreso una respuesta a la pregunta seguridad")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },
    //---------------------Pantalla de Usuarios------------------

    //------Ingreso a las pantallas de usuario----------
    postInsertModEmpleado: async (idusuario)=>{
        const conexion = await connectDB();
        try {

            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Usuario","Se ingreso al modulo de Usuarios")',

            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },
    //---------Registro de Empleado-------------
    postInsertRegistroEmpleado: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Registro de empleado","Se hizo un nuevo registro de empleados")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

    //----------Salir de la pantalla de Registro de Empleado------------------
postBotonSalirRE: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Salir","Se salio de la pantalla Registro de Empleado")',
        [idusuario.Id]
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error en consumir el API");
    }
},

    //-----------Ver lista de los empleados--------
    postVerListaEmpleados: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Ingreso a la Lista de Empleados")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

     //----------Salir de la pantalla de Empleado------------------
    postBotonSalirLE: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Salir","Se salio de Lista de Empleados")',
        [idusuario.Id]
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error en consumir el API");
    }
},

    //-----------Actualizacion de datos en empleados--------
    postActualizarEmpleado: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Actualizar empleado","Se realizaron actualizaciones en los datos del empleado")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

    postErrorInsertEmpleado: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Registro incompleto","Se dejaron campos vacios")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },


    postErrorInsertEmpleado: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,6,"Registro incompleto","Se dejaron campos vacios")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

//-----------Eliminar empleado--------
postEliminarEmpleado: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Eliminar empleado","El usuario elimino registros de empleados")',
        [idusuario.Id]
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error en consumir el API");
    }
},

//--------------USUARIOS-----------------------------
//--------Regsitro de Usuario---------------

postInsertUsuario:async(idusuario)=>{
  const conexion = await connectDB();
  try {
    const [filas]=await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Usuario nuevo","Se agrego un nuevo usuario")',
    [idusuario.Id]
    );
    return{estado:"OK"}; 
  } catch (error) {
    console.log(error);
    throw new Error("Error en consumir el API")
  }
},

//----------Salir de la pantalla de Registro de Usuario------------------
    postBotonSalirRu: async (idusuario)=>{
        const conexion = await connectDB();
        try {
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Salir","Se salio de la pantalla Registro de Usuario")',
            [idusuario.Id]
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

//-------------Lista de Usuario-------------
postListaUsuario:async(idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas]=await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Lista de usuario","El usuario ingreso a la Lista de Usuarios")',
        [idusuario.Id]
        );
        return{estado:"OK"};
    } catch (error) {
        console.log(error);
    throw new Error("Error en consumir el API")
    }
},

//----------Salir de la pantalla de Lista de Usuario------------------
postBotonSalirLU: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Salir","Se salio de la pantalla Lista de Usuarios")',
        [idusuario.Id]
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error en consumir el API");
    }
},

//---------Actaulizar Usuario-----------------
postActualizarUsuario:async(idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas]=await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Actualizar Usuario","Se realizo actualizaciones en Usuario")',
        [idusuario.Id]
        );
        return{estado:"OK"};
    } catch (error) {
        console.log(error);
    throw new Error("Error en consumir el API")
    }
},

//------------Eliminar Usuario---------------------
postEliminarUsuario:async(idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas]=await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Eliminar Usuario","Se elimino un usuario")',
        [idusuario.Id]
        );
        return{estado:"OK"};
    } catch (error) {
        console.log(error);
    throw new Error("Error en consumir el API")
    }
},


//----------MODULO DE VENTAS-------------------
//----------Ingreso a Venta------------
postModuloVenta: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,7,"Modulo de ventas","El usuario ingreso al modulo de ventas")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//-----------------Registro de Venta-------------------
postInsertVenta: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Nueva Venta","El usuario realizo una nueva venta")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//-----------------Vista de la lista de ventas-------------------
postListaVenta: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Ver lista de venta","El usuario ingreso a la pantalla de Lista de Venta")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//------------------Actualizacion de Venta---------------
postActualizacionVenta: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,10,"Actualizacion venta","El usuario realizo una actualizacion en venta")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//----------------Eliminar Venta---------------------
postEliminarVenta: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,11,"Eliminar venta","El usuario elimino un registo de una venta")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//------------Ingreso a la pantalla de Garantia---------------
postPantallaGarantia: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,12,"Pantalla de Garantia","El usuario ingreso a Garantia")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//----------Registro de Garantia-------------
postInsertGarantia: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,13,"Registro de Garantia","El usuario registro una nueva garantia")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//--------------------Lista de Garantia-----------------
postVerListaGarantia: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,14,"Lista de Garantia","El usuario ingreso a la pantalla de Ver Lista de Garantia")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//------------------------Actualizar datos de Garantia-----------------
postActualizarGarantia: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,15,"Actualizacion Garantia","El usuario realizo una actualizacion en Garantia")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

//-------------------Eliminar datos de Garantia-----------------
postEliminarGarantia: async (idusuario)=>{
    const conexion = await connectDB();
    try {
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,16,"Eliminar Garantia","El usuario elimino datos en garantia")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

}