const mysql = require('mysql2');

const connection = mysql.createConnection({
    host: '127.0.0.1',
    user: 'root',
    password: 'root',
    database: 'SIET',
    port: 3306,
});

connection.connect((err) => {
    if (err) {
        console.error('Error de conexión a la base de datos:', err);
        return;
    }
    console.log('Conectado a la base de datos');
});

function guardarResultados(idTienda, idEncuesta, idQuestion, answerText) {
    console.log('Valores a insertar:', idTienda, idEncuesta, idQuestion, answerText);

    const query = `
        INSERT INTO answers (idTienda, idEncuesta, foreingIdQuestions, answerText)
        VALUES (?, ?, ?, ?)
    `;

    connection.query(query, [idTienda, idEncuesta, idQuestion, answerText], (err, results, fields) => {
        if (err) {
            console.error('Error al insertar en la base de datos:', err);
            return;
        }
        console.log('Resultados guardados en la base de datos:', results);
    });
}



function insertarTienda(nameShop) {
    const query = `
    INSERT INTO shops (nameShop)
    VALUES (?)
  `;

    connection.query(query, [nameShop], (err, results, fields) => {
        if (err) {
            console.error('Error al insertar tienda en la base de datos:', err);
            return;
        }
        console.log('Tienda insertada en la base de datos:', results);
    });
}

function insertarEncuesta(nameSurvey) {
    const query = `
    INSERT INTO surveys (nameSurvey)
    VALUES (?)
  `;

    connection.query(query, [nameSurvey], (err, results, fields) => {
        if (err) {
            console.error('Error al insertar encuesta en la base de datos:', err);
            return;
        }
        console.log('Encuesta insertada en la base de datos:', results);
    });
}

function obtenerTiendas(callback) {
    const query = "SELECT * FROM shops"

    connection.query(query, (err, results, fields) => {
        if (err) {
            console.error('Error al obtener tiendas de la base de datos:', err);
            return;
        }
        callback(results);
    });
}

function obtenerEncuestas(callback) {
    const query = "SELECT * FROM surveys";

    connection.query(query, (err, results, fields) => {
        if (err) {
            console.error('Error al obtener encuestas de la base de datos:', err);
            return;
        }
        callback(results);
    });
}

module.exports = {
    guardarResultados,
    insertarTienda,
    insertarEncuesta,
    obtenerTiendas,
    obtenerEncuestas,
};

process.on('exit', () => {
    connection.end();
});
