const express = require('express');
const bodyParser = require('body-parser');
const app = express();
const cors = require('cors');
const db = require('./database'); // Reemplaza con la ruta correcta

app.use(bodyParser.json());
app.use(cors());
app.post('/guardar-resultados', (req, res) => {
    const { idShop, idSurvey, idQuestion, numberValue } = req.body;

    db.guardarResultados(idShop, idSurvey, idQuestion, numberValue);

    res.json({ message: 'Resultados guardados exitosamente' });
});
app.post('/insertar-tienda', (req, res) => {
    const { nameShop } = req.body;

    db.insertarTienda(nameShop);

    res.json({ message: 'Tienda insertada exitosamente' });
});

app.post('/insertar-encuesta', (req, res) => {
    const { nameSurvey } = req.body;

    db.insertarEncuesta(nameSurvey);

    res.json({ message: 'Encuesta insertada exitosamente' });
});

app.get('/obtener-tiendas', (req, res) => {
    db.obtenerTiendas((tiendas) => {
        res.json(tiendas);
    });
});

app.get('/obtener-encuestas', (req, res) => {
    db.obtenerEncuestas((encuestas) => {
        res.json(encuestas);
    });
});

const PORT = 3000;
app.listen(PORT, () => {
    console.log(`Servidor Node.js escuchando en el puerto ${PORT}`);
});
