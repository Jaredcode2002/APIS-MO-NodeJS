import express from "express";
import { ContrUsuario } from "../controllers/usuario.js";
import { ContrLogin } from "../controllers/login.js";
import { Mailer } from "../controllers/correos.js";
import { ContrCompraDetalle } from "../controllers/ComprasDetalle.js";
import { ContrVentaDetalle } from "../controllers/VentasDetalles.js";
import { ContrKardex } from "../controllers/kardex.js";
import { ContrVentaDetalleDescuento } from "../controllers/VentasDetalleDescuentos.js";


import { ContrGarantia } from "../controllers/garantia.js";
import { ContrMarca } from "../controllers/marca.js";
import { ContrModelo } from "../controllers/modelo.js";
import { ContrInventario } from "../controllers/inventario.js";
import { ContrPago } from "../controllers/pago.js";
import { ContrProducto } from "../controllers/producto.js";
import { ContrProductoProm } from "../controllers/productopromocion.js";
import { ContrPromocion } from "../controllers/promocion.js";
import { ContrPromocionMarca } from "../controllers/promocionmarca.js";
import { ContrTipoPago } from "../controllers/tipopago.js";
import { ContrParametro } from "../controllers/parametros.js";

import { ContrEmpleado } from "../controllers/empleado.js";
import { ContrPreguntas } from "../controllers/preguntas.js";
import { ContrVentaDetalleProm } from "../controllers/ventaDetallePromocion.js";
import { ContrVentaDetallePromMarca } from "../controllers/ventaDetallePromocionMarca.js";

import { ContrCompra } from "../controllers/compra.js";
import { ContrGestion } from "../controllers/Gestion.js";
import { ContrVentas } from "../controllers/ventas.js";
import { ContrRol } from "../controllers/rol.js";
import { ContrClientes } from "../controllers/clientes.js";
import { ContrProveedor } from "../controllers/proveedor.js";
import { ContrBitacora } from "../controllers/bitacora.js";

import { TokenContr } from "../controllers/token.js";
import { ContrAutoReg } from "../controllers/autoregistro.js";
import { ContrEstado } from "../controllers/estado.js";

const router = express.Router();

//usuario
router.get('/usuarios',ContrUsuario.getUsuarios)
router.post('/usuario/insert',ContrUsuario.postUsuario)
router.put('/usuario/update',ContrUsuario.putUsuario)

router.delete('/usuario/delete',ContrUsuario.delUsuario)
router.get('/usuario/fechaExp',ContrUsuario.getFechaExp)
router.put('/usuario/estado',ContrUsuario.putUpdateEstado)
router.put('/usuario/estado/activo',ContrUsuario.putUpdateEstadoActivo)
router.put('/usuario/UpdContra',ContrUsuario.putUpdatePassword)
router.put('/usuario/ActualizarContra',ContrUsuario.ActualizarContra)//por algun pedo futuro. Att: Jared del pasado
router.post('/usuario/compararContra',ContrUsuario.compararContraVSHistorial)
router.post('/usuario/histPasswrd',ContrUsuario.postHistPassword)


//token
router.post('/token/enviarCodigo',TokenContr.enviarCodigo)
router.post('/token/verificar',TokenContr.verificarCodigo)
router.post('/token/id',TokenContr.obtenerId)


//correo
router.post('/mail/recover',Mailer.sendMail)


//Login
router.post('/login/compare',ContrLogin.getPsswrd)
router.get('/login/preguntas',ContrLogin.getPreguntas)
router.post('/login',ContrLogin.getUser) 
router.put('/login/PVez',ContrLogin.putLoginPVez)

//test
// router.post('/test/encipt',ContrLogin.test)

//Clientes
router.get('/clientes',ContrClientes.getClientes)
router.post('/clientes/clienteNuevo',ContrClientes.postCliente)
router.put('/clientes/actualizar',ContrClientes.putCliente)
router.delete('/clientes/eliminar',ContrClientes.delCliente)


//Compra
router.get('/compra',ContrCompra.getCompras)
router.post('/compra/NuevaCompra',ContrCompra.postInsertCompra)
router.put('/compra/ActualizarCompra',ContrCompra.putUpdateCompra)
router.delete('/compra/EliminarCompra',ContrCompra.deleteCompra)

//Ventas
router.get('/Ventas',ContrVentas.getVentas)
router.post('/Ventas/NuevaVenta',ContrVentas.postInsertVentas)
router.put('/Ventas/ActualizarVenta',ContrVentas.putUpdateVenta)
router.delete('/Ventas/EliminarVenta',ContrVentas.deleteVenta)

//Gestion 
router.get('/Gestion',ContrGestion.getSucursal)
router.post('/Gestion/NuevaSucursal',ContrGestion.postInsertSucursal)
router.put('/Gestion/ActualizarSucursal',ContrGestion.putInsertSucursal)
router.delete('/Gestion/EliminarSucursal',ContrGestion.deleteSucursal)

//Rol
router.get('/Rol',ContrRol.getRol)
router.post('/Rol/NuevoRol',ContrRol.postRol)
router.put('/Rol/RolActualizado',ContrRol.putUpdateRol)
router.delete('/Rol/RolEliminado',ContrRol.deleteRol)

//AutoRegistro
router.post('/usuario/AutoRegistro', ContrAutoReg.postUsuarioAutoRegistro)




//empleado
router.get('/empleado',ContrEmpleado.getEmpleados)
//router.get('/empleado/get',ContrEmpleado.getEmpleado)
router.post('/empleado',ContrEmpleado.postEmpleado)
router.put('/empleado/actualizar',ContrEmpleado.putEmpleado)
router.delete('/empleado/eliminar',ContrEmpleado.delEmpleado)
router.get('/empleado/sucursal',ContrEmpleado.getSucursales)
router.get('/empleado/genero',ContrEmpleado.getGeneros)
router.post('/empleado/RegistroInvalido',ContrEmpleado.getEmpleadoExist) //Para consultar empleado existente


//preguntas
router.get('/preguntas',ContrPreguntas.getPreguntas)
router.post('/preguntas/agregar',ContrPreguntas.postPreguntas)
router.get('/preguntas/respuestas',ContrPreguntas.getRespuestas)
router.post('/preguntas/respuestas/agregar',ContrPreguntas.postRespuestas)
router.post('/preguntas/compararR',ContrPreguntas.compararRespuesta)
router.post('/correo/existe',ContrPreguntas.getUser) 

//ventaDetallePromocion
router.get('/ventaDetallePromocion',ContrVentaDetalleProm.getVentDetalleProm)
router.post('/ventaDetallePromocion',ContrVentaDetalleProm.InsertVentaDetallePromo)
router.put('/ventaDetallePromocion',ContrVentaDetalleProm.UpdateVentaDetallePromo)
router.delete('/ventaDetallePromocion',ContrVentaDetalleProm.DeleteVentaDetallePromo)


//ventaDetallePromocionMarca
router.get('/ventaDetallePromocionMarca',ContrVentaDetallePromMarca.getdetallemarca)
router.post('/ventaDetallePromocionMarca',ContrVentaDetallePromMarca.InsertVentaDetalleMarca)
router.put('/ventaDetallePromocionMarca',ContrVentaDetallePromMarca.UpdateVentaDetalleMarca)
router.delete('/ventaDetallePromocionMarca',ContrVentaDetallePromMarca.DeleteVentaDetalleMarca)

//PROVEEDORES
router.get('/proveedor',ContrProveedor.getProveedores)
router.post('/proveedor/NuevoProveedor',ContrProveedor.postInsertProveedor)
router.put('/proveedor/ActualizarProveedor',ContrProveedor.putUpdateProveedor)
router.delete('/proveedor/EliminarProveedor',ContrProveedor.deleteProveedor)


//BITACORA
//--Login y Recuperacion de Contraseña--
router.post('/bitacora/Login',ContrBitacora.postInsertLogin)
router.post('/bitacora/Recuperacion',ContrBitacora.postInsertContra)
router.post('/bitacora/PreguntaSeguridad',ContrBitacora.postPrgunta)
router.post('/bitacora/RespuestaSeguridad',ContrBitacora.postPrgunta)
//--Empleado--
router.post('/bitacora/Empleado',ContrBitacora.postInsertModEmpleado)
router.post('/bitacora/RegistroEmpleado',ContrBitacora.postInsertRegistroEmpleado)
router.post('/bitacora/ListaEmpleado',ContrBitacora.postVerListaEmpleados)
router.post('/bitacora/ActualizarEmpleado',ContrBitacora.postActualizarEmpleado)
router.post('/bitacora/EliminarEmpleado',ContrBitacora.postEliminarEmpleado)
//--Usuario--
router.post('/bitacora/Usuario',ContrBitacora.postInsertUsuario)
router.post('/bitacora/ListaUsuario',ContrBitacora.postListaUsuario)
router.post('/bitacora/ActualizacionUsuario',ContrBitacora.postActualizarUsuario)
router.post('/bitacora/EliminarUsuario',ContrBitacora.postEliminarUsuario)
//--Venta--
router.post('/bitacora/Venta',ContrBitacora.postModuloVenta)
router.post('/bitacora/NuevaVenta',ContrBitacora.postInsertVenta)
router.post('/bitacora/ListaVenta',ContrBitacora.postListaVenta)
router.post('/bitacora/ActualizacionVenta',ContrBitacora.postActualizacionVenta)
router.post('/bitacora/EliminarVenta',ContrBitacora.postEliminarVenta)
//--Garantia--
router.post('/bitacora/Garantia',ContrBitacora.postPantallaGarantia)
router.post('/bitacora/NuevaGarantia',ContrBitacora.postInsertGarantia)
router.post('/bitacora/ListaGarantia',ContrBitacora.postVerListaGarantia)
router.post('/bitacora/ActualizacionGarantia',ContrBitacora.postActualizarGarantia)
router.post('/bitacora/EliminarGarantia',ContrBitacora.postEliminarGarantia)




//Garantias
router.get('/garantias', ContrGarantia.getGarantias)
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
router.post('/marcas/crear', ContrMarca.postMarca)
router.put('/marcas/actualizar', ContrMarca.putMarca)
router.delete('/marcas/eliminar', ContrMarca.delMarca)

//Modelo
router.get('/modelos', ContrModelo.getModelos)
router.post('/modelos/crear', ContrModelo.postModelo)
router.put('/modelo/actualizar', ContrModelo.putModelo)
router.delete('/modelo/eliminar', ContrModelo.delModelo)

//Pago
router.get('/pagos', ContrPago.getPagos)
router.post('/pagos/crear', ContrPago.postPago)
router.put('/pagos/actualizar', ContrPago.putPago)
router.delete('/pagos/eliminar', ContrPago.delPago)

//Parametros
router.get('/parametros', ContrParametro.getParametros)
router.get('/parametros', ContrParametro.getIntentos)
router.get('/parametros', ContrParametro.getPreguntas)
router.get('/parametros', ContrParametro.getImpuesto)
router.get('/parametros', ContrParametro.getTiempoDReuintentoLogin)
router.put('/parametros/actualizar', ContrParametro.putParametro)
router.put('/parametros/actualizar', ContrParametro.putIntentos)
router.put('/parametros/actualizar', ContrParametro.putPreguntas)
router.put('/parametros/actualizar', ContrParametro.putImpuesto)
router.put('/parametros/actualizar', ContrParametro.putTiempoDReuintentoLogin)

//Producto
router.get('/producto', ContrProducto.getProducto)
router.get('/productos', ContrProducto.getProductos)
router.post('/productos/crear', ContrProducto.postProducto)
router.put('/productos/actualizar', ContrProducto.putProducto)
router.delete('/producto/eliminar', ContrProducto.delProducto)

//ProductoPromocion
router.get('/productopromociones', ContrProductoProm.getProductosProm)
router.post('/productopromociones/crear', ContrProductoProm.postProductoProm)
router.put('/productopromociones/actualizar', ContrProductoProm.putProductoProm)
router.delete('/productopromociones/eliminar', ContrProductoProm.delProductoProm)

//Promocion
router.get('/promociones', ContrPromocion.getPromocion)
router.post('/promociones/crear', ContrPromocion.postPromocion)
router.put('/promociones/actualizar', ContrPromocion.putPromocion)
router.delete('/promociones/eliminar', ContrPromocion.delPromocion)

//PromocionMarca
router.get('/promocionmarca', ContrPromocionMarca.getPromoMarca)
router.post('/promocionmarca/crear', ContrPromocionMarca.postPromoMarca)
router.put('/promocionmarca/actualizar', ContrPromocionMarca.putPromoMarca)
router.delete('/promocionmarca/eliminar', ContrPromocionMarca.delPromoMarca)


//TipoPago
router.get('/tipopago', ContrTipoPago.getTipoPagos)
router.post('/tipopago/crear', ContrTipoPago.postTipoPago)
router.put('/tipopago/actualizar', ContrTipoPago.putTipoPago)
router.delete('/tipopago/eliminar', ContrTipoPago.delTipoPago)


//DetalleCompra
 router.get('/ComprasDetalle',ContrCompraDetalle.GetCompraDetalle)
 router.post('/ComprasDetalle',ContrCompraDetalle.PostCompraDetalle)
 router.put('/ComprasDetalle',ContrCompraDetalle.PutCompraDetalle)
 router.delete('/ComprasDetalle',ContrCompraDetalle.DeleteCompraDetalle)

//DetalleVenta
router.get('/VentasDetalles',ContrVentaDetalle.GetVentaDetalle)
router.post('/VentasDetalles',ContrVentaDetalle.PostVentaDetalle)
router.put('/VentasDetalles',ContrVentaDetalle.PutVentaDetalle)
router.delete('/VentasDetalles',ContrVentaDetalle.DeleteVentaDetalle)

//Kardex
router.get('/kardex',ContrKardex.GetKardex)
router.post('/kardex',ContrKardex.PostKardex)

//VentaDetalleDescuento
router.get('/VentasDetalleDescuentos',ContrVentaDetalleDescuento.GetVentaDetalleDescuento)
router.post('/VentasDetalleDescuentos',ContrVentaDetalleDescuento.PostVentaDetalleDescuento)
router.put('/VentasDetalleDescuentos',ContrVentaDetalleDescuento.PutVentaDetalleDescuento)
router.delete('/VentasDetalleDescuentos',ContrVentaDetalleDescuento.DeleteVentaDetalleDescuento)

//Estados
router.put('/Estado/Activo',ContrEstado.updActivo)
router.put('/Estado/Inactivo',ContrEstado.updInactivo)

export default router