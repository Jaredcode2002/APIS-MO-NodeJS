import { ModGestion } from "../models/Gestion.js";

export const ContrGestion = {
    getSucursal:async(req,res)=> {
        const sucursal = await ModGestion.getSucursal()
        res.json(sucursal)
       
    },

    postInsertSucursal: async (req,res)=> {
try {
    const{departamento,ciudad,direccion,telefono}=req.body;
    const result = await ModGestion.postInsertSucursal({departamento,ciudad,direccion,telefono});
    res.status(201).json({ id: result.id });
    // res.status(200).json(sucursal);
} catch (error) {
    console.log(error);
}
    },


    putInsertSucursal : async (req,res)=>{
try {
    const{departamento,ciudad,direccion,telefono,IdSucursal} = req.body;
            const result  = await ModGestion.putInsertSucursal({departamento,ciudad,direccion,telefono,IdSucursal});
           res.status(201).json({ id: result.id});
} catch (error) {
    console.log(error);
    
}
    },

    deleteSucursal : async (req,res)=>{
try {
    const{IdSucursal} = req.body;
    const result  = await ModGestion.deleteSucursal({IdSucursal});
   res.status(201).json({ id: result.id});
    
} catch (error) {
    console.log(error);
}

},

}