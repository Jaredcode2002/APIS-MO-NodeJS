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
=======
postCerrarSesion : async (req,res)=> {
    try {
        const{Id}=req.body;
        const result = await ModBitacora.postCerrarSesion ({Id});

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


}