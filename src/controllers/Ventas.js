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
            const { fechaEntrega, fechaLimiteEntrega, IdCliente, idEmpleado, RTN,IdGarantia,IdPromocion,IdDescuento,precioLente,cantidad,IdProducto,idUsuario} = req.body
            const result = await ModVentas.postInsertVentas({ fechaEntrega, fechaLimiteEntrega, IdCliente, idEmpleado, RTN,IdGarantia,IdPromocion,IdDescuento,precioLente,cantidad,IdProducto,idUsuario})
            res.status(201).json({ id: result.id });
        } catch (error) {
            console.log(error);
        }
    },

   

 
}
