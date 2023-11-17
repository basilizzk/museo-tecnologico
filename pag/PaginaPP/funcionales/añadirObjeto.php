<?php
include 'conexion_bd.php';

$nombreO = $_POST['nombreO'];
$ubicacion = $_POST['ubicacion'];
$descripcion = $_POST['descripcion'];
$historia = $_POST['historia'];


// Procesa la imagen del objeto
if(isset($_FILES["foto"])) {
    $nombre_imagen_objeto = $_FILES["foto"]["name"];
    $temporal_objeto = $_FILES["foto"]["tmp_name"];
    $carpeta_objeto = "fotos/";
    $ruta_objeto = $carpeta_objeto . $nombre_imagen_objeto;
    move_uploaded_file($temporal_objeto, $ruta_objeto);
} else {
    $ruta_objeto = ''; // Si no se sube una imagen, asigna una cadena vacía
}

// Procesa la imagen de ubicación
if(isset($_FILES["foto1"])) {
    $nombre_imagen_ubicacion = $_FILES["foto1"]["name"];
    $temporal_ubicacion = $_FILES["foto1"]["tmp_name"];
    $carpeta_ubicacion = "fotos/";
    $ruta_ubicacion = $carpeta_ubicacion . $nombre_imagen_ubicacion;
    move_uploaded_file($temporal_ubicacion, $ruta_ubicacion);
} else {
    $ruta_ubicacion = ''; // Si no se sube una imagen, asigna una cadena vacía
}
$query = "INSERT INTO objeto(nombreO, ubicacion, descripcion, historia, fotoUbi, fotoObj, date1, date2) 
          VALUES ('$nombreO', '$ubicacion', '$descripcion', '$historia', '$ruta_ubicacion', '$ruta_objeto', CURRENT_TIMESTAMP(), '0000-00-00 00:00:00')";



// Resto de tu código para verificar y ejecutar la consulta...



    $verificar_nombreO = mysqli_query($conexion, "SELECT * FROM objeto WHERE nombreO ='$nombreO' ");
    
    if(mysqli_num_rows($verificar_nombreO) > 0){
        echo '
            <script>
                alert("El nombre del objeto ya esta registrado, intenta con otro diferente");
                window.location = "añaña.php";
            </script>
        ';
        exit();
        mysqli_close($conexion);
    }
    $ejecutar = mysqli_query($conexion, $query);

    if($ejecutar){
        echo '
            <script>
                alert("Objeto almacenado exitosamente");
                window.location = "añaña.php";
             </script>
        ';
    }else{
        echo '
            <script>
                alert("Inténtalo de nuevo, Objeto no almacenado");
                window.location = "añaña.php";
            </script>
        ';
    }
    
        mysqli_close($conexion);




?>





