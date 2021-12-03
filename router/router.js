const { Router } = require('express');
const nodemailer = require('nodemailer');
const router = new Router();



router.get('/', (req, res)=>{
    res.render('index')
});

router.get('/suscripcion', (req, res)=>{
    res.render('suscripcion')
});

const mysql = require ('mysql');

//Conexión a la base de datos

const conn = mysql.createConnection({
    host: 'localhost',
    user: 'root',
    password: '',
    database:'suscripcion_firenze'
});

//Manejo de errores

conn.connect((err)=>{
	if (err) throw err;
	console.log ('conexión establecida...')
	});

//Select
router.get('/', (req,res)=>{
    let sql = "SELECT * FROM clientes"           
    let query = conn.query (sql, (err, results)=>{
     if (err) throw err;
     res.render ('clientes',{
         results: results
        })
    })
})    

//Insertar

router.post('/save', (req,res) =>{              
	let data = {clientes_nombre: req.body.clientes_nombre, clientes_apellido: req.body.clientes_apellido, clientes_fechadenacimiento: req.body.clientes_fechadenacimiento, clientes_telefono: req.body.clientes_telefono, clientes_mail: req.body.clientes_mail};
	let sql = "INSERT INTO clientes SET ?";
	let query = conn.query (sql, data, (err, results)=>{
		if (err) throw err;
		res.redirect('/');
	}) 	
})


    module.exports = router;