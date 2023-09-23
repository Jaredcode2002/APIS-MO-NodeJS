import express  from "express";
import bodyParser from "body-parser"
import router from "./routes/rutas.js";
import cors from "cors";
import morgan from 'morgan'//desinstalable

const app = express();
app.set('port', process.env.PORT || 4000);
//const PORT = process.env.PORT || 4000;
app.use(express.json());

app.use(cors())
app.use(bodyParser.json())
app.use(express.json())
app.use(morgan('dev'))

app


// import express  from "express";
// import bodyParser from "body-parser"
// import router from "./routes/rutas.js";
// import cors from "cors";
// import morgan from 'morgan'//desinstalable

// const app = express();
// app.set('port', process.env.PORT || 4000);
// const PORT = process.env.PORT || 4000;
// app.use(express.json());

// app.use(cors())
// app.use(bodyParser.json())
// app.use(express.json())
// app.use(morgan('dev'))

// app.use('/api',router)


// app.listen(PORT,()=>console.log(`Servidor corriendo en puerto ${PORT}`)) 

// app.listen(app.get('port'), '0.0.0.0', () => {
//     console.log(`Server listening on port ${app.get('port')}`);
//   });