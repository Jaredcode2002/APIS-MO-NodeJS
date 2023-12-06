import { connectDB } from "../config/Conn.js";
import { ModInventario } from "./inventario.js";

export const ModKardex = {
  getKardex: async () => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query(
        "SELECT " +
        "k.idKardex, " +
        "u.Usuario, " +
        "tm.IdTipoMovimiento, " +
        "tm.descripcion AS movimiento, " +
        "CONCAT(ma.descripcion, ' - ', mo.detalle) AS producto, " +
        "k.fechayHora, " +
        "SUM(CASE WHEN k.IdTipoMovimiento IN (1, 3) THEN k.cantidad ELSE 0 END) AS total_compra, " +
        "MAX(CASE WHEN k.IdTipoMovimiento IN (1, 3) THEN c.idCompra ELSE 0 END) AS idCompra, " +
        "SUM(CASE WHEN k.IdTipoMovimiento IN (2, 4) THEN k.cantidad ELSE 0 END) AS total_venta, " +
        "MAX(CASE WHEN k.IdTipoMovimiento IN (2, 4) THEN v.idVenta ELSE 0 END) AS idVenta, " +
        "k.descripcion " +
        "FROM tbl_Kardex k " +
        "INNER JOIN tbl_tipomovimiento AS tm ON k.IdTipoMovimiento = tm.IdTipoMovimiento " +
        "INNER JOIN tbl_producto AS prod ON k.IdProducto = prod.IdProducto " +
        "INNER JOIN tbl_ms_usuario AS u ON k.Id_Usuario = u.Id_Usuario " +
        "INNER JOIN tbl_modelo AS mo ON prod.IdModelo = mo.IdModelo " +
        "INNER JOIN tbl_marca AS ma ON mo.idMarca = ma.IdMarca " +
        "LEFT JOIN tbl_KardexCompra kc ON k.idKardex = kc.idKardex " +
        "LEFT JOIN tbl_Compra c ON kc.idCompra = c.idCompra " +
        "LEFT JOIN tbl_compradetalle AS cd ON c.IdCompra = cd.IdCompra " +
        "LEFT JOIN tbl_KardexVenta kv ON k.idKardex = kv.idKardex " +
        "LEFT JOIN tbl_Venta v ON kv.idVenta = v.IdVenta " +
        "LEFT JOIN tbl_ventadetalle AS vd ON v.IdVenta = vd.IdVenta " +
        "GROUP BY " +
        "k.idKardex, " +
        "u.Usuario, " +
        "tm.IdTipoMovimiento, " +
        "tm.descripcion, " +
        "CONCAT(ma.descripcion, ' - ', mo.detalle), " +
        "k.fechayHora, " +
        "k.descripcion " +
        "ORDER BY k.idKardex"
      );
      return filas;
    } catch (error) {
      console.log(error);
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
    }
  },

  postKardexCompra: async (kardex,idCompra) => {
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
      const idKardex = filas.insertId
      const [kardexCompraResult] = await conexion.query(
        "INSERT INTO tbl_kardexcompra (idKardex, idCompra) VALUES (?, ?);",
        [idKardex, idCompra]
      );
      return { estado: "ok" };
    } catch (error) {
      console.log(error);
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
    }
  },
  postKardexAnularVenta: async (kardex, idUsuario) => {
    try {
      const conexion = await connectDB();
      const [filas] = await conexion.query(
        "INSERT INTO  tbl_kardex (IdTipoMovimiento,IdProducto,Id_Usuario,fechaYHora,cantidad) VALUES(5,?,?,?,?);",
        [kardex.IdProducto, idUsuario, kardex.fechaCompra, kardex.cantidad]
      );
      return { estado: "ok" };
    } catch (error) {
      console.log(error);
    }
  },
  postKardexVenta: async (kardex,idVenta) => {
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
      const idKardex = filas.insertId
      const [kardexVentaResult] = await conexion.query(
        "INSERT INTO tbl_kardexventa (idKardex, idVenta) VALUES (?, ?);",
        [idKardex, idVenta]
      );
      conexion.end()
      return { estado: "ok" };
    } catch (error) {
      console.log(error);
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
    }
  },
};
