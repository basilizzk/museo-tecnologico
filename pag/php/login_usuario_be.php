<?php

    session_start();

    include 'conexion_be.php';

    $correo = $_POST['correo'];
    $contrasena = $_POST['contrasena'];
    $contrasena = hash('sha512', $contrasena);

    $validar_login = mysqli_query($conexion, "SELECT * FROM usuarios WHERE correo='$correo' 
    and contrasena='$contrasena'");

    //esto es lo que redirecciona a la pagina principal del museo
    if(mysqli_num_rows($validar_login) > 0){
        $_SESSION['usuario'] = $correo;
        header("location: ../PaginaPP/index.php");
        exit;
    }else{
        echo'
             <script>
                alert("Usuario no existe, verifique los datos introducidos");
                window.location = "../login.php";
            </script>
        ';
        exit;
    }

?>