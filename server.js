const mysql = require('mysql2');
const express = require('express');
const bodyParser = require('body-parser');
const Swal = require('sweetalert2');
const cors = require('cors');

const app = express();
const port = 3000;

// Configuración de conexión a la base de datos
const connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'root',
    database: 'SIET',
    port: 3306,
});

// Conexión a la base de datos
connection.connect((err) => {
    if (err) {
        console.error('Error al conectar a la base de datos: ', err);
        return;
    }
    console.log('Conexión exitosa a la base de datos');
});

// Configuración para analizar datos en las solicitudes
app.use(bodyParser.urlencoded({ extended: true }));
app.use(bodyParser.json());
app.use(cors());

// Ruta para guardar encuestas
app.post('/guardar-respuestas', (req, res) => {
    guardarRespuestas(req.body, res);
});

// Función para guardar las respuestas en la base de datos
function guardarRespuestas(encuestaData, res) {
    const { idEncuesta, respuestas } = encuestaData;

    // Itera sobre las respuestas y las guarda en la base de datos
    respuestas.forEach((respuesta) => {
        const { idQuestion, answerValue } = respuesta;

        const answersData = {
            survey_id: idEncuesta,
            idQuestion,
            answerValue,
        };

        // Inserta las respuestas en la tabla de respuestas
        const insertAnswersQuery = 'INSERT INTO answers SET ?';
        connection.query(insertAnswersQuery, answersData, (err, answersResult) => {
            if (err) {
                console.error('Error al guardar las respuestas en la base de datos: ', err);
                res.status(500).json({ success: false, error: 'Error al guardar las respuestas' });
            } else {
                console.log('Respuesta guardada en la base de datos:', answersResult);
            }
        });
    });

    res.status(200).json({ success: true });
}




// Ruta para obtener todas las tiendas
app.get('/mostrar-tiendas', (req, res) => {
    const query = 'SELECT * FROM shops';
    connection.query(query, (err, results) => {
        if (err) {
            console.error('Error al obtener las tiendas:', err);
            res.status(500).json({ error: 'Error al obtener las tiendas' });
        } else {
            res.json({ tiendas: results });
        }
    });
});

// Ruta para obtener todas las encuestas
app.get('/mostrar-encuestas', (req, res) => {
    const query = 'SELECT * FROM surveys';
    connection.query(query, (err, results) => {
        if (err) {
            console.error('Error al obtener las encuestas:', err);
            res.status(500).json({ error: 'Error al obtener las encuestas' });
        } else {
            res.json({ encuestas: results });
        }
    });
});


// Inicia el servidor
app.listen(port, () => {
    console.log(`Servidor escuchando en el puerto ${port}`);
});
