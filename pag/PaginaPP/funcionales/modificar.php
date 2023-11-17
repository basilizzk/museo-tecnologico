    <?php
    include 'conexion_bd.php';

    // Recupera el ID de la URL
    $id = isset($_GET['id']) ? $_GET['id'] : 0;

    // Consulta la base de datos para obtener los datos del objeto
    $query = "SELECT * FROM objeto WHERE id = $id";
    $resultado = mysqli_query($conexion, $query);

    if (!$resultado) {
        die("Error en la consulta: " . mysqli_error($conexion));
    }

    // Verifica si se obtuvo un resultado antes de intentar acceder a $row
    if (mysqli_num_rows($resultado) > 0) {
        $row = mysqli_fetch_assoc($resultado);
    } else {
        echo "Objeto no encontrado.";
    }

    mysqli_close($conexion);
    ?>

    <?php
    include 'conexion_bd.php';

    if (isset($_POST['edit'])) {
        $id = isset($_POST['id']) ? $_POST['id'] : 0;
        $nuevoNombreO = $_POST['nombreO'];
        $nuevoUbicacion = $_POST['ubicacion'];
        $nuevoDescripcion = $_POST['descripcion'];
        $nuevoHistoria = $_POST['historia'];
        $foto_viejaO = $_POST['fotoObj'];
        $foto_viejaU = $_POST['fotoUbi'];

        // Procesa la imagen del objeto
        if (isset($_FILES["foto1"]) && $_FILES["foto1"]["size"] > 0) {
            $nombre_imagen_objeto = $_FILES["foto1"]["name"];
            $temporal_objeto = $_FILES["foto1"]["tmp_name"];
            $carpeta_objeto = "fotos/";
            $ruta_objeto = $carpeta_objeto . $nombre_imagen_objeto;
            move_uploaded_file($temporal_objeto, $ruta_objeto);
            $ruta_objeto2 = $ruta_objeto;
            echo $ruta_objeto2;
        } else {
            $ruta_objeto2 = "$foto_viejaO"; // Si no se sube una imagen, asigna la imagen existente
        }

        // Procesa la imagen de la ubicación
        if (isset($_FILES["foto2"]) && $_FILES["foto2"]["size"] > 0) {
            $nombre_imagen_ubicacion = $_FILES["foto2"]["name"];
            $temporal_ubicacion = $_FILES["foto2"]["tmp_name"];
            $carpeta_ubicacion = "fotos/";
            $ruta_ubicacion = $carpeta_ubicacion . $nombre_imagen_ubicacion;
            move_uploaded_file($temporal_ubicacion, $ruta_ubicacion);
            $ruta_ubicacion2 = $ruta_ubicacion;
        } else {
            $ruta_ubicacion2 = "$foto_viejaU"; // Si no se sube una imagen, asigna la imagen existente
        }

        $query = "UPDATE objeto SET nombreO = '$nuevoNombreO', ubicacion = '$nuevoUbicacion', descripcion = '$nuevoDescripcion', historia = '$nuevoHistoria', fotoObj = '$ruta_objeto2', fotoUbi = '$ruta_ubicacion2' WHERE id = $id";

        $ejecutar = mysqli_query($conexion, $query);

        if ($ejecutar) {
            echo '
                <script>
                    alert("Objeto modificado exitosamente");
                    window.location = "../index.php";
                </script>
            ';
        } else {
            echo '
                <script>
                    alert("Inténtalo de nuevo, Objeto no modificado");
                    window.location = "../index.php";
                </script>
            ';
        }
    }

    mysqli_close($conexion);
    ?>

    <!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/styles2.css">
    <title>Museo - Modificar Objeto</title>
</head>
<body>

<style>
    body {
        background: #f2f2f3;
        margin: 0;
    }

    .alinear {
        margin-left: 30px;
        margin: 0;
    }

    .image-container {
        display: flex;
        align-items: center;
        margin-left: 30px;
    }

    .image-container img {
        border: 2px solid #000;
        margin-right: 10px;
        margin: 0;
    }

    .caja_trasera {
        height: 825px;
        margin: 0;
    }
</style>

<header class="container">
    <div>
        <div class="menu">
            <nav>
                <ul>
                    <li><a href="../index.php" id="selected"></a></li>
                    <li><a href="añaña.php">Añadir</a></li>
                    <li><a href="../../php/cerrar_sesion.php">Cerrar sesión</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>

<div class="contenedor_todo">
    <div class="caja_trasera">
        <main>
            <form action="modificar.php" method="POST" enctype="multipart/form-data">
                <ul>
                    <input type="hidden" name="id" value="<?php echo $row['id']; ?>">
                    <div class="alinear" style="margin-top: -20px;">
                        <li><br><br>

                            <label for="nombreO">Nombre:</label><br>
                            <input type="text" id="nombreO" name="nombreO" value="<?php echo $row['nombreO']; ?>"><br><br>

                            <label for="ubicacion">Ubicación:</label><br>
                            <input type="text" id="ubicacion" name="ubicacion" value="<?php echo $row['ubicacion']; ?>"><br><br>

                            <label for="descripcion">Descripción:</label><br>
                            <textarea id="descripcion" name="descripcion"><?php echo $row['descripcion']; ?></textarea><br><br>

                            <label for="historia">Historia:</label><br>
                            <textarea id="historia" name="historia"><?php echo $row['historia']; ?></textarea><br><br>

                            <div class="image-container" id="imageContainer">                           
                                <img id="objetoImage" src="<?php echo $row['fotoObj']; ?>" width="100" height="100" alt="Objeto Image">
                                <div style="margin-left: -10px;">
                                    <h2>Subir una Imagen del Objeto</h2>
                                    <input type="file" name="foto1" onchange="previewImage('objetoImage', this)">
                                </div>
                            </div><br>

                            <div class="image-container">
                                <img id="ubicacionImage" src="<?php echo $row['fotoUbi']; ?>" width="100" height="100" alt="Ubicación Image">
                                <div style="margin-left: -10px;">
                                    <h2>Subir una Imagen de la Ubicación</h2>
                                    <input type="file" name="foto2" onchange="previewImage('ubicacionImage', this)">
                                </div>
                            </div><br>

                            <button type="submit" name="edit">Modificar</button>
                        </li>
                    </div>
                </ul>
            </form>
        </main>
    </div>
</div>

<script>
    function previewImage(imageId, input) {
    const image = document.getElementById(imageId);
    const imageContainer = document.getElementById('imageContainer');
    const imageUpload = document.getElementById('imageUpload');

    if (input.files.length > 0) {
        const reader = new FileReader();

        reader.onload = function (e) {
            image.src = e.target.result;
        };

        reader.readAsDataURL(input.files[0]);

        // Mostrar la imagen y ocultar la opción de carga
        imageContainer.style.display = 'flex';
        imageUpload.style.display = 'none';
    } else {
        // Ocultar el contenedor completo si no hay imagen
        imageContainer.style.display = 'none';
        imageUpload.style.display = 'flex';
    }
}

</script>

</body>
</html>

