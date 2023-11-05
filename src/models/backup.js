import { connectDB } from "../config/Conn.js";
import { exec } from 'child_process';
//import fs from 'fs';

export const ModBackup = {

    getBackup: async () => {


        const Fecha = new Date();
        const year = Fecha.getFullYear();
        //esto es para que les agregue cero a los meses y dias que son menosres a 10
        const month = (Fecha.getMonth() + 1).toString().padStart(2, '0');
        const day = Fecha.getDate().toString().padStart(2, '0');
        const FechaCreacion = `${year}-${month}-${day}`;

        let conexion;
        let host, user, password, database;

        try {
            conexion = await connectDB();

            // Obtén los valores de host, usuario, contraseña y base de datos de la tabla 'tbl_ms_parametros'
            const [filasHost] = await conexion.query("SELECT valor FROM tbl_ms_parametros where Id_Parametro=10;");
            // host = filasHost[0].valor;
            console.log(filasHost[0].valor);

            const [filasUser] = await conexion.query("SELECT valor FROM tbl_ms_parametros where Id_Parametro=11;");
            /* user = filasUser[0].valor;
            console.log(user); */
            console.log(filasUser[0].valor);

            const [filasPassword] = await conexion.query("SELECT valor FROM tbl_ms_parametros where Id_Parametro=12;");
            /*   password = filasPassword[0].valor;
              console.log(password); */
            console.log(filasPassword[0].valor);


            const [filasDatabase] = await conexion.query("SELECT valor FROM tbl_ms_parametros where Id_Parametro=13;");
            /* database = filasDatabase[0].valor;
            console.log(database); */
            console.log(filasDatabase[0].valor);


            // Cierra la conexión después de obtener los datos

            // return filasHost[0].valor;
            // return filasUser[0].valor;
            // return filasPassword[0].valor;
            // return filasDatabase[0].valor;



            if (!filasHost[0].valor || !filasUser[0].valorr || !filasPassword[0].valor || !filasDatabase[0].valor) {
                throw new Error("No se pudieron obtener los datos de conexión.");
            }
            console.log(filasHost);

            const fileName = `./uploads/${FechaCreacion}_Backup23.sql`;
            const dumpCommand = `mysqldump -h ${filasHost[0].valor} -u ${filasUser[0].valor} --password=${filasPassword[0].valor} ${filasDatabase[0].valor} --routines --databases ${filasDatabase[0].valor} > ${fileName}`;
            console.log(dumpCommand);
            exec(dumpCommand, async (error, stdout, stderr) => {
                if (error) {
                    throw new Error("Ha ocurrido un error al realizar el respaldo de la base de datos.");
                } else {
                    console.log('¡Backup creado exitosamente!');
                }
            });
            return dumpCommand;
        } catch (error) {
            throw error; // Propaga el error
        } finally {
            if (conexion) {
                conexion.end(); // Cierra la conexión en cualquier caso
            }
        }



    },


    getBackup2: async () => {
        let conexion;
        try {
            conexion = await connectDB();

            // const fs = (fs);
            const Fecha = new Date();
            const year = Fecha.getFullYear();
            //esto es para que les agregue cero a los meses y dias que son menosres a 10
            const month = (Fecha.getMonth() + 1).toString().padStart(2, '0');
            const day = Fecha.getDate().toString().padStart(2, '0');
            const FechaCreacion = `${year}-${month}-${day}`;

            const config = {
                host: 'localhost',
                user: 'root',
                password: '',
                database: 'proyectomultioptica',
            };

            const fileName = `./uploads/${FechaCreacion}_Backup22.sql`; // Ruta donde se guardará el archivo de respaldo
            const dumpCommand = `mysqldump -h ${config.host} -u ${config.user} --password=${config.password}  ${config.database} --routines --databases ${config.database} > ${fileName}`;
            console.log(dumpCommand);



            exec(dumpCommand, async (error, stdout, stderr) => {
                if (error) {
                    console.log(error)
                    //req.flash('error','Error al generar el respaldo de la base de datos')
                    console.log("Ha ocurrido un error");
                } else {
                    //req.flash('success','¡Backup creado exitosamente!')
                    //await pool.query('insert into Tbl_Bitacora (Fecha,Accion,Descripcion,IdObjeto) values (?,?,?,?)',[FechaCreacion,'Backup',`${req.user[0].Usuario} realizó un backup`,13]);
                    console.log('¡Backup creado exitosamente!')
                }

            });

            conexion.end()

        } catch (error) {
            console.log(error);
            conexion.end()
            throw new Error("Error al obtener los datos de la base");

        }




    }


}





