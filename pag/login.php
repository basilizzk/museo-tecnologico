<?php

    session_start();

    if(isset($_SESSION['usuario'])){
        header("location: ../pag/PaginaPP/index.php");
    }

?>



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Museo</title>
    <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,100;0,300;0,400;0,500;0,700;0,900;1,100;1,300;1,400;1,500;1,700;1,900&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="..\pag\css\login.css">
</head>
<body>
    


<div class="contenedor__todo" style="margin-top: -80px;" >

    <h1 clas="museo" style="color: white;  text-align: center; font-size: 50px">MUSEO TECNOLÓGICO </h1><br>
    <div class="caja__trasera">
        <div class="caja__trasera-login">
            <h3>¿Ya tienes una cuenta?</h3>
            <p>Inicia sesion para entrar en la página</p>
            <button id="btn__iniciar-sesion">Iniciar Sesión</button>
        </div>
        <div class="caja__trasera-register">
            <h3>¿Aún no tienes una cuenta?</h3>
            <p>Registrate para que puedas iniciar sesión</p>
            <button id="btn__registrarse">Regístrarse</button>
        </div>
    </div>
    <!--formulario de registro y login-->
    <div class="contenedor__login-register">
        <!--login-->
        <form action="php/login_usuario_be.php" method="POST" class="formulario__login">
            <h2>Iniciar Sesión</h2>
            <input type="text" placeholder="Correo Electronico" name="correo">
            <input type="password" placeholder="Contraseña" name="contrasena">
            <button>Entrar</button><br><br><br>
            <a style="padding: 10px 40px;border: none;font-size: 14px;background: #dc3545;color: white;cursor: pointer;
                outline: none; margin-left: 60px;"href="PaginaPP/funcionales/invitado.php">Entrar como Invitado</a>
        </form>
    
        <!--registro-->
        <form action="php/registro_usuario_be.php" method="POST"  class="formulario__register">
            <h2>Registrarse</h2>
            <input type="text" placeholder="Nombre Completo" name = "nombre_completo">
            <input type="text" placeholder="Correo Electronico" name = "correo">
            <input type="text" placeholder="Usuario" name = "usuario">
            <input type="password" placeholder="Contraseña" name = "contrasena">
            <button>Registrarse</button>
        </form>
    </div>
    
</div>
<script src="..\pag\js\script.js"></script>




</body>
</html>