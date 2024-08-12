const express = require('express');
const routes = express.Router();

// Leer todas las tareas
routes.get('/', (req, res) => {
    req.getConnection((err, conn) => {
        if (err) return res.send(err);

        conn.query('SELECT * FROM actividades', (err, rows) => {
            if (err) return res.send(err);

            res.json(rows);
        });
    });
});

// Leer una tarea específica por ID
routes.get('/:id', (req, res) => {
    const { id } = req.params;
    req.getConnection((err, conn) => {
        if (err) return res.send(err);

        conn.query('SELECT * FROM actividades WHERE id = ?', [id], (err, rows) => {
            if (err) return res.send(err);

            res.json(rows[0]);
        });
    });
});

// Crear una nueva tarea
routes.post('/', (req, res) => {
    const tarea = req.body;
    req.getConnection((err, conn) => {
        if (err) return res.send(err);

        conn.query('INSERT INTO actividades SET ?', [tarea], (err, rows) => {
            if (err) return res.send(err);

            res.send('Tarea creada');
        });
    });
});

// Actualizar una tarea existente
routes.put('/:id', (req, res) => {
    const { id } = req.params;
    const tarea = req.body;
    console.log("Datos recibidos para actualizar:", tarea);
    req.getConnection((err, conn) => {
        if (err) return res.send(err);

        conn.query('UPDATE actividades SET ? WHERE id = ?', [tarea, id], (err, rows) => {
            if (err) return res.send(err);

            res.send('Tarea actualizada');
        });
    });
});

// Eliminar una tarea
routes.delete('/:id', (req, res) => {
    const { id } = req.params;
    req.getConnection((err, conn) => {
        if (err) return res.send(err);

        conn.query('DELETE FROM actividades WHERE id = ?', [id], (err, rows) => {
            if (err) return res.send(err);

            res.send('Tarea eliminada');
        });
    });
});

module.exports = routes;
