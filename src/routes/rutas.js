import express from "express";
import { ContrUsuario } from "../controllers/usuario.js";
import { ContrLogin } from "../controllers/login.js";
import { Mailer } from "../controllers/correos.js";
import { ContrCompraDetalle } from "../controllers/ComprasDetalle.js";
import { ContrKardex } from "../controllers/kardex.js";


import { ContrGarantia } from "../controllers/garantia.js";
import { ContrMarca } from "../controllers/marca.js";
import { ContrModelo } from "../controllers/modelo.js";
import { ContrInventario } from "../controllers/inventario.js";
import { ContrPago } from "../controllers/pago.js";
import { ContrProducto } from "../controllers/producto.js";
import { ContrPromocion } from "../controllers/promocion.js";
import { ContrTipoPago } from "../controllers/tipopago.js";
import { ContrParametro } from "../controllers/parametros.js";

import { ContrEmpleado } from "../controllers/empleado.js";
import { ContrPreguntas } from "../controllers/preguntas.js";

import { ContrCompra } from "../controllers/compra.js";
import { ContrGestion } from "../controllers/Gestion.js";
import { ContrVentas } from "../controllers/Ventas.js";
import { ContrRol } from "../controllers/rol.js";
import { ContrClientes } from "../controllers/clientes.js";
import { ContrProveedor } from "../controllers/proveedor.js";
import { ContrBitacora } from "../controllers/bitacora.js";

import { TokenContr } from "../controllers/token.js";
import { ContrExpediente } from "../controllers/expediente.js";
import { ContrExpedineteDetalle } from "../controllers/expedientedetalle.js";

import { ContrEstado } from "../controllers/estado.js";
import { ContrSucursal } from "../controllers/sucursal.js";
import { ContrAutoReg } from "../controllers/autoregistro.js"
import { ContrDepto } from "../controllers/departamento.js";
import { ContrCiudad } from "../controllers/ciudad.js";
import { ContrPais } from "../controllers/pais.js";
import { ContrGenero } from "../controllers/genero.js";
import { ContrPermisos } from "../controllers/permisos.js";

import { ContrRecordatorio } from "../controllers/recordatorio.js"
import { ContrDescuento } from "../controllers/descuento.js";
import { ContrLente } from "../controllers/lente.js";





const router = express.Router();

//usuario
router.get('/usuarios', ContrUsuario.getUsuarios)
router.get('/usuarios/inactivos',ContrUsuario.getUsuariosABlockInnactivos)
router.post('/usuario', ContrUsuario.getUsuario)
router.post('/usuario/insert', ContrUsuario.postUsuario)
router.put('/usuario/update', ContrUsuario.putUsuario)

router.delete('/usuario/delete', ContrUsuario.delUsuario)
router.get('/usuario/fechaExp', ContrUsuario.getFechaExp)
router.put('/usuario/estado', ContrUsuario.putUpdateEstado)
router.put('/usuario/estado/activo', ContrUsuario.putUpdateEstadoActivo)
router.put('/usuario/estado/seleccionado', ContrUsuario.putUpdateEstadoUsuario)
router.put('/usuario/UpdContra', ContrUsuario.putUpdatePassword)
router.put('/usuario/ActualizarContra', ContrUsuario.ActualizarContra)//por algun pedo futuro. Att: Jared del pasado
router.post('/usuario/compararContra', ContrUsuario.compararContraVSHistorial)
router.post('/usuario/histPasswrd', ContrUsuario.postHistPassword)
router.put('/actualizarPerfil', ContrUsuario.putUpdUsuarioPerfil)


//token
router.post('/token/enviarCodigo', TokenContr.enviarCodigo)
router.post('/token/verificar', TokenContr.verificarCodigo)
router.post('/token/id', TokenContr.obtenerId)


//correo
router.post('/mail/recover', Mailer.sendMail)


//Login
router.post('/login/compare', ContrLogin.getPsswrd)
router.get('/login/preguntas', ContrLogin.getPreguntas)
router.post('/login', ContrLogin.getUser)
router.put('/login/PVez', ContrLogin.putLoginPVez)

//test
// router.post('/test/encipt',ContrLogin.test)

//Clientes
router.get('/clientes', ContrClientes.getClientes)
router.post('/clientes/clienteNuevo', ContrClientes.postCliente)
router.put('/clientes/actualizar', ContrClientes.putCliente)
router.delete('/clientes/eliminar', ContrClientes.delCliente)


//Compra
router.get('/compra', ContrCompra.getCompras)
router.post('/facturaCompra', ContrCompra.getFacturaCompras)
router.post('/compra/NuevaCompra', ContrCompra.postInsertCompra)
router.put('/compra/anular',ContrCompra.putAnularCompra)

//Ventas
router.get('/Ventas', ContrVentas.getVentas)
router.post('/VentaDetalle', ContrVentas.getVentaDetalle)
router.post('/Ventas/NuevaVenta', ContrVentas.postRegistroVentas)
router.post('/Ventas/totalAPagar', ContrVentas.postMostrarTotal)
router.put('/Ventas/anular',ContrVentas.putAnularVentas)
//Gestion 
router.get('/Gestion', ContrGestion.getSucursal)
router.post('/Gestion/NuevaSucursal', ContrGestion.postInsertSucursal)
router.put('/Gestion/ActualizarSucursal', ContrGestion.putInsertSucursal)
router.delete('/Gestion/EliminarSucursal', ContrGestion.deleteSucursal)

//Rol
router.get('/Rol', ContrRol.getRol)
router.get('/RolesInactivos', ContrRol.getRolesInactivos)
router.post('/Rol/NuevoRol', ContrRol.postRol)
router.put('/Rol/RolActualizado', ContrRol.putUpdateRol)
router.delete('/Rol/RolEliminado', ContrRol.deleteRol)

//AutoRegistro
// router.post('/usuario/AutoRegistro', ContrAutoReg.postUsuarioAutoRegistro)
router.put('/usuario/EstadoActivo', ContrAutoReg.putUpdateEstadoActivo) 

//Pais
router.get('/paises', ContrPais.getPaises)
router.get('/pais/paisInactivo', ContrPais.getPaisInactivos)
router.post('/pais/crear', ContrPais.postInsertPais)
router.put('/pais/actualizar', ContrPais.putUpdatePais)
router.delete('/pais/eliminar', ContrPais.delPais)

//Departamento
router.get('/departamentos', ContrDepto.getDepartamentos)
router.get('/departamentos/departamentoInactivo', ContrDepto.getDepartamentosInactivos)
router.post('/departamento/crear', ContrDepto.postInsertDepto)
router.put('/departamento/actualizar', ContrDepto.putUpdateDepto)
router.delete('/departamento/eliminar', ContrDepto.delDepto)

//Ciudad
router.get('/ciudades', ContrCiudad.getCiudades)
router.get('/ciudades/ciudadInactiva', ContrCiudad.getCiudadesInactivas)
router.post('/ciudad/crear', ContrCiudad.postInsertCiudad)
router.put('/ciudad/actualizar', ContrCiudad.putUpdateCiudad)
router.delete('/ciudad/eliminar', ContrCiudad.delCiudad)


//empleado
router.get('/empleados', ContrEmpleado.getEmpleados)
router.get('/empleados/inactivos', ContrEmpleado.getEmpleadosInactivos)
//router.get('/empleado/get',ContrEmpleado.getEmpleado)
router.post('/empleado', ContrEmpleado.postEmpleado)
router.put('/empleado/actualizar', ContrEmpleado.putEmpleado)
router.delete('/empleado/eliminar', ContrEmpleado.delEmpleado)
router.get('/empleado/sucursal', ContrEmpleado.getSucursales)
router.get('/empleado/genero', ContrEmpleado.getGeneros)
router.post('/empleado/RegistroInvalido', ContrEmpleado.getEmpleadoExist) //Para consultar empleado existente
 

//preguntas
router.get('/preguntas', ContrPreguntas.getPreguntas)
router.post('/preguntas/agregar', ContrPreguntas.postPreguntas)
router.put('/preguntas/editar', ContrPreguntas.putPreguntas)
router.delete('/preguntas/eliminar', ContrPreguntas.delPreguntas)
router.get('/preguntas/respuestas', ContrPreguntas.getRespuestas)
router.post('/preguntas/respuestas/agregar', ContrPreguntas.postRespuestas)
router.post('/preguntas/compararR', ContrPreguntas.compararRespuesta)
router.post('/eliminarPregConfig', ContrPreguntas.delRespuestasUsuario)

router.post('/correo/existe', ContrPreguntas.getUser)
router.post('/pregYresp', ContrPreguntas.getPyR)
router.delete('/eliminarRespuesta', ContrPreguntas.delRespuestas)
router.put('/pyr/editar', ContrPreguntas.putRespuestas)
router.get('/respuesta', ContrPreguntas.getRespuesta)
router.get('/pregunta', ContrPreguntas.getPregunta)


//PROVEEDORES
router.get('/proveedor', ContrProveedor.getProveedores)
router.get('/proveedoresInactivos', ContrProveedor.getProveedoresInactivos)
router.post('/proveedor/NuevoProveedor', ContrProveedor.postInsertProveedor)
router.put('/proveedor/ActualizarProveedor', ContrProveedor.putUpdateProveedor)
router.delete('/proveedor/EliminarProveedor', ContrProveedor.deleteProveedor)


//BITACORA

//LLamado a toda la bitacora 
router.get('/bitacora', ContrBitacora.getBitacora)
//--------Configuracion-----
router.post('/bitacora/Configuracion', ContrBitacora.postPantallaConfig)
router.post('/bitacora/ListaBitacora', ContrBitacora.postListaBitacora)
router.post('/bitacora/SalirListaBitacora', ContrBitacora.postSalirLB)

//--Login y Recuperacion de Contraseña--
router.post('/bitacora/Login', ContrBitacora.postInsertLogin)
router.post('/bitacora/Cierre', ContrBitacora.postCerrarSesion)
router.post('/Recuperacionbitacora/', ContrBitacora.postInsertContra)
router.post('/bitacora/PreguntaSeguridad', ContrBitacora.postPrgunta)
router.post('/bitacora/CorreoInvalido', ContrBitacora.postCorreoInvalido)
router.post('/bitacora/RespuestaSeguridad', ContrBitacora.postPrgunta)
//--Empleado--
router.post('/bitacora/Empleado', ContrBitacora.postInsertModEmpleado)
router.post('/bitacora/RegistroEmpleado', ContrBitacora.postInsertRegistroEmpleado)
router.post('/bitacora/SalirRegistroEmpleado', ContrBitacora.postBotonSalirRE)
router.post('/bitacora/ListaEmpleado', ContrBitacora.postVerListaEmpleados)
router.post('/bitacora/SalirListaEmpleado', ContrBitacora.postBotonSalirLE)
router.post('/bitacora/ActualizarEmpleado', ContrBitacora.postActualizarEmpleado)
router.post('/bitacora/ErrorInsertEmpleado', ContrBitacora.postErrorInsertEmpleado)
router.post('/bitacora/EliminarEmpleado', ContrBitacora.postEliminarEmpleado)
//--Usuario--
router.post('/bitacora/InsertUsuario', ContrBitacora.postInsertUsuario)
router.post('/bitacora/SalirRegistroUsuario', ContrBitacora.postBotonSalirRu)
router.post('/bitacora/ListaUsuario', ContrBitacora.postListaUsuario)
router.post('/bitacora/SalirListaUsuarios', ContrBitacora.postBotonSalirLU)
router.post('/bitacora/ActualizacionUsuario', ContrBitacora.postActualizarUsuario)
router.post('/bitacora/EliminarUsuario', ContrBitacora.postEliminarUsuario)
//--Venta--
router.post('/bitacora/Venta', ContrBitacora.postModuloVenta)
router.post('/bitacora/NuevaVenta', ContrBitacora.postInsertVenta)
router.post('/bitacora/ListaVenta', ContrBitacora.postListaVenta)
router.post('/bitacora/ActualizacionVenta', ContrBitacora.postActualizacionVenta)
router.post('/bitacora/EliminarVenta', ContrBitacora.postEliminarVenta)
//--Garantia--
router.post('/bitacora/Garantia', ContrBitacora.postPantallaGarantia)
router.post('/bitacora/NuevaGarantia', ContrBitacora.postInsertGarantia)
router.post('/bitacora/ListaGarantia', ContrBitacora.postVerListaGarantia)
router.post('/bitacora/ActualizacionGarantia', ContrBitacora.postActualizarGarantia)
router.post('/bitacora/EliminarGarantia', ContrBitacora.postEliminarGarantia)
//--Descuento--
router.post('/bitacora/Descuento', ContrBitacora.postPantallaDescuento)
router.post('/bitacora/NuevaGarantia', ContrBitacora.postInsertDescuento)
router.post('/bitacora/SalirListaGarantia', ContrBitacora.postSalirListaDescuento)
router.post('/bitacora/ActualizacionDescuento', ContrBitacora.postActualizarDescuento)
router.post('/bitacora/EliminarDescuento', ContrBitacora.postEliminarDescuento)
//--Descuento Promocion 
router.post('/bitacora/NuevaGarantia', ContrBitacora.postInsertBPromocion)
router.post('/bitacora/SalirListaGarantia', ContrBitacora.postSalirListaPromocion)
router.post('/bitacora/ActualizacionDescuento', ContrBitacora.postActualizarPromocion)
router.post('/bitacora/EliminarDescuento', ContrBitacora.postEliminarPromocion)
//Clientes
router.post('/bitacora/cliente', ContrBitacora.postPantallaCliente)
router.post('/bitacora/Nuevacliente', ContrBitacora.postInsertBCliente)
router.post('/bitacora/SalirListacliente', ContrBitacora.postSalirListaClientes)
router.post('/bitacora/Actualizacioncliente', ContrBitacora.postActualizarClientes)
router.post('/bitacora/Eliminarcliente', ContrBitacora.postEliminarClientes)
//--Datos de expediente 
router.post('/bitacora/expediente', ContrBitacora.postInsertBExpediente)
router.post('/bitacora/SalirListaExpediente', ContrBitacora.postSalirListaExpediente)
router.post('/bitacora/Nuevaexpediente', ContrBitacora.postInsertBCliente)
router.post('/bitacora/Diagnostico', ContrBitacora.postInsertBDiagnostico)
router.post('/bitacora/Actualizacioncexpediente', ContrBitacora.postActualizarClientes)
router.post('/bitacora/Eliminarexpediente', ContrBitacora.postEliminarClientes)
//Perfil 
router.post('/bitacora/perfil', ContrBitacora.postIngresoPerfil)
router.post('/bitacora/cambioPerfil', ContrBitacora.postPerfilModifi)
router.post('/bitacora/cambiocontrasena', ContrBitacora.postContrModifi)
router.post('/bitacora/nuevaPregunta', ContrBitacora.postPreguntasAgg)
router.post('/bitacora/cambiopreguntas', ContrBitacora.postPreModifi)
router.post('/bitacora/salirperfil', ContrBitacora.postSalirPerfil)
//Citas
router.post('/bitacora/citas', ContrBitacora.postIngresoPCita)
router.post('/bitacora/agregarcita', ContrBitacora.postNuevaCita)
router.post('/bitacora/eliminarcita', ContrBitacora.postBorrarCita)
router.post('/bitacora/actualizarcita', ContrBitacora.postActualizarCita)
router.post('/bitacora/citasSalir', ContrBitacora.postSalirCita)
//Producto
router.post('/bitacora/insertoproducto', ContrBitacora.postInsertProductoB)
router.post('/bitacora/saliolistaproductos', ContrBitacora.postSalirListaProductoB)
router.post('/bitacora/actualizoproducto', ContrBitacora.postActualizarProductoB)
router.post('/bitacora/eliminoproducto', ContrBitacora.postEliminarProductoB)
//Proveedores
router.post('/bitacora/insertoproveedores', ContrBitacora.postInsertProveedor)
router.post('/bitacora/saliolistaproveedores', ContrBitacora.postSalirListaProveedor)
router.post('/bitacora/actualizoproveedores', ContrBitacora.postActualizarProveedor)
router.post('/bitacora/eliminarproveedores', ContrBitacora.postEliminarProveedor)
//Lentes
router.post('/bitacora/insertolentes', ContrBitacora.postInsertLentes)
router.post('/bitacora/saliolistalentes', ContrBitacora.postSalirListaLentes)
router.post('/bitacora/actualizolentes', ContrBitacora.postActualizarLentes)
router.post('/bitacora/eliminarlentes', ContrBitacora.postEliminarLentes)
//Kardex
router.post('/bitacora/movimientoKardex', ContrBitacora.postMovimientoKardex)
router.post('/bitacora/salirListaKardex', ContrBitacora.postSalirListaKardex)
//Inventario
router.post('/bitacora/PantallaInventarioB', ContrBitacora.postIngresoInventario)
//Compra
router.post('/bitacora/insertcompra', ContrBitacora.postInsertCompraB)
//Venta
router.post('/bitacora/insertventa', ContrBitacora.postInsertVenta)
router.post('/bitacora/salir', ContrBitacora.postSalirListaVenta)
router.post('/bitacora/actualizarventa', ContrBitacora.postActualizacionVenta)
router.post('/bitacora/eliminarventa', ContrBitacora.postEliminarVenta)
//Pago
router.post('/bitacora/insertpago', ContrBitacora.postInsertPagoB)
//Sucursal
router.post('/bitacora/insertsucursal', ContrBitacora.postInsertBSucursal)
router.post('/bitacora/sali', ContrBitacora.postSalirListaSucursal)
router.post('/bitacora/actualizarsucursal', ContrBitacora.postActualizarSucursal)
router.post('/bitacora/eliminarsucursal', ContrBitacora.postEliminarSucursal)
//Modelo
router.post('/bitacora/insertmodelo', ContrBitacora.postInsertBModelo)
router.post('/bitacora/sali', ContrBitacora.postSalirListaModelo)
router.post('/bitacora/actualizarmodelo', ContrBitacora.postActualizarModelo)
router.post('/bitacora/eliminarmodelo', ContrBitacora.postEliminarModelo)
//Marca
router.post('/bitacora/insertmarca', ContrBitacora.postInsertBMarca)
router.post('/bitacora/sali', ContrBitacora.postSalirListaMarca)
router.post('/bitacora/actualizarmarca', ContrBitacora.postActualizarMarca)
router.post('/bitacora/eliminarmarca', ContrBitacora.postEliminarMarca)
//Metodos de pago 
router.post('/bitacora/insertMetodopago', ContrBitacora.postInsertBMetodopago)
router.post('/bitacora/sali', ContrBitacora.postSalirListaMetodopago)
router.post('/bitacora/actualizarMetodopago', ContrBitacora.postActualizarMetodopago)
router.post('/bitacora/eliminarMetodopago', ContrBitacora.postEliminarMetodopago)
//Departamento 
router.post('/bitacora/insertDepartamento', ContrBitacora.postInsertBDepartamento)
router.post('/bitacora/saliListaDepartamento', ContrBitacora.postSalirListaDepartamento)
router.post('/bitacora/actualizarDepartamento', ContrBitacora.postActualizarDepartamento)
router.post('/bitacora/eliminarDepartamento', ContrBitacora.postEliminarDepartamento)
//Ciudad
router.post('/bitacora/insertCiudad', ContrBitacora.postInsertBCiudad)
router.post('/bitacora/sali', ContrBitacora.postSalirListaCiudad)
router.post('/bitacora/actualizarCiudad', ContrBitacora.postActualizarCiudad)
router.post('/bitacora/eliminarCiudad', ContrBitacora.postEliminarCiudad)
//Pais
router.post('/bitacora/insertPais', ContrBitacora.postInsertBPais)
router.post('/bitacora/sali', ContrBitacora.postSalirListaPais)
router.post('/bitacora/actualizarPais', ContrBitacora.postActualizarPais)
router.post('/bitacora/eliminarPais', ContrBitacora.postEliminarPais)
//Genero
router.post('/bitacora/insertGenero', ContrBitacora.postInsertBGenero)
router.post('/bitacora/sali', ContrBitacora.postSalirListaGenero)
router.post('/bitacora/actualizarGenero', ContrBitacora.postActualizarGenero)
router.post('/bitacora/eliminarGenero', ContrBitacora.postEliminarGenero)


//Garantias
router.get('/garantias', ContrGarantia.getGarantias)
router.get('/garantiasInactivas', ContrGarantia.getGarantiasInactivas)
router.post('/garantias/crear', ContrGarantia.postGarantia)
router.put('/garantias/actualizar', ContrGarantia.putGarantia)
router.delete('/garantias/eliminar', ContrGarantia.delGarantia)

//Inventario

router.get('/inventarios', ContrInventario.getInventarios)
router.post('/inventarios/crear', ContrInventario.postInventario)
router.put('/inventario/actualizar', ContrInventario.putInventario)
router.delete('/inventario/eliminar', ContrInventario.delInventario)

//Marca
router.get('/marcas', ContrMarca.getMarcas)
router.get('/marcas/marcasInactivas', ContrMarca.getMarcasInactivas)
router.post('/marcas/crear', ContrMarca.postInsertMarca)
router.put('/marcas/actualizar', ContrMarca.putUpdateMarca)
router.delete('/marcas/eliminar', ContrMarca.delMarca)

//Modelo
router.get('/modelos', ContrModelo.getModelos)
router.get('/modelosInactivos', ContrModelo.getModeloslInactivos )
router.post('/modelos/crear', ContrModelo.postInsertModelo)
router.put('/modelo/actualizar', ContrModelo.putUpdateModelo)
router.delete('/modelo/eliminar', ContrModelo.delModelo)

//Pago
router.get('/pagos', ContrPago.getPagos)
router.post('/pagos/crear', ContrPago.postPago)
router.put('/pagos/actualizar', ContrPago.putPago)
router.delete('/pagos/eliminar', ContrPago.delPago)

//Parametros
router.get('/parametros', ContrParametro.getParametros)
router.get('/parametros', ContrParametro.getIntentos)
router.get('/parametros/AdminPreguntas', ContrParametro.getPreguntas)
router.get('/parametros/AdminCorreo', ContrParametro.getCorreo)
router.get('/parametros/AdminIntentos', ContrParametro.getIntentos)
router.get('/parametros', ContrParametro.getImpuesto)
router.get('/parametros', ContrParametro.getTiempoDReuintentoLogin)
router.get('/parametros/bitacora',ContrParametro.getBitacora)
//router.put('/parametros/actualizar', ContrParametro.putParametro)

router.put('/parametros/actualizar', ContrParametro.putIntentos)
router.put('/parametros/actualizar', ContrParametro.putPreguntas)
router.put('/parametros/actualizar', ContrParametro.putImpuesto)
router.put('/parametros/actualizar', ContrParametro.putTiempoDReuintentoLogin)
router.put('/parametro/bitacora',ContrParametro.putBitacora)

router.put('/parametros/actualizacion', ContrParametro.putParametros);


//Producto
router.get('/producto', ContrProducto.getProducto)
router.get('/productos', ContrProducto.getProductos)
router.get('/productosInactivos', ContrProducto.getProductosInactivos)
router.post('/productos/crear', ContrProducto.postProducto)
router.put('/productos/actualizar', ContrProducto.putProducto)
router.delete('/producto/eliminar', ContrProducto.delProducto)

//Promocion
router.get('/promociones', ContrPromocion.getPromocion)
router.get('/promocionesInactivas', ContrPromocion.getPromocionesInactivas)
router.post('/promociones/crear', ContrPromocion.postPromocion)
router.put('/promociones/actualizar', ContrPromocion.putPromocion)
router.delete('/promociones/eliminar', ContrPromocion.delPromocion)


//Sucursal
router.get('/sucursales', ContrSucursal.getSucursales)
router.get('/sucursalInactivas', ContrSucursal.getSucursalInactivas)
router.post('/sucursal/crear', ContrSucursal.postInsertSucursal)
router.put('/sucursal/actualizar', ContrSucursal.putUpdateSucursal)
router.delete('/sucursal/eliminar', ContrSucursal.deleteSucursal)


//TipoPago
router.get('/tipopago', ContrTipoPago.getTipoPagos)
router.get('/tipopago/PagoInactivo', ContrTipoPago.getTipoPagosInactivos)
router.post('/tipopago/crear', ContrTipoPago.postInsertTipoPago)
router.put('/tipopago/actualizar', ContrTipoPago.putUpdateTipoPago)
router.delete('/tipopago/eliminar', ContrTipoPago.delTipoPago)


//DetalleCompra
router.get('/ComprasDetalle', ContrCompraDetalle.GetCompraDetalle)
router.post('/ComprasDetalle', ContrCompraDetalle.PostCompraDetalle)
router.put('/ComprasDetalle', ContrCompraDetalle.PutCompraDetalle)
router.delete('/ComprasDetalle', ContrCompraDetalle.DeleteCompraDetalle)


//Kardex
router.get('/kardex', ContrKardex.GetKardex)
router.get('/Tmovimientos',ContrKardex.getMovimientos)
router.post('/ProductoKardex', ContrKardex.postProductoKardexFiltro)
router.post('/kardex', ContrKardex.PostKardex)
router.post('/Extraordinario',ContrKardex.postMovimientoExtra)


//Expediente

router.get('/Expediente', ContrExpediente.getExpediente)
router.post('/Expediente/NuevoExpediente', ContrExpediente.postInsertExpediente)
//router.put('/Expediente/UpdateExpediente',ContrExpediente.putUpdateExpediente)
router.delete('/Expediente/DeleteExpediente', ContrExpediente.deleteExpediente)

//ExpedienteDetalle
router.post('/ExpedienteDetalle', ContrExpedineteDetalle.getExpedienteDetalle)
router.post('/ExpedienteDetalle/NuevoExpedinteDetalle', ContrExpedineteDetalle.postExpedienteDetalle)
router.put('/ExpedienteDetalle/UpdateExpedinteDetalle', ContrExpedineteDetalle.putExpedienteDetalle)
router.delete('/ExpedienteDetalle/DeleteExpedinteDetalle', ContrExpedineteDetalle.deleteExpedienteDetalle)

//Estados
router.put('/Estado/Activo', ContrEstado.updActivo)
router.put('/Estado/Inactivo', ContrEstado.updInactivo)

//GENERO
router.get('/Genero', ContrGenero.getGenero)
router.get('/Genero/GeneroInactivo', ContrGenero.getGeneroInactivos)
router.post('/Genero/insertar', ContrGenero.postInsertGenero)
router.put('/Genero/actualizar', ContrGenero.putUpdateGenero)
router.delete('/Genero/borrar', ContrGenero.deleteGenero)

//Permisos
router.get("/permisos", ContrPermisos.getPermisos)
router.post("/permisosRol", ContrPermisos.getPermisosXRol)
router.post("/permiso/consulta", ContrPermisos.postPermisosObj)
router.put("/permisosOBJ1", ContrPermisos.putPermisosXRolOBJ1)
router.put("/permisosOBJ2", ContrPermisos.putPermisosXRolOBJ2)
router.put("/permisosOBJ3", ContrPermisos.putPermisosXRolOBJ3)
router.put("/permisosOBJ4", ContrPermisos.putPermisosXRolOBJ4)
router.put("/permisosOBJ5", ContrPermisos.putPermisosXRolOBJ5)
router.put("/permisosOBJ6", ContrPermisos.putPermisosXRolOBJ6)
router.put("/permisosOBJ7", ContrPermisos.putPermisosXRolOBJ7)
router.put("/permisosOBJ8", ContrPermisos.putPermisosXRolOBJ8)
router.put("/permisosOBJ9", ContrPermisos.putPermisosXRolOBJ9)

//Recordatorio
router.get('/recordatorios', ContrRecordatorio.getCitas)
router.get('/recordatorio', ContrRecordatorio.getCita)
router.post('/recordatorioCitas/agregar', ContrRecordatorio.postCitas)
router.delete('/eliminarCita', ContrRecordatorio.deleteCita)
router.put('/actualizarCita', ContrRecordatorio.putCitas)
router.post('/recordatorios/fecha', ContrRecordatorio.getFecha)
router.get('/clientesEx', ContrRecordatorio.getClienteEx)


//Descuentos
router.get('/Descuento', ContrDescuento.getDescuento)
router.get('/DescuentosInactivos', ContrDescuento.getDescuentosInactivos)
router.post('/Descuento/NuevoDescuento', ContrDescuento.postInsertDescuento)
router.put('/Descuento/ActualizarDescuento', ContrDescuento.putDescuento)
router.delete('/Descuento/BorrarDescuento', ContrDescuento.deleteDescuento)

//Lentes
router.get('/Lentes', ContrLente.getLente)
router.get('/LentesInactivos', ContrLente.getLentesInactivos)
router.post('/Lentes/NuevoLente', ContrLente.postInsertLente)
router.put('/Lentes/ActualizarLente', ContrLente.putUpdLente)
router.delete('/Lentes/BorrarLente', ContrLente.deleteLente)

import { ContrBackup } from '../controllers/backup.js';
router.get('/backup', ContrBackup.getBackup);
router.get('/archivos', ContrBackup.getArchivos);
router.post('/restore', ContrBackup.getRestore);



export default router