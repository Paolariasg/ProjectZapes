const express = require('express');
const mysql = require('mysql2');
const bodyParser = require('body-parser');
const cors = require('cors');


const app = express();
app.use(express.json())
app.use(cors());
app.use(bodyParser.json());


// Conexión a la base de datos
const connection = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database: 'pruebazepas'
});

// Peticiones para registrar un usuario en la base de datos
app.post('/registrar', (req, res) => {
    const { nombre, apellido, correo, password } = req.body;
    const usuario = { nombre, apellido, correo, password };
    connection.query('INSERT INTO usuarios SET ?', usuario, (error) => {
        if (error) {
            return res.status(500).send({ error: 'Ya existe una cuenta con este correo' });
        } else {
            res.send({ message: 'Usuario registrado exitosamente' });
        }
    });
});

// Peticiones para inicio de sesión
app.post('/sesion', (req, res) => {
    const { correo, password } = req.body;

    // Verificar que el correo electrónico y la contraseña sean válidos
    if (!correo || !password) {
        return res.status(400).send('Correo electrónico y contraseña son requeridos');
    }

    // Verificar que el correo electrónico y la contraseña coincidan en la base de datos
    connection.query('SELECT * FROM usuarios WHERE correo = ? AND password = ?', [correo, password], (err, results) => {
        if (err) {
            console.error('Error al buscar usuario en la base de datos: ', err);
            return res.status(500).send('Error al buscar usuario en la base de datos');
        }

        if (results.length === 0) {
            return res.status(401).send('Correo electrónico o contraseña incorrectos');
        }

        // Inicio de sesión exitoso
        res.status(200).send({ message: 'Sesión iniciada' });
    });
});


// Petición para traer los productos de la base de datos
app.get('/productos', (req, res) => {
    const limit = req.query.limit || 21;
    offset = req.query.offset || 0;
    const sql = `SELECT * FROM productos LIMIT ${limit} OFFSET ${offset}`;

    connection.query(sql, (err, results) => {
        if (err) {
            console.error(err);
            res.status(500).json({ error: 'Error interno del servidor' });
            return;
        }

        res.json(results);
    });
});

app.listen(3000, () => {
    console.log('http://localhost:3000/');
});