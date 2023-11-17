<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="../css/styles2.css">
    <title>Museo - Añadir Objeto</title>
</head>
<body>

<style>
 #previewContainer{
    float: left; width: 100px; height: 100px; margin-left: 30px; margin-right: 15px;
     overflow: hidden; border: 2px solid #000; display: none; 
 }
 #previewContainer2{
    float: left; width: 100px; height: 100px; margin-left: 30px; margin-right: 15px;
     overflow: hidden; border: 2px solid #000; display: none; margin-top: 15px;
 }
 </style>


<header class="container">
    <div>
        <div class="menu">
            <nav>
                <ul>
                    <li><a href="../index.php" id="selected"></a></li>
                    <li><a href="../../php/cerrar_sesion.php">Cerrar sesión</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header>

<div class="contenedor_todo">
    <div class="caja_trasera" >
        <main>
            <form action="añadirObjeto.php" method="POST" enctype="multipart/form-data">
                <ul>
                    <div class="alinear" style="margin-top: -20px">
                        <li><br><br>
                            <label for="nombreO">Nombre:</label><br>
                            <input type="text" id="nombreO" placeholder="Nombre..." name="nombreO"><br><br>

                            <label for="ubicacion">Ubicación:</label><br>
                            <input type="text" id="ubicacion" placeholder="Ubicación..." name="ubicacion"><br><br>

                            <label for="descripcion">Descripción:</label><br>
                            <textarea id="descripcion" placeholder="Descripción..." name="descripcion"></textarea><br><br>

                            <label for="historia">Historia:</label><br>
                            <textarea id="historia" placeholder="Historia..." name="historia"></textarea><br><br>

                            <!-- Contenedor para la vista previa de la imagen -->
                            <div id="previewContainer" >
                                <img id="imagenPreview" style="width: 100%; height: 100%;" alt="Imagen Preview">
                            </div>

                            <!-- Imagen del Objeto -->
                            <div style="margin-top: 15px;">
                            <h2>Subir una Imagen del Objeto</h2>
                            <input type="file" name="foto" onchange="previewImage('imagenPreview', this)" style="width: 300px; "><br><br>
                            </div>

                            <!-- Otros campos del formulario... -->
                            <div id="previewContainer2" >
                                <img id="imagenPreview2" style="width: 100%; height: 100%;" alt="Imagen Preview">
                            </div>

                            <div style="margin-top: 15px;">
                            <h2>Subir una Imagen de la Ubicación</h2>
                            <input type="file" name="foto1" onchange="previewImage2('imagenPreview2', this)" style="width: 300px; "><br><br>
                            </div>

                            <button>Guardar</button>
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
        const previewContainer = document.getElementById('previewContainer');

        const reader = new FileReader();

        reader.onload = function (e) {
            image.src = e.target.result;
            previewContainer.style.display = 'block'; // Mostrar el contenedor de vista previa
        };

        reader.readAsDataURL(input.files[0]);
    }

    function previewImage2(imageId, input) {
        const image = document.getElementById(imageId);
        const previewContainer2 = document.getElementById('previewContainer2');

        const reader = new FileReader();

        reader.onload = function (e) {
            image.src = e.target.result;
            previewContainer2.style.display = 'block'; // Mostrar el contenedor de vista previa
        };

        reader.readAsDataURL(input.files[0]);
    }
</script>

</body>
</html>
