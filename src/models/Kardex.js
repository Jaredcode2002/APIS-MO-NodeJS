import { connectDB } from "../config/Conn.js";
import { ModInventario } from "./inventario.js";

export const ModKardex = {
  getKardex: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query(
        "select k.IdKardex, tm.descripcion as TipoMovimiento, p.descripcion as Producto, u.Usuario, k.fechaYHora, k.cantidad from tbl_kardex as k inner join tbl_tipomovimiento as tm on k.IdTipoMovimiento=tm.IdTipoMovimiento inner join tbl_producto as p on k.IdProducto=p.IdProducto inner join tbl_modelo as m on m.IdModelo=p.IdModelo inner join tbl_ms_usuario as u on u.Id_Usuario=k.Id_Usuario ORDER BY k.IdKardex DESC;"
      );
      return filas;
    } catch (error) {
      console.log(error);
      throw new Error("Error al obtener el registro");
    }
  },
  postProductoKardexFiltro: async (kardex) => {
    let conexion;
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query(
        "SELECT p.descripcion as Producto, k.cantidad as Cantidad, tm.descripcion as Movimiento FROM tbl_kardex AS k INNER JOIN tbl_producto AS p ON p.`IdProducto` = k.`IdProducto` inner join tbl_tipomovimiento as tm on k.`IdTipoMovimiento`=tm.`IdTipoMovimiento` where k.`IdProducto`=?",
        [kardex.IdProducto]
      );
      conexion.end();
      return filas;
    } catch (error) {
      console.log(error);
      conexion.end();
      throw new Error("Error al obtener los productos");
    }
  },

  postKardexCompra: async (kardex) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query(
        "INSERT INTO  tbl_kardex (IdTipoMovimiento,IdProducto,Id_Usuario,fechaYHora,cantidad) VALUES(1,?,?,?,?);",
        [
          kardex.idProducto,
          kardex.idUsuario,
          kardex.fechaYHora,
          kardex.cantidad,
        ]
      );
      return { estado: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al agregar registro");
    }
  },

  postKardexAnularCompra: async (kardex, idUsuario) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query(
        "INSERT INTO  tbl_kardex (IdTipoMovimiento,IdProducto,Id_Usuario,fechaYHora,cantidad) VALUES(5,?,?,?,?);",
        [kardex.IdProducto, idUsuario, kardex.fechaCompra, kardex.cantidad]
      );
      return { estado: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al agregar registro");
    }
  },
  postKardexVenta: async (kardex) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query(
        "INSERT INTO  tbl_kardex (IdTipoMovimiento,IdProducto,Id_Usuario,fechaYHora,cantidad) VALUES(2,?,?,?,?);",
        [
          kardex.IdProducto,
          kardex.idUsuario,
          kardex.fechaYHora,
          kardex.cantidad,
        ]
      );
      return { estado: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al agregar registro");
    }
  },
  getTipoMovimientos: async () => {
    let conexion;
    try {
      conexion = await connectDB();
      const [filas] = await conexion.query(
        "SELECT * FROM tbl_tipomovimiento WHERE `IdTipoMovimiento` = 3 OR `IdTipoMovimiento` = 4 "
      );
      conexion.end();
      return filas;
    } catch (error) {
      console.log(error);
    }
  },
  postExtraordinarioMv: async (kardex) => {
    try {
      const conexion = await connectDB();
      console.log(kardex);
    

      const [filas] = await conexion.query("INSERT INTO tbl_kardex (IdTipoMovimiento, IdProducto, Id_Usuario, fechaYHora, cantidad, descripcion) VALUES (?, ?, ?, ?, ?, ?)", [
        kardex.IdTipoMovimiento,
        kardex.idProducto,
        kardex.idUsuario,
        kardex.fechaYHora,
        kardex.cantidad,
        kardex.descripcion,
      ]);
      if (kardex.IdTipoMovimiento === 3) {
        await ModInventario.putUpdateInventarioCompras(kardex);
      } else if (kardex.IdTipoMovimiento === 4) {
        await ModInventario.putUpdateInventarioVentas(kardex);
      }
      return { estado: "ok" };
    } catch (error) {
      console.log(error);
      throw new Error("Error al agregar registro");
    }
  },
};
