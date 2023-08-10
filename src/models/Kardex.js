import { connectDB } from "../config/Conn.js";

export const ModKardex = {
  
    getKardex: async () => {
      try {
      const conexion = await connectDB();
        const [filas] = await conexion.query("select k.IdKardex, tm.descripcion as TipoMovimiento, p.descripcion as Producto, u.Usuario, k.fechaYHora, k.cantidad from tbl_kardex as k inner join tbl_tipomovimiento as tm on k.IdTipoMovimiento=tm.IdTipoMovimiento inner join tbl_producto as p on k.IdProducto=p.IdProducto inner join tbl_modelo as m on m.IdModelo=p.IdModelo inner join tbl_ms_usuario as u on u.Id_Usuario=k.Id_Usuario;");
        return filas;
      } catch (error) {
        console.log(error);
        throw new Error("Error al obtener el registro");
      } 
    },
    postProductoKardexFiltro:async (kardex)=>{
      let conexion
      try {
         conexion = await connectDB();
              const [filas] = await conexion.query("SELECT p.descripcion as Producto, k.cantidad as Cantidad, tm.descripcion as Movimiento FROM tbl_kardex AS k INNER JOIN tbl_producto AS p ON p.`IdProducto` = k.`IdProducto` inner join tbl_tipomovimiento as tm on k.`IdTipoMovimiento`=tm.`IdTipoMovimiento` where k.`IdProducto`=?",
            [
              kardex.IdProducto,
            ]
          );
          conexion.end()
          return filas;
        } catch (error) {
          console.log(error);
          conexion.end()
          throw new Error("Error al obtener los productos");
        }
    },
  
    postKardexCompra: async (kardex) => {
      try {
      const conexion = await connectDB();
            const [filas] = await conexion.query("INSERT INTO  tbl_kardex (IdTipoMovimiento,IdProducto,Id_Usuario,fechaYHora,cantidad) VALUES(1,?,?,?,?);",
          [
            kardex.idProducto,
            kardex.idUsuario,
            kardex.fechaYHora,
            kardex.cantidad,
          ]
        );
        return { estado:"ok"};
      } catch (error) {
        console.log(error);
        throw new Error("Error al agregar registro");
      }
  },
  postKardexVenta: async (kardex) => {
    try {
    const conexion = await connectDB();
          const [filas] = await conexion.query("INSERT INTO  tbl_kardex (IdTipoMovimiento,IdProducto,Id_Usuario,fechaYHora,cantidad) VALUES(2,?,?,?,?);",
        [
          kardex.IdProducto,
          kardex.idUsuario,
          kardex.fechaYHora,
          kardex.cantidad,
        ]
      );
      return { estado:"ok"};
    } catch (error) {
      console.log(error);
      throw new Error("Error al agregar registro");
    }
},

  };