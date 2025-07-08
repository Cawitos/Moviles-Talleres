const express = require('express');
const cors = require('cors');
const db = require('./db');
require('dotenv').config();

const app = express();
app.use(cors());
app.use(express.json());

// Obtener todas las mascotas
app.get('/mascotas', (req, res) => {
  db.query('SELECT * FROM Mascota', (err, results) => {
    if (err) return res.status(500).send(err);
    res.json(results);
  });
});

// Obtener todas las citas
app.get('/citas', (req, res) => {
  db.query('SELECT * FROM Citas', (err, results) => {
    if (err) return res.status(500).send(err);
    res.json(results);
  });
});

// Agregar un recordatorio
app.post('/recordatorios', (req, res) => {
  const { id_Mascota, id_cliente, fecha, descripcion } = req.body;
  db.query(
    'INSERT INTO Recordatorios (id_Mascota, id_cliente, fecha, descripcion) VALUES (?, ?, ?, ?)',
    [id_Mascota, id_cliente, fecha, descripcion],
    (err, results) => {
      if (err) return res.status(500).send(err);
      res.json({ message: '✅ Recordatorio guardado', id: results.insertId });
    }
  );
});

// Iniciar servidor
const PORT = process.env.PORT || 3000;
app.listen(PORT, () => {
  console.log(`🚀 Servidor corriendo en http://localhost:${PORT}`);
});
