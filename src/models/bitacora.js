import { connectDB } from "../config/Conn.js";

export const ModBitacora = {


    //---------Llamado a toda la bitacora --------------

    getBitacora: async () => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query("SELECT b.IdBitacora, u.Usuario, o.Objeto, b.accion, b.descripcion, DATE_FORMAT(b.fecha, '%Y-%m-%d %H:%i:%s') as fecha FROM tbl_ms_bitacora as b inner join tbl_ms_usuario as u on u.Id_Usuario=b.Id_Usuario inner join tbl_objetos as o on o.Id_Objeto=b.Id_Objeto ORDER BY IdBitacora DESC;")
            conexion.end()
            return filas;
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },


    //-----------LOGIN---------------

    postInsertLogin: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,1,"Login","Inicio de sesión ")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //------Cierre de Secion -----

    postCerrarSesion: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,1,"Cierre de sesión ","El usuario salio del sistema ")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },


    //CONFIGURACION 
    //------Ingreso a las pantallas de Configuración----------
    postPantallaConfig: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Ingreso","Se ingreso a la pantalla de Configuración")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //------Ingreso a la pantalla de Lista de Bitacora----------
    postListaBitacora: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Ingreso a Listas","Se ingreso al a la pantalla de Lista de Bitácora")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //------Salir de la pantalla de Lista de Bitacora----------
    postSalirLB: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la pantalla de Lista de Bitácora")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },



    //---------CONTRASEÑA OLVIDADA-----------------
    postInsertContra: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Login","Contraseña olvidada")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //Envio de correo invalido 

    postCorreoInvalido: async (idusuario) => {
        let conexion

        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Recuperacion"," Ingreso un correo incorrecto")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },


    //-----------PREGUNTAS DE SEGURIDAD-----------
    //----Preguntas ---------

    postPrgunta: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Pregunta Seguridad","El usuario ingreso a la pantalla de Preguntas de Seguridad")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            conexion.end()
            console.log(error);
        }
    },

    //------------Respuestas-----------
    postRespuesta: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Pregunta Seguridad","El usuario ingreso ingreso una respuesta a la pregunta seguridad")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    //---------------------Pantalla de Usuarios------------------

    //------Ingreso a las pantallas de usuario----------
    postInsertModEmpleado: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Ingreso","Se ingreso al a la pantalla de Usuarios")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    //---------Registro de Empleado-------------
    postInsertRegistroEmpleado: async (idusuario) => {
        let conexion

        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Insertar","Se hizo un nuevo registro de empleados")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //----------Salir de la pantalla de Registro de Empleado------------------
    postBotonSalirRE: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Salir","Se salio de la pantalla Registro de Empleado")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //-----------Ver lista de los empleados--------
    postVerListaEmpleados: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Ingreso a Lista","Ingreso a la Lista de Empleados")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //----------Salir de la pantalla de Empleado------------------
    postBotonSalirLE: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Salir","Se salio de Lista de Empleados")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //-----------Actualizacion de datos en empleados--------
    postActualizarEmpleado: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Actualizacion","Se realizaron actualizaciones en los datos del empleado")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    postErrorInsertEmpleado: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Registro incompleto","Se dejaron campos vacios")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },


    postErrorInsertEmpleado: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Registro incompleto","Se dejaron campos vacios")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //-----------Eliminar empleado--------
    postEliminarEmpleado: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Eliminar","El usuario elimino registros de empleados")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //--------------USUARIOS-----------------------------
    //--------Regsitro de Usuario---------------

    postInsertUsuario: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Ingreso","Se agrego un nuevo usuario")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //----------Salir de la pantalla de Registro de Usuario------------------
    postBotonSalirRu: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Salir","Se salio de la pantalla Registro de Usuario")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error)
            conexion.end();
        }
    },

    //-------------Lista de Usuario-------------
    postListaUsuario: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Ingreso a Lista","El usuario ingreso a la Lista de Usuarios")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //----------Salir de la pantalla de Lista de Usuario------------------
    postBotonSalirLU: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Salir","Se salio de la pantalla Lista de Usuarios")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //---------Actaulizar Usuario-----------------
    postActualizarUsuario: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Actualizacion","El usuario realizo actualizaciones en Usuario")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //------------Eliminar Usuario---------------------
    postEliminarUsuario: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,2,"Eliminar ","El usuario elimino datos un Usuario")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },


    //----------MODULO DE VENTAS-------------------
    //----------Ingreso a Venta------------
    postModuloVenta: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Ingreso","El usuario ingreso a la Pantalla de Ventas")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //-----------------Registro de nueva Venta-------------------
    postInsertVenta: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Insertar","El usuario realizo una nueva venta")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //-----------------Vista de la lista de ventas-------------------
    postListaVenta: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"ingreso a Lista","El usuario ingreso a la pantalla de Lista de Venta")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //----------Salir de la pantalla de lista de ventas------------------
    postSalirListaVenta: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Salir","Se salio de la pantalla Lista de Ventas")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //------------------Actualizacion de Venta---------------
    postActualizacionVenta: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Actualizacion","El usuario realizo una actualizacion en venta")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //----------------Eliminar Venta---------------------
    postEliminarVenta: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Eliminar","El usuario elimino un registo de una venta")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //------------Ingreso a la pantalla de Garantia---------------
    postPantallaGarantia: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Pantalla de Garantia","El usuario ingreso a Garantia")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //----------Registro de Garantia-------------
    postInsertGarantia: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Insertar","El usuario registro una nueva garantia")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //--------------------Lista de Garantia-----------------
    postVerListaGarantia: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Ingreso a Listas","El usuario ingreso a la pantalla de Ver Lista de Garantia")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    postSalirListaGarantia: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la pantalla Lista de Garantia)',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //------------------------Actualizar datos de Garantia-----------------
    postActualizarGarantia: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion","El usuario realizo una actualizacion en Garantia")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //-------------------Eliminar datos de Garantia-----------------
    postEliminarGarantia: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar","El usuario elimino datos en garantia")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    //---------------------DESCUENTO------------------------
    //--------------------Ingreso a la pantalla de descuento------------------
    postPantallaDescuento: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Pantalla de Descuento","El usuario ingreso a Descuento")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    //---------------Agregar un nuevo descuento--------------------
    postInsertDescuento: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Insertar","El usuario registro una nueva Descuento")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    //--------------------Lista de Descuento-----------------
    postVerListaDescuento: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Ingreso a Lista","El usuario ingreso a la pantalla de Ver Lista Descuento")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //-----------------------Salir de la lista de descuento---------------------------
    postSalirListaDescuento: async (idusuario) => {
        conexion = await connectDB();
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la pantalla Lista de Descuento)',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //------------------------Actualizar datos de Descuento-----------------
    postActualizarDescuento: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion","El usuario realizo una actualizacion en Descuento")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //-------------------Eliminar datos de Descuento-----------------
    postEliminarDescuento: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar","El usuario elimino datos en Descuento")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //------------------Pantalla de Promociones--------------------------
    //------------Ingreso a la pantalla de Promociones---------------
    postPantallaPromocion: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Pantalla de Promociones","El usuario ingreso a Promociones")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    //---------------Nueva Promocion--------------------
    postInsertBPromocion: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Insertar","El usuario registro una nueva Promocion")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },
    //--------------------Lista de Promocion-----------------
    postVerListaPromocion: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Ingreso a Listas","El usuario ingreso a la pantalla de Ver Lista Promocion")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //-----------------------Salir de la lista de Promocion---------------------------
    postSalirListaPromocion: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la pantalla Lista de Promocion)',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },

    //------------------------Actualizar datos de Promocion----------------
    postActualizarPromocion: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion","El usuario realizo una actualizacion en Promocion")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //-------------------Eliminar datos de Promocion-----------------
    postEliminarPromocion: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar","El usuario elimino datos en Descuento")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //-------------------------------Registro de Promocion del Producto---------------------------
    //-------------------INGRESO A LA PANTALLA DE PROMOCION DEL PRODUCTO-----------------
    postPantallaPromocionProducto: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Pantalla de Promocion del Producto","El usuario ingreso a Promocion del Producto")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },
    //---------------Nueva Promocion del Producto--------------------
    postInsertBPromocionProducto: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Insertar","El usuario registro una nueva Promocion del Producto")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },
    //--------------------Lista de Promocion del Producto-----------------
    postVerListaPromocionProducto: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Ingreso a Lista","El usuario ingreso a la pantalla de Ver Lista Promocion del Producto")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //-----------------------Salir de la lista de Promocion del Producto---------------------------
    postSalirListaPromocionProducto: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Salir","Se salio de la pantalla Lista de Promocion del Producto)',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },

    //------------------------Actualizar datos de Promocion del Producto----------------
    postActualizarPromocionProducto: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Actualizacion","El usuario realizo una actualizacion en Promocion del Producto")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //-------------------Eliminar datos de Promocion del Producto-----------------
    // // postEliminarPromocionProducto: async (idusuario) => {
    // //     let conexion
    // //     try {
    // //         conexion = await connectDB();
    // //         const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Eliminar","El usuario elimino datos en Descuento")',
    // //             idusuario.Id,
    // //         );
    // //         conexion.end()
    // //         return { estado: "OK" };
    // //     } catch (error) {
    // //         console.log(error);
    // //         conexion.end()
              
    // //     }
    // // },

    //-------------------MODULO DE CLIENTES-----------------------------------------------
    
    //---------------------Ingresar un nuevo Cliente----------------
    postInsertBCliente: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Insertar","El usuario registro un nuevo cliente")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },
    //---------------------VER LISTA DE CLIENTES-------------------------------------------
    postVerListaClientes: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Ingreso a Listas","El usuario ingreso a la pantalla de Ver Lista Clientes")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //-----------------------Salir de la lista de Clientes---------------------------
    postSalirListaClientes: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Salir ","El ususario salio de la pantalla Lista de Clientes")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },

    //------------------------Actualizar datos de Clientes----------------
    postActualizarClientes: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Actualizacion","El usuario realizo una actualizacion en Promocion del Clientes")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //-------------------Eliminar datos de Clientes-----------------
    postEliminarClientes: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Eliminar","El usuario elimino datos en Clientes")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //-----------------------DATOS DE EXPEDIENTE-------------------------
    postInsertBExpediente: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Insertar","El usuario registro un nuevo Expediente")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
        }
    },

    //--------------------------EXPEDIENTE DETALLE---------------------
    postInsertBExpedienteDetalle: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Insertar","El usuario registro un Expediente Detalle")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //-------------------NUEVO DIAGNOSTICO----------------------
    postInsertBDiagnostico: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Insertar","El usuario registro un nuevo Diagnostico")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //-----------------------Salir de la lista de Clientes---------------------------
    postSalirListaExpediente: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,4,"Salir","El usuario salio de la pantalla de Lista de Expediente")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },

    //--------------PERFIL-----------------
    postIngresoPerfil: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('INSERT INTO tbl_ms_bitacora (fecha, Id_Usuario, Id_Objeto, accion, descripcion) VALUES (current_timestamp(), ?, 11, "Ingreso a Perfil", "El usuario ingresó a Mi Perfil")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },
    postPerfilModifi: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,11,"Modificación","El usuario modificó los datos del perfil")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    postContrModifi: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,11,"Modificación","El usuario modificó la contraseña")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    postPreguntasAgg: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,11,"Insertar","El usuario registró una nueva pregunta de seguridad")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    postPreModifi: async (idusuario) => {
        let conexion
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,11,"Modificación","El usuario modificó las preguntas de seguridad")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    postSalirPerfil: async (idusuario) => {
        let conexion  //comentario para karen xd
        try {
            conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,11,"Salir de perfil","El usuario salió de Mi Perfil")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },


    //-------------------RECORDATORIOS-------------------------
    postIngresaPCita: async (idusuario)=>{
        let conexion
           try {
               conexion = await connectDB();
               const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,5,"Ingresar","El usuario ingresó a la pantalla de citas")',
               idusuario.Id,
               );
               conexion.end()
               return {estado:"OK"}; 
           } catch (error) {
               console.log(error);
               conexion.end()
                 
            }
       },
    
       postNuevaCita: async (idusuario)=>{
        let conexion
           try {
               conexion = await connectDB();
               const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,5,"Insertar","El usuario registró una nueva cita")',
               idusuario.Id,
               );
               conexion.end()
               return {estado:"OK"}; 
           } catch (error) {
               console.log(error);
               conexion.end()
                 
            }
       },
    
       postActualizarCita: async (idusuario)=>{
        let conexion
           try {
               conexion = await connectDB();
               const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,5,"Actualizacion","El usuario actuzalizó una cita")',
               idusuario.Id,
               );
               conexion.end()
               return {estado:"OK"}; 
           } catch (error) {
               console.log(error);
               conexion.end()
                 
           }
       },
    
       postBorrarCita: async (idusuario)=>{
        let conexion
           try {
               conexion = await connectDB();
               const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,5,"Borrar Cita","El usuario eliminó una cita")',
               idusuario.Id,
               );
               conexion.end()
               return {estado:"OK"}; 
           } catch (error) {
               console.log(error);
               conexion.end()
                 
           }
       },
    
       postSalirPCita: async (idusuario)=>{
        let conexion
           try {
               conexion = await connectDB();
               const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,5,"Salir","El usuario salió de la pantalla de citas")',
               idusuario.Id,
               );
               conexion.end()
               return {estado:"OK"}; 
           } catch (error) {
               console.log(error);
               conexion.end()
                 
            }
       },
    //----------------MANTENIMIENTO------------------------------------
 /////////////////////Sucursal///////////////////////
//---------------Nuevo Sucursal--------------------
postInsertBSucursal: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Insertar","El usuario registro una nueva Sucursal")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },
    
    
    //-----------------------Salir de la lista de Sucursal---------------------------
    postSalirListaSucursal:async (idusuario)=>{
        let conexion
    
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la Lista de Sucursal")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },
    
    //------------------------Actualizar datos de Sucursal----------------
    postActualizarSucursal: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion","El usuario realizo una actualizacion en Sucursal")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },
    
    //-------------------Eliminar datos de Sucursal-----------------
    postEliminarSucursal: async (idusuario)=>{
        
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar","El usuario elimino datos en Sucursal")',
            idusuario.Id,
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
              
        }
    }, 
    
    /////////////////////NODELO///////////////////////
    //---------------Nuevo Nodelo--------------------
    postInsertBModelo: async (idusuario) => {
        let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Insertar","El usuario registro un nuevo Modelo")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },


    //-----------------------Salir de la lista de Modelo---------------------------
    postSalirListaModelo: async (idusuario) => {
        let conexion

        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la Lista de Modelo")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },

    //------------------------Actualizar datos de Modelo----------------
    postActualizarModelo: async (idusuario) => {
        let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion","El usuario realizo una actualizacion en Modelo")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //-------------------Eliminar datos de Modelo-----------------
    postEliminarModelo: async (idusuario) => {

        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar","El usuario elimino datos en Modelo")',
                idusuario.Id,
            );
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
              
        }
    },

    /////////////////////NODELO///////////////////////
    //---------------Nuevo Nodelo--------------------
    postInsertBMarca: async (idusuario) => {
        let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Insertar","El usuario registro una nueva Marca")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },


    //-----------------------Salir de la lista de Marca---------------------------
    postSalirListaMarca: async (idusuario) => {
        let conexion

        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la Lista de Marca")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },

    //------------------------Actualizar datos de Marca----------------
    postActualizarMarca: async (idusuario) => {
        let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion","El usuario realizo una actualizacion en Marca")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //-------------------Eliminar datos de Marca-----------------
    postEliminarMarca: async (idusuario) => {

        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar","El usuario elimino datos en Marca")',
                idusuario.Id,
            );
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
              
        }
    },


    /////////////////////TIPO PAGO///////////////////////
    //---------------Metodo de Pago--------------------
    postInsertBMetodopago: async (idusuario) => {
        let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Insertar","El usuario registro un nuevo Metodo pago")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },


    //-----------------------Salir de la lista de Metodo pago---------------------------
    postSalirListaMetodopago: async (idusuario) => {
        let conexion

        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la Lista de Metodo pago")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },

    //------------------------Actualizar datos de Metodo pago----------------
    postActualizarMetodopago: async (idusuario) => {
        let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion","El usuario realizo una actualizacion en Metodo pago")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //-------------------Eliminar datos de Metodo pago-----------------
    postEliminarMetodopago: async (idusuario) => {

        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar","El usuario elimino datos en Metodo pago")',
                idusuario.Id,
            );
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
              
        }
    },

    /////////////////////Departamento///////////////////////
    //---------------Nuevo Departamento--------------------
    postInsertBDepartamento: async (idusuario) => {
        let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Registro","El usuario registro un nuevo Departamento")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },


    //-----------------------Salir de la lista de Departamento---------------------------
    postSalirListaDepartamento: async (idusuario) => {
        let conexion

        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la Lista de Departamento")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },

    //------------------------Actualizar datos de Departamento----------------
    postActualizarDepartamento: async (idusuario) => {
        let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion","El usuario realizo una actualizacion en Departamento")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //-------------------Eliminar datos de Departamento-----------------
    postEliminarDepartamento: async (idusuario) => {

        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar","El usuario elimino datos en Departamento")',
                idusuario.Id,
            );
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
              
        }
    },

    /////////////////////PRODUCTO/////////////////////// AQUI EMPIEZA LO MIO
    //---------------Nuevo Producto--------------------
    postInsertProductoB: async (idusuario) => {
        let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,6,"Insertar","El usuario registro un producto")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //-----------------------Ver lista de Productos---------------------------
    postListaProductosB: async (idusuario) => {
        let conexion

        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,6,"Vista","Se visualizo la Lista de Productos")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },


    //-----------------------Salir de la lista de Productos---------------------------
    postSalirListaProductosB: async (idusuario) => {
        let conexion

        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,6,"Salir","Se salio de la Lista de Productos")',
                [idusuario.Id]
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },

    //------------------------Actualizar datos de Producto----------------
    postActualizarProductoB: async (idusuario) => {
        let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,6,"Actualizacion","El usuario actualizo un producto")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //-------------------Eliminar Producto-----------------
    postEliminarProductoB: async (idusuario) => {

        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,6,"Eliminar","El usuario elimino un producto")',
                idusuario.Id,
            );
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
              
        }
    },

    /////////////////////Compra/////////////////////// 
    //---------------Nueva Compra--------------------
    postInsertCompraB: async (idusuario) => {
        let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,6,"Insertar","El usuario registro una compra")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //---------------Nueva Venta--------------------
    postInsertVentaB: async (idusuario) => {
        let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Insertar","El usuario registro una venta")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    //---------------Nueva Pago--------------------
    postInsertPagoB: async (idusuario) => {
        let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,9,"Insertar","El usuario registro un pago")',
                idusuario.Id,
            );
            conexion.end()
            return { estado: "OK" };
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },

    /////////////////////Pais///////////////////////
//---------------Nuevo Pais--------------------
postInsertBPais: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Insertar","El usuario registro un nuevo Pais")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },
    
    
    //-----------------------Salir de la lista de Pais---------------------------
    postSalirListaPais:async (idusuario)=>{
        let conexion
    
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la Lista de Pais")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },
    
    //------------------------Actualizar datos de Pais----------------
    postActualizarPais: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion","El usuario realizo una actualizacion en Pais")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },
    
    //-------------------Eliminar datos de Pais-----------------
    postEliminarPais: async (idusuario)=>{
        
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar","El usuario elimino datos en País")',
            idusuario.Id,
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
              
        }
    }, 
    
/////////////////////Ciudad///////////////////////
//---------------Nuevo Ciudad--------------------
postInsertBCiudad: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Insertar","El usuario registro una nueva Ciudad")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },
    
    
    //-----------------------Salir de la lista de Ciudad---------------------------
    postSalirListaCiudad:async (idusuario)=>{
        let conexion
    
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la Lista de Ciudad")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },
    
    //------------------------Actualizar datos de Ciudad----------------
    postActualizarCiudad: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion","El usuario realizo una actualizacion en Ciudad")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },
    
    //-------------------Eliminar datos de Ciudad-----------------
    postEliminarCiudad: async (idusuario)=>{
        
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar","El usuario elimino datos en Ciudad")',
            idusuario.Id,
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
              
        }
    }, 
    
/////////////////////Genero///////////////////////
//---------------Nuevo Genero--------------------
postInsertBGenero: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Insertar","El usuario registro un nuevo Genero")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },
    
    
    //-----------------------Salir de la lista de Genero---------------------------
    postSalirListaGenero:async (idusuario)=>{
        let conexion
    
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Salir","Se salio de la Lista de Genero")',
            [idusuario.Id]
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
             
        }
    },
    
    //------------------------Actualizar datos de Genero----------------
    postActualizarGenero: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Actualizacion","El usuario realizo una actualizacion en Genero")',
            idusuario.Id,
            );
            conexion.end()
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            conexion.end()
              
        }
    },
    
    //-------------------Eliminar datos de Genero-----------------
    postEliminarGenero: async (idusuario)=>{
        
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,8,"Eliminar","El usuario elimino datos en Genero")',
            idusuario.Id,
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
              
        }
    }, 
    
/////////////////////PROVEEDORES///////////////////////
//---------------Nuevo Proveedor--------------------
postInsertProveedor: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Insertar","El usuario registro un nuevo Proveedor")',
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
    
    
    //-----------------------Salir de la lista de Proveedor---------------------------
    postSalirListaProveedor:async (idusuario)=>{
        let conexion
    
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Salir","Se salio de la Lista de Proveedores")',
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
    
    //------------------------Actualizar datos de Proveedor----------------
    postActualizarProveedor: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Actualizacion","El usuario realizo una actualizacion en datos de Proveedores")',
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
    
    //-------------------Eliminar datos de Proveedor-----------------
    postEliminarProveedor: async (idusuario)=>{
        
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Eliminar","El usuario elimino datos de un Proveedor")',
            idusuario.Id,
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error al crear el API");
        }
    },

 //////////////////////////////LENTES///////////////////////////
//---------------Nuevo Lentes--------------------
postInsertLentes: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Insertar","El usuario registro un nuevo Lentes")',
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
    
    
    //-----------------------Salir de la lista de Lentes---------------------------
    postSalirListaLentes:async (idusuario)=>{
        let conexion
    
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Salir","Se salio de la Lista de Lentes")',
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
    
    //------------------------Actualizar datos de Lentes----------------
    postActualizarLentes: async (idusuario)=>{
    let conexion
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Actualizacion","El usuario realizo una actualizacion en datos de Lentes")',
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
    
    //-------------------Eliminar datos de Lentes-----------------
    postEliminarLentes: async (idusuario)=>{
        
        try {
            const conexion = await connectDB();
            const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Eliminar","El usuario elimino datos de un Lentes")',
            idusuario.Id,
            );
            return {estado:"OK"}; 
        } catch (error) {
            console.log(error);
            throw new Error("Error al crear el API");
        }
    },   
//////////KARDEX
 //-------------------Kardex-----------------
 postMovimientoKardex: async (idusuario)=>{
        
    try {
        const conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Kardex","El usuario realizo un nuevo movimiento en Kardex")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
}, 
//SALIR LISTA KARDEX
postSalirListaKardex: async (idusuario)=>{
        
    try {
        const conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Salir","El usuario salio de la lista de Kardex")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
}, 
// //INGRESO A LA PANTALLA DE INVENTARIO 
postIngresoInventario: async (idusuario)=>{
        
    try {
        const conexion = await connectDB();
        const [filas] = await conexion.query ('Insert into tbl_ms_bitacora (fecha,Id_Usuario,Id_Objeto,accion,descripcion) values(current_timestamp(),?,3,"Ingresar","El usuario ingreso a la Pantalla de Inventario")',
        idusuario.Id,
        );
        return {estado:"OK"}; 
    } catch (error) {
        console.log(error);
        throw new Error("Error al crear el API");
    }
}, 

}

