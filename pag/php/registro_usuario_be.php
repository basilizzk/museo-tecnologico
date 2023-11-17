<?php

    include 'conexion_be.php';

    $nombre_completo = $_POST['nombre_completo'];
    $correo = $_POST['correo'];
    $usuario = $_POST['usuario'];
    $contrasena = $_POST['contrasena'];

    //encriptar contraseña
    $contrasena = hash('sha512', $contrasena);
    


    $query = "INSERT INTO usuarios(nombre_completo, correo, usuario, contrasena) 
    
                values('$nombre_completo', '$correo', '$usuario', '$contrasena')";

    //verificar que el correo no se repita
    $verificar_correo = mysqli_query($conexion, "SELECT * FROM usuarios WHERE correo ='$correo' ");

    $id = 1;
        $permiso = 1;


    $sql = "UPDATE usuarios SET permiso = $permiso WHERE id = $id";
    
    if(mysqli_num_rows($verificar_correo) > 0){
        echo '
            <script>
                alert("Este correo ya esta registrado, intenta con otro diferente");
                window.location = "../login.php";
            </script>
        ';
        exit();
        mysqli_close($conexion);
    }

     //verificar que el usuario no se repita
     $verificar_usuario = mysqli_query($conexion, "SELECT * FROM usuarios WHERE usuario ='$usuario' ");
    
     if(mysqli_num_rows($verificar_usuario) > 0){
         echo '
             <script>
                 alert("Este usuario ya esta registrado, intenta con otro diferente");
                 window.location = "../login.php";
             </script>
         ';
         exit();
         mysqli_close($conexion);
     }

        
 

    $ejecutar = mysqli_query($conexion, $query);

    if($ejecutar){
        echo '
            <script>
                alert("Usuario almacenado exitosamente");
                window.location = "../login.php";
            </script>
        ';
    }else{
        echo '
            <script>
                alert("Inténtalo de nuevo, usuario no almacenado");
                window.location = "../login.php";
            </script>
        ';
    }

    mysqli_close($conexion);
?>