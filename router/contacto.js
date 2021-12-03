const { Router } = require('express');
const nodemailer = require('nodemailer');
const contacto = new Router();


    //Envio de mail
   
    
        contacto.post("/send-email",(req, res) =>{
        const nombre = req.body.nombre;
        const apellido = req.body.apellido;
        const email = req.body.email;
        const telefono = req.body.telefono;
        const mensaje = req.body.mensaje;


        const transporter = nodemailer.createTransport({
            host: process.env.SMTP_HOST,
            port: process.env.SMTP_PORT,
            secure: false,
            auth: {
            user: process.env.SMTP_USER,
            pass: process.env.SMTP_PASS,
        },
        });
        const mailOptions={
            from: "Remitente",
            to:"matiasflores85@gmail.com",
            subject: "Firenze Consultas",
            html:`
            <h1> Consulta </h1>
            <ul>
                <li><b>Nombre:</b> ${nombre} </li>
                <li><b>Apellido:</b> ${apellido} </li>
                <li><b>Email:</b> ${email} </li>
                <li><b>Telefono:</b> ${telefono} </li>
            </ul>
            <p>${mensaje}</p>`
        };
       
      transporter.sendMail(mailOptions, (error, info)=>{
        if (error){
            res.status(500).send(error.message);
        }else {
            console.log("Email enviado");
            res.render('enviado');
            res.status(200).jsonp(reqbody);
        }	
        });
    });
    

    module.exports = contacto;