import express  from "express";
import bodyParser from "body-parser"
import router from "./routes/rutas.js";
import cors from "cors";
import morgan from 'morgan'//desinstalable

const PORT = process.env.PORT || 3000
const app = express()

app.use(cors())
app.use(bodyParser.json())
app.use(express.json())
app.use(morgan('dev'))

app.use('/api',router)


app.listen(PORT,()=>console.log(`Servidor corriendo en puerto ${PORT}`)) 