import { connectDB } from "../config/Conn.js";

export const ModBitacora = {


//---------Llamado a toda la bitacora --------------

getBitacora : async ()=>  {
    let conexion
    try {
       conexion = await connectDB();
      const [filas] = await conexion.query("SELECT * FROM tbl_ms_bitacora")
      conexion.end()
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end()
      throw new Error("Error al obtener la bitacora");
    }
  },


//-----------LOGIN---------------

    postInsertLogin: async (idusuario)=>{
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,1,"Login","Inicio de sesión ")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },

//------Cierre de Secion -----

    postCerrarSesion: async (idusuario)=>{
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,1,"Cierre de sesión ","El usuario salio del sistema ")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },


//CONFIGURACION 
 //------Ingreso a las pantallas de Configuración----------
 postPantallaConfig: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Configuración","Se ingreso a la pantalla de Configuración")',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},

//------Ingreso a la pantalla de Lista de Bitacora----------
postListaBitacora: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Lista de Bitácora","Se ingreso al a la pantalla de Lista de Bitácora")',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},

//------Salir de la pantalla de Lista de Bitacora----------
postSalirLB: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la pantalla de Lista de Bitácora")',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},



   //---------CONTRASEÑA OLVIDADA-----------------
    postInsertContra: async (idusuario)=>{
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Login","Contraseña olvidada")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },

    //Envio de correo invalido 

    postCorreoInvalido: async (idusuario)=>{
        let conexion
        
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Recuperacion"," Ingreso un correo incorrecto")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },


    //-----------PREGUNTAS DE SEGURIDAD-----------
    //----Preguntas ---------

    postPrgunta: async (idusuario)=>{
         let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Pregunta Seguridad","El usuario ingreso a la pantalla de Preguntas de Seguridad")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            conexion.end()
            console.log(error);
            throw new Error("Error en consumir el API");
        }
    },

    //------------Respuestas-----------
    postRespuesta: async (idusuario)=>{
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Pregunta Seguridad","El usuario ingreso ingreso una respuesta a la pregunta seguridad")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },
    //---------------------Pantalla de Usuarios------------------

    //------Ingreso a las pantallas de usuario----------
    postInsertModEmpleado: async (idusuario)=>{
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Usuario","Se ingreso al a la pantalla de Usuarios")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },
    //---------Registro de Empleado-------------
    postInsertRegistroEmpleado: async (idusuario)=>{
        let conexion
         
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Registro de empleado","Se hizo un nuevo registro de empleados")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },

    //----------Salir de la pantalla de Registro de Empleado------------------
postBotonSalirRE: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Salir","Se salio de la pantalla Registro de Empleado")',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},

    //-----------Ver lista de los empleados--------
    postVerListaEmpleados: async (idusuario)=>{
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Ingreso a la Lista de Empleados")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },

     //----------Salir de la pantalla de Empleado------------------
    postBotonSalirLE: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Salir","Se salio de Lista de Empleados")',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},

    //-----------Actualizacion de datos en empleados--------
    postActualizarEmpleado: async (idusuario)=>{
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Actualizar empleado","Se realizaron actualizaciones en los datos del empleado")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },

    postErrorInsertEmpleado: async (idusuario)=>{
       let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Registro incompleto","Se dejaron campos vacios")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },


    postErrorInsertEmpleado: async (idusuario)=>{
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,6,"Registro incompleto","Se dejaron campos vacios")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },

//-----------Eliminar empleado--------
postEliminarEmpleado: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Eliminar empleado","El usuario elimino registros de empleados")',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},

//--------------USUARIOS-----------------------------
//--------Regsitro de Usuario---------------

postInsertUsuario:async(idusuario)=>{
  let conexion
  try {
    conexion = await connectDB();
    const [filas]=await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Usuario nuevo","Se agrego un nuevo usuario")',
    [idusuario.Id]
    );
    conexion.end()
    return{estado:"OK"}; 
  } catch (error) {
    console.log(error);
    conexion.end()
    throw new Error("Error en consumir el API")
  }
},

//----------Salir de la pantalla de Registro de Usuario------------------
    postBotonSalirRu: async (idusuario)=>{
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Salir","Se salio de la pantalla Registro de Usuario")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error)
            conexion.end();
            throw new Error("Error en consumir el API");
        }
    },

//-------------Lista de Usuario-------------
postListaUsuario:async(idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas]=await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Lista de usuario","El usuario ingreso a la Lista de Usuarios")',
        [idusuario.Id]
        );
        conexion.end()
        return{estado:"OK"};
    } catch (error) {
        console.log(error);
        conexion.end()
    throw new Error("Error en consumir el API")
    }
},

//----------Salir de la pantalla de Lista de Usuario------------------
postBotonSalirLU: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Salir","Se salio de la pantalla Lista de Usuarios")',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},

//---------Actaulizar Usuario-----------------
postActualizarUsuario:async(idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas]=await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Actualizar Usuario","Se realizo actualizaciones en Usuario")',
        [idusuario.Id]
        );
        conexion.end()
        return{estado:"OK"};
    } catch (error) {
        console.log(error);
        conexion.end()
    throw new Error("Error en consumir el API")
    }
},

//------------Eliminar Usuario---------------------
postEliminarUsuario:async(idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas]=await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Eliminar Usuario","Se elimino un usuario")',
        [idusuario.Id]
        );
        conexion.end()
        return{estado:"OK"};
    } catch (error) {
        console.log(error);
        conexion.end()
    throw new Error("Error en consumir el API")
    }
},


//----------MODULO DE VENTAS-------------------
//----------Ingreso a Venta------------
postModuloVenta: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Modulo de ventas","El usuario ingreso al modulo de ventas")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-----------------Registro de nueva Venta-------------------
postInsertVenta: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Nueva Venta","El usuario realizo una nueva venta")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-----------------Vista de la lista de ventas-------------------
postListaVenta: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Ver lista de venta","El usuario ingreso a la pantalla de Lista de Venta")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//----------Salir de la pantalla de lista de ventas------------------
postSalirListaVenta: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Salir","Se salio de la pantalla Lista de Ventas")',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},

//------------------Actualizacion de Venta---------------
postActualizacionVenta: async (idusuario)=>{
     let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Actualizacion venta","El usuario realizo una actualizacion en venta")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//----------------Eliminar Venta---------------------
postEliminarVenta: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Eliminar venta","El usuario elimino un registo de una venta")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//------------Ingreso a la pantalla de Garantia---------------
postPantallaGarantia: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Pantalla de Garantia","El usuario ingreso a Garantia")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//----------Registro de Garantia-------------
postInsertGarantia: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Registro de Garantia","El usuario registro una nueva garantia")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//--------------------Lista de Garantia-----------------
postVerListaGarantia: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Lista de Garantia","El usuario ingreso a la pantalla de Ver Lista de Garantia")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

postSalirListaGarantia :async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Salir","Se salio de la pantalla Lista de Garantia)',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},

//------------------------Actualizar datos de Garantia-----------------
postActualizarGarantia: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Actualizacion Garantia","El usuario realizo una actualizacion en Garantia")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-------------------Eliminar datos de Garantia-----------------
postEliminarGarantia: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Eliminar Garantia","El usuario elimino datos en garantia")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},
//---------------------DESCUENTO------------------------
//--------------------Ingreso a la pantalla de descuento------------------
postPantallaDescuento: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Pantalla de Descuento","El usuario ingreso a Descuento")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},
//---------------Agregar un nuevo descuento--------------------
postInsertDescuento: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Registro de Descuento","El usuario registro una nueva Descuento")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},
//--------------------Lista de Descuento-----------------
postVerListaDescuento: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Lista de Descuento","El usuario ingreso a la pantalla de Ver Lista Descuento")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-----------------------Salir de la lista de descuento---------------------------
postSalirListaDescuento:async (idusuario)=>{
    conexion = await connectDB();
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Salir","Se salio de la pantalla Lista de Descuento)',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},

//------------------------Actualizar datos de Descuento-----------------
postActualizarDescuento: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Actualizacion Descuento","El usuario realizo una actualizacion en Descuento")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-------------------Eliminar datos de Descuento-----------------
postEliminarDescuento: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Eliminar Descuento","El usuario elimino datos en Descuento")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//------------------Pantalla de Promociones--------------------------
//------------Ingreso a la pantalla de Promociones---------------
postPantallaPromocion: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Pantalla de Promociones","El usuario ingreso a Promociones")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},
//---------------Nueva Promocion--------------------
postInsertBPromocion: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Registro de Promocion","El usuario registro una nueva Promocion")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},
//--------------------Lista de Promocion-----------------
postVerListaPromocion: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Lista de Promocion","El usuario ingreso a la pantalla de Ver Lista Promocion")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-----------------------Salir de la lista de Promocion---------------------------
postSalirListaPromocion:async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Salir","Se salio de la pantalla Lista de Promocion)',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},

//------------------------Actualizar datos de Promocion----------------
postActualizarPromocion: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Actualizacion Promocion","El usuario realizo una actualizacion en Promocion")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-------------------Eliminar datos de Promocion-----------------
postEliminarPromocion: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Eliminar Promocion","El usuario elimino datos en Descuento")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-------------------------------Registro de Promocion del Producto---------------------------
//-------------------INGRESO A LA PANTALLA DE PROMOCION DEL PRODUCTO-----------------
postPantallaPromocionProducto: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Pantalla de Promocion del Producto","El usuario ingreso a Promocion del Producto")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},
//---------------Nueva Promocion del Producto--------------------
postInsertBPromocionProducto: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Registro de Promocion del Producto","El usuario registro una nueva Promocion del Producto")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},
//--------------------Lista de Promocion del Producto-----------------
postVerListaPromocionProducto: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Lista de Promocion del Producto","El usuario ingreso a la pantalla de Ver Lista Promocion del Producto")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-----------------------Salir de la lista de Promocion del Producto---------------------------
postSalirListaPromocionProducto:async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Salir","Se salio de la pantalla Lista de Promocion del Producto)',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},

//------------------------Actualizar datos de Promocion del Producto----------------
postActualizarPromocionProducto: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Actualizacion Promocion del Producto","El usuario realizo una actualizacion en Promocion del Producto")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-------------------Eliminar datos de Promocion del Producto-----------------
postEliminarPromocionProducto: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Eliminar Promocion","El usuario elimino datos en Descuento")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-------------------MODULO DE CLIENTES-----------------------------------------------
//------------PANTALLA DE CLIENTES-------------------
postPantallaCliente: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Pantalla de Clientes","El usuario ingreso a Promocion del Producto")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
}, 
//---------------------Ingresar un nuevo Cliente----------------
postInsertBCliente: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Registro de clientes","El usuario registro un nuevo cliente")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},
//---------------------VER LISTA DE CLIENTES-------------------------------------------
postVerListaClientes: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Lista de Clientes","El usuario ingreso a la pantalla de Ver Lista Clientes")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-----------------------Salir de la lista de Clientes---------------------------
postSalirListaClientes:async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Salir","Se salio de la pantalla Lista de Clientes")',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},

//------------------------Actualizar datos de Clientes----------------
postActualizarClientes: async (idusuario)=>{
    let conexion 
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Actualizacion Clientes","El usuario realizo una actualizacion en Promocion del Clientes")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-------------------Eliminar datos de Clientes-----------------
postEliminarClientes: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Eliminar Clientes","El usuario elimino datos en Clientes")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-----------------------DATOS DE EXPEDIENTE-------------------------
postInsertBExpediente: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Registro de Expediente","El usuario registro un nuevo Expediente")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//--------------------------EXPEDIENTE DETALLE---------------------
postInsertBExpedienteDetalle: async (idusuario)=>{
    let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Registro de Expediente Detalle","El usuario registro un Expediente Detalle")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-------------------NUEVO DIAGNOSTICO----------------------
postInsertBDiagnostico: async (idusuario)=>{
 let conexion
    try {
        conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Registro de Diagnostico","El usuario registro un nuevo Diagnostico")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//--------------PERFIL-----------------
postIngresoPerfil: async (idusuario)=>{
    let conexion
       try {
           conexion = await connectDB();
           const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,11,"Ingreso a Pefil","El usuario ingreso a Mi Perfil")',
           idusuario.Id,
           );
           conexion.end()
           return {estado:"OK"}; 
       } catch (error) {
           console.log(error);
           conexion.end()
           throw new Error("Error al crear el API");
       }
   },

   postContrModifi: async (idusuario)=>{
    let conexion
       try {
           conexion = await connectDB();
           const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,11,"Moficacion","El usuario modifico las preguntas de seguridad")',
           idusuario.Id,
           );
           conexion.end()
           return {estado:"OK"}; 
       } catch (error) {
           console.log(error);
           conexion.end()
           throw new Error("Error al crear el API");
       }
   },

   postPreModifi: async (idusuario)=>{
    let conexion
       try {
           conexion = await connectDB();
           const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,11,"Moficacion","El usuario modifico su contraseña")',
           idusuario.Id,
           );
           conexion.end()
           return {estado:"OK"}; 
       } catch (error) {
           console.log(error);
           conexion.end()
           throw new Error("Error al crear el API");
       }
   },

   postSalirPerfil: async (idusuario)=>{
    let conexion
       try {
           conexion = await connectDB();
           const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,11,"Salir de perfil","El usuario salio de Mi Perfil")',
           idusuario.Id,
           );
           conexion.end()
           return {estado:"OK"}; 
       } catch (error) {
           console.log(error);
           conexion.end()
           throw new Error("Error al crear el API");
       }
   },


   //-------------------RECORDATORIOS-------------------------
   postNuevaCita: async (idusuario)=>{
    let conexion
       try {
           conexion = await connectDB();
           const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,5,"Nueva Cita","El usuario agrego una nueva cita")',
           idusuario.Id,
           );
           conexion.end()
           return {estado:"OK"}; 
       } catch (error) {
           console.log(error);
           conexion.end()
           throw new Error("Error al crear el API");
       }
   },

   postActualizarCita: async (idusuario)=>{
    let conexion
       try {
           conexion = await connectDB();
           const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,5,"Nueva Cita","El usuario agrego una nueva cita")',
           idusuario.Id,
           );
           conexion.end()
           return {estado:"OK"}; 
       } catch (error) {
           console.log(error);
           conexion.end()
           throw new Error("Error al crear el API");
       }
   },

   postBorrarCita: async (idusuario)=>{
    let conexion
       try {
           conexion = await connectDB();
           const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,5,"Nueva Cita","El usuario agrego una nueva cita")',
           idusuario.Id,
           );
           conexion.end()
           return {estado:"OK"}; 
       } catch (error) {
           console.log(error);
           conexion.end()
           throw new Error("Error al crear el API");
       }
   },
//----------------MANTENIMIENTO------------------------------------
//-------------------NUEVA SUCURSAL---------------------
postInsertBsucursal: async (idusuario)=>{
    let conexion
       try {
           conexion = await connectDB();
           const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion Sucursal","El usuario realizo una actualizacion en Sucursal")',
           idusuario.Id,
           );
           conexion.end()
           return {estado:"OK"}; 
       } catch (error) {
           console.log(error);
           conexion.end()
           throw new Error("Error al crear el API");
       }
   },


/////////////////////NODELO///////////////////////
//---------------Nuevo Nodelo--------------------
postInsertBModelo: async (idusuario)=>{
let conexion
    try {
        const conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Registro de Modelo","El usuario registro unm nuevo Modelo")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},


//-----------------------Salir de la lista de Modelo---------------------------
postSalirListaModelo:async (idusuario)=>{
    let conexion

    try {
        const conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la Lista de Modelo")',
        [idusuario.Id]
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error en consumir el API");
    }
},

//------------------------Actualizar datos de Modelo----------------
postActualizarModelo: async (idusuario)=>{
let conexion
    try {
        const conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion Modelo","El usuario realizo una actualizacion en Modelo")',
        idusuario.Id,
        );
        conexion.end()
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        conexion.end()
        throw new Error("Error al crear el API");
    }
},

//-------------------Eliminar datos de Modelo-----------------
postEliminarModelo: async (idusuario)=>{
    
    try {
        const conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar Modelo","El usuario elimino datos en Modelo")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
},

/////////////////////NODELO///////////////////////
//---------------Nuevo Nodelo--------------------
postInsertBMarca: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Registro de Marca","El usuario registro unm nuevo Marca")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al crear el API");
        }
    },
    
    
    //-----------------------Salir de la lista de Marca---------------------------
    postSalirListaMarca:async (idusuario)=>{
        let conexion
    
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la Lista de Marca")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },
    
    //------------------------Actualizar datos de Marca----------------
    postActualizarMarca: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion Marca","El usuario realizo una actualizacion en Marca")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al crear el API");
        }
    },
    
    //-------------------Eliminar datos de Marca-----------------
    postEliminarMarca: async (idusuario)=>{
        
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar Marca","El usuario elimino datos en Marca")',
            idusuario.Id,
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error al crear el API");
        }
    }, 
    

/////////////////////NODELO///////////////////////
//---------------Nuevo Nodelo--------------------
postInsertBMetodopago: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Registro de Metodo pago","El usuario registro unm nuevo Metodo pago")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al crear el API");
        }
    },
    
    
    //-----------------------Salir de la lista de Metodo pago---------------------------
    postSalirListaMetodopago:async (idusuario)=>{
        let conexion
    
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la Lista de Metodo pago")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },
    
    //------------------------Actualizar datos de Metodo pago----------------
    postActualizarMetodopago: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion Metodo pago","El usuario realizo una actualizacion en Metodo pago")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al crear el API");
        }
    },
    
    //-------------------Eliminar datos de Metodo pago-----------------
    postEliminarMetodopago: async (idusuario)=>{
        
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar Metodo pago","El usuario elimino datos en Metodo pago")',
            idusuario.Id,
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error al crear el API");
        }
    }, 
    
    /////////////////////Departamento///////////////////////
//---------------Nuevo Departamento--------------------
postInsertBDepartamento: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Registro de Departamento","El usuario registro unm nuevo Departamento")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al crear el API");
        }
    },
    
    
    //-----------------------Salir de la lista de Departamento---------------------------
    postSalirListaDepartamento:async (idusuario)=>{
        let conexion
    
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la Lista de Departamento")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error en consumir el API");
        }
    },
    
    //------------------------Actualizar datos de Departamento----------------
    postActualizarDepartamento: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion Departamento","El usuario realizo una actualizacion en Departamento")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al crear el API");
        }
    },
    
    //-------------------Eliminar datos de Departamento-----------------
    postEliminarDepartamento: async (idusuario)=>{
        
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar Departamento","El usuario elimino datos en Departamento")',
            idusuario.Id,
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error al crear el API");
        }
    }, 
    


}