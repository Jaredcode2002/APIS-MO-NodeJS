import { ModVentas } from "../models/Ventas.js";

export const ContrVentas ={
    getVentas: async (req,res)=> {
        
            const ventas = await ModVentas.getVentas()
            res.json(ventas)
     
        
    },

    getVentaDetalle: async (req,res)=> {
        const {id} = req.body
        const ventadetalle = await ModVentas.postVentaDetalle({id})
        res.json(ventadetalle)
 
    
},
    
    postInsertVentas: async (req, res) => {
        
        try {
            const { fechaEntrega, fechaLimiteEntrega, IdCliente, idEmpleado, RTN,IdGarantia,IdPromocion,IdDescuento,cantidad,IdProducto,idUsuario,IdLente} = req.body
            const result = await ModVentas.postInsertVentas({ fechaEntrega, fechaLimiteEntrega, IdCliente, idEmpleado, RTN,IdGarantia,IdPromocion,IdDescuento,IdLente,cantidad,IdProducto,idUsuario})
            res.status(201).json(result);
        } catch (error) {
            console.log(error);
        }
    },

    postInsertVentasDeberitasDeberitas: async (req, res) => {
        
        try {
            const { fechaEntrega, fechaLimiteEntrega, IdCliente, idEmpleado, RTN,IdGarantia,IdPromocion,IdDescuento,cantidad,IdProducto,IdLente,precioLente,subtotal,total,nuevoPrecio,rebaja,idUsuario} = req.body
            const result = await ModVentas.postInsertDeberitasDeberitas({ fechaEntrega, fechaLimiteEntrega, IdCliente, idEmpleado, RTN,IdGarantia,IdPromocion,IdDescuento,IdLente,cantidad,IdProducto,rebaja,precioLente,subtotal,total,nuevoPrecio,idUsuario})
            res.status(201).json(result);
        } catch (error) {
            console.log(error);
        }
    },

    putUpdateVenta: async (req,res)=> {
        try {
            const {fecha,fechaLimiteEntrega,fechaEntrega,estado,observacion,IdCliente,idEmpleado,NumeroCAI,RTN,isv,subtotal,totalAPagar,IdVenta}=req.body
            const result = await ModVentas.putUpdateVenta({fecha,fechaLimiteEntrega,fechaEntrega,estado,observacion,IdCliente,idEmpleado,NumeroCAI,RTN,isv,subtotal,totalAPagar,IdVenta})
            res.status(201).json({ id: result.id});
        } catch (error) {
            console.log(error);
        }
    },

    deleteVenta: async (req,res)=>{
        try {
            const {IdVenta}=req.body
            const result = await ModVentas.putUpdateVenta({IdVenta})
            res.status(201).json({ id: result.id});
            
        } catch (error) {
            console.log(error);
        }

    },

}
