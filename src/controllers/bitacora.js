import { ModBitacora } from "../models/bitacora.js";

export const ContrBitacora = {

//----------Llamado a toda la bitacora---------------------

getBitacora: async (req,res)=> {

    const bitacora = await ModBitacora.getBitacora()
    res.json(bitacora)
   
},

//-----------LOGIN---------------

    postInsertLogin : async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postInsertLogin({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

//------Cierre de Secion -----


    postCerrarSesion : async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postCerrarSesion ({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

//CONFIGURACION 
 //------Ingreso a las pantallas de Configuración----------
 postPantallaConfig: async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postPantallaConfig({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

//------Ingreso a la pantalla de Lista de Bitacora----------
postListaBitacora: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postListaBitacora({Id});

        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},


//------Salir de la pantalla de Lista de Bitacora----------
postSalirLB: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirLB({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},


     //---------RECUPERACION DE CONTRASEÑA-----------------

    postInsertContra : async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postInsertContra({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },
//Envio de correo invalido 

    postCorreoInvalido : async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postCorreoInvalido({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

    //-----------PREGUNTAS DE SEGURIDAD-----------
    //----Preguntas ---------

    postPrgunta : async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postPrgunta({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

    //------------Respuestas-----------
    postRespuesta : async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postRespuesta({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },


 //---------------------MODULO EMPLEADO------------------
 //------Ingreso al modulo de empleados----------
 postInsertModEmpleado : async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertModEmpleado({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//---------Registro de Empleado-------------
    postInsertRegistroEmpleado : async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postInsertRegistroEmpleado({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

//----------Salir de la pantalla de Registro de Empleado------------------
postBotonSalirRE: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postBotonSalirRE({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }

},

//--------- Ver lista de empleados-------------
    postVerListaEmpleados : async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postVerListaEmpleados({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },
//----------Salir de la pantalla de Lista de Empleados ------------------
postBotonSalirLE: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postBotonSalirLE({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }

},
    //-----------Actualizacion de datos en empleados--------
    postActualizarEmpleado: async (req,res)=> {
        try {
            const{Id}=req.body;
            const result = await ModBitacora.postActualizarEmpleado({Id});
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

        //-----------Actualizacion error --------
        postErrorInsertEmpleado: async (req,res)=> {
            try {
                const{Id}=req.body;
                const result = await ModBitacora.postErrorInsertEmpleado({Id});
                res.status(201).json({ id: result.id });
            } catch (error) {
                console.log(error);
            }
        },

//-----------Eliminar empleado--------

postEliminarEmpleado: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarEmpleado({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------USUARIO--------------

//------------------Insertar Usuario----------------
postInsertUsuario:async(req,res)=> {
    try {
        const{Id}=req.body;
        const result=await ModBitacora.postInsertUsuario({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//----------Salir de la pantalla de Registro de Usuario------------------
postBotonSalirRu: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postBotonSalirRu({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }

},

//-------------Lista de Usuario------------
postListaUsuario:async(req,res)=>{
    try {
        const{Id}=req.body;
        const result=await ModBitacora.postListaUsuario({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error)
    }
},
//----------Salir de la pantalla de lista de Usuario------------------
postBotonSalirLU: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postBotonSalirLU({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }

},
//---------Actualizar Usuario-----------------
postActualizarUsuario:async(req,res)=>{
    try {
        const{Id}=req.body;
        const result=await ModBitacora.postActualizarUsuario({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error)
    }
},

//------------Eliminar Usuario---------------------
postEliminarUsuario:async(req,res)=>{
    try {
        const{Id}=req.body;
        const result=await ModBitacora.postEliminarUsuario({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error)
    }
},

//----------MODULO DE VENTAS-------------------
postModuloVenta: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postModuloVenta({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-----------------Venta-------------------
postInsertVenta: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertVenta({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-----------------Vista de la lista de ventas-------------------
postListaVenta: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postListaVenta({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//----------Salir de la pantalla de lista de Usuario------------------
postSalirListaVenta: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaVenta({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------Actualizacion de Venta---------------
postActualizacionVenta: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizacionVenta({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//----------------Eliminar Venta---------------------
postEliminarVenta: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarVenta({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------Ingreso a la pantalla de Garantia---------------
postPantallaGarantia: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postPantallaGarantia({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//----------Registro de Garantia-------------
postInsertGarantia: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertGarantia({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------Lista de Garantia-----------------
postVerListaGarantia: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postVerListaGarantia({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

postSalirListaGarantia: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaGarantia({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar datos de Garantia-----------------
postActualizarGarantia: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarGarantia({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar datos de Garantia-----------------
postEliminarGarantia: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarGarantia({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------DESCUENTO-----------------
//------------Ingreso a la pantalla de Descuento---------------
postPantallaDescuento: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postPantallaDescuento({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//----------Registro de Descuento-------------
postInsertDescuento: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertDescuento({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------Lista de Descuento-----------------
postVerListaDescuento: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postVerListaDescuento({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------------Salir de la lista de Descuento------------------------
postSalirListaDescuento: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaDescuento({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar datos de Descuento-----------------
postActualizarDescuento: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarDescuento({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar datos de Descuento-----------------
postEliminarDescuento: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarDescuento({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},


//------------------Pantalla de Promociones--------------------------
//------------Ingreso a la pantalla de Promociones---------------
postPantallaPromocio: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postPantallaPromocio({Id});
    } catch (error) {
        console.log(error);
    }
},

//-----------------------------MANTENIMIENTO---------------------------

//-------------------INGRESO A LA PANTALLA DE SUCURSAL-----------------
postPantallaSucursal : async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postPantallaSucursal({Id});

        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//---------------Nueva Promocion--------------------
postInsertBPromocion: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertBPromocion({Id});
    } catch (error) {
        console.log(error);
    }
},


//---------------Nuevo Sucursal--------------------
postInsertBSucursal: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertBSucursal({Id});

        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},


//--------------------Lista de Sucursal-----------------
postVerListaSucursal: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postVerListaSucursal({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-----------------------Salir de la lista de Sucursal---------------------------
postSalirListaSucursal: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaSucursal({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar datos de Sucursal----------------
postActualizarSucursal:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarSucursal({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar datos Sucursal-----------------
postEliminarSucursal:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarSucursal({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},




//--------------------Lista de Promocion-----------------
postVerListaPromocion: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postVerListaPromocion({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------------Salir de la lista de Promocion------------------------
postSalirListaPromocion: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaPromocion({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar datos de Promocion-----------------
postActualizarPromocion: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarPromocion({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar datos de Promocion-----------------
postEliminarPromocion: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarPromocion({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},


//-------------------------------Registro de Promocion del Producto---------------------------
//-------------------INGRESO A LA PANTALLA DE PROMOCION DEL PRODUCTO-----------------
postPantallaPromocionProducto: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postPantallaPromocionProducto({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},
//---------------Nueva Promocion--------------------
postInsertBPromocionProducto: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertBPromocionProducto({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------Lista de Promocion-----------------
postVerListaPromocionProducto: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postVerListaPromocionProducto({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------------Salir de la lista de Promocion------------------------
postSalirListaPromocionProducto: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaPromocionProducto({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar datos de Promocion-----------------
postActualizarPromocionProducto: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarPromocionProducto({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar datos de Promocion-----------------
postEliminarPromocionProducto: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarPromocionProducto({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------MODULO DE CLIENTES-----------------------------------------------
//------------PANTALLA DE CLIENTES-------------------
postPantallaCliente: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postPantallaCliente({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},
//---------------Nuevo Cliente--------------------
postInsertBCliente: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertBCliente({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------Lista de Clientes-----------------
postVerListaClientes: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postVerListaClientes({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------------Salir de la Cliente------------------------
postSalirListaClientes: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaClientes({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar Cliente-----------------
postActualizarClientes: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarClientes({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar Cliente-----------------
postEliminarClientes: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarClientes({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-----------------------DATOS DE EXPEDIENTE-------------------------
postInsertBExpediente: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertBExpediente({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},


//-------------------NUEVO DIAGNOSTICO----------------------
postInsertBDiagnostico: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertBDiagnostico({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},


//--------------PERFIL-----------------
postIngresoPerfil: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postIngresoPerfil({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

postContrModifi: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postContrModifi({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

postPreModifi: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postPreModifi({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

postSalirPerfil: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirPerfil({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},
   //-------------------RECORDATORIOS-------------------------
    postIngresoPCita: async (req, res) => {
        try {
            const { Id } = req.body;
            const result = await ModBitacora.postIngresaPCita({ Id });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },
    postNuevaCita: async (req, res) => {
        try {
            const { Id } = req.body;
            const result = await ModBitacora.postNuevaCita({ Id });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

    postActualizarCita: async (req, res) => {
        try {
            const { Id } = req.body;
            const result = await ModBitacora.postActualizarCita({ Id });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

    postBorrarCita: async (req, res) => {
        try {
            const { Id } = req.body;
            const result = await ModBitacora.postBorrarCita({ Id });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },
    postSalirCita: async (req, res) => {
        try {
            const { Id } = req.body;
            const result = await ModBitacora.postSalirPCita({ Id });
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },
//-------------------------------MANTENIMIENTO---------------------------
//-------------------INGRESO A LA PANTALLA DE SUCURSAL-----------------
postPantallaSucursal: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postPantallaSucursal({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

////////////////////////////////////////////////////////////////////////////////////////////////

//-------------------INGRESO A LA PANTALLA DE MODELO-----------------

//---------------Nuevo Modelo--------------------
postInsertBModelo: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertBModelo({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------Lista de Modelo-----------------
postVerListaModelo: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postVerListaModelo({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-----------------------Salir de la lista de Modelo---------------------------
postSalirListaModelo: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaModelo({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar datos de Modelo----------------
postActualizarModelo:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarModelo({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar datos de marca-----------------
postEliminarModelo :  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarModelo({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

/////////////////////////////////////////////////////////////
//---------------Nuevo Marca--------------------
postInsertBMarca: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertBMarca({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------Lista de Marca-----------------
postVerListaMarca: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postVerListaMarca({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-----------------------Salir de la lista de Marca---------------------------
postSalirListaMarca: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaMarca({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar datos de Marca----------------
postActualizarMarca:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarMarca({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar datos Marca-----------------
postEliminarMarca :  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarMarca({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},


//////////////////////////////////////////////////////////////

//-------------------  PANTALLA DE METODO DE PAGO-----------------

//---------------Nuevo Metodo de pago--------------------
postInsertBMetodopago: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertBMetodopago({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------Lista de  Metodo de pago-----------------
postSalirListaMetodopago: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaMetodopago({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar datos de  Metodo de pago----------------
postActualizarMetodopago:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarMetodopago({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar datos  Metodo de pago----------------
postEliminarMetodopago :  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarMetodopago({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},


//////////////////////////////////////////////////////////////

//-------------------INGRESO A LA PANTALLA DE DEPARTAMENTO-----------------
postPantallaDepartamento : async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postPantallaDepartamento({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//---------------Nuevo Departamento--------------------
postInsertBDepartamento: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertBDepartamento({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------Lista de Departamento-----------------
postVerListaDepartamento: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postVerListaDepartamento({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//////////////////////////////////////////////////////////////////////////
//-----------------------Salir de la lista de Departamento---------------------------
postSalirListaDepartamento: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaDepartamento({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar datos de Departamento----------------
postActualizarDepartamento:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarDepartamento({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar datos Departamento-----------------
postEliminarDepartamento:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarDepartamento({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},


//-------------------INGRESO A LA PANTALLA DE PAIS-----------------
//---------------Nuevo Pais--------------------
postInsertBPais: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertBPais({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------Lista de Pais-----------------
postVerListaPais: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postVerListaPais({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-----------------------Salir de la lista de Pais---------------------------
postSalirListaPais: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaPais({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar datos de Pais----------------
postActualizarPais:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarPais({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar datos Pais-----------------
postEliminarPais:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarPais({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//////////////////////////////////////////////////////////////////////////////////////////////////////

//-------------------  PANTALLA DE PRODUCTOS-----------------

//---------------Nuevo Producto--------------------
postInsertProductoB: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertProductoB({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------Lista de  Producto-----------------
postListaProductoB: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postListaProductosB({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------- salir Lista de  Producto-----------------
postSalirListaProductoB: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaProductosB({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar Producto----------------
postActualizarProductoB:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarProductoB({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar Producto----------------
postEliminarProductoB:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarProductoB({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

postInsertCompraB: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertCompraB({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

postInsertVentaB: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertVentaB({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

postInsertPagoB: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertPagoB({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},




//-------------------INGRESO A LA PANTALLA DE CIUDAD-----------------
postPantallaCiudad : async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postPantallaCiudad({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//---------------Nuevo Ciudad--------------------
postInsertBCiudad: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertBCiudad({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------Lista de Ciudad-----------------
postVerListaCiudad: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postVerListaCiudad({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-----------------------Salir de la lista de Ciudad---------------------------
postSalirListaCiudad: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaCiudad({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar datos de Ciudad----------------
postActualizarCiudad:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarCiudad({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar datos Ciudad-----------------
postEliminarCiudad:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarCiudad({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},




//-------------------INGRESO A LA PANTALLA DE GENERO-----------------
postPantallaGenero : async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postPantallaGenero({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//---------------Nuevo Genero--------------------
postInsertBGenero: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postInsertBGenero({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//--------------------Lista de Genero-----------------
postVerListaGenero: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postVerListaGenero({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-----------------------Salir de la lista de Genero---------------------------
postSalirListaGenero: async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postSalirListaGenero({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//------------------------Actualizar datos de Genero----------------
postActualizarGenero:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postActualizarGenero({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},

//-------------------Eliminar datos Genero-----------------
postEliminarGenero:  async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postEliminarGenero({Id});
        res.status(201).json({ id: result.id });
    } catch (error) {
        console.log(error);
    }
},
}