<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Museo</title>
    <link rel="stylesheet" href="../css/styles2.css">
</head>
<body>
<style>
    body{
        background: #f2f2f3;
    }

    /* Estilos para el contenedor */
    .contenedor__todo {
        display: flex;
        justify-content: center;
        align-items: center;    
        flex-wrap: wrap; /* Permite que los objetos se envuelvan a la siguiente fila */
        height: auto;
    }

    /* Estilos para la caja trasera */
    .caja__trasera {
    background-color: #fff;
    border-radius: 10px;
    box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
    padding: 20px;
    display: flex;
    flex-direction: column;
    align-items: center;
    text-align: center;
    height: 350px; /* Ajusta la altura total de la caja trasera */
    width: 250px;
    margin: 10px; /* Agregar margen para separar las cajas */
    }

    /* Estilos para las imágenes */
    .imag img {
        width: 100%;
        max-height: 250px; /* Ajusta la altura máxima de la imagen */
    }

    /* Estilos para el nombre */
    .nombre {
    flex-grow: 1; /* Hace que el nombre ocupe el espacio restante dentro de la caja trasera */
    display: flex;
    flex-direction: column;
    align-items: center;
    justify-content: flex-end;
    }

    .nombre h2 {
        font-size: 24px;
        color: black;
    }

    /* Estilo para el formulario de búsqueda */
    #form2 {
        display: flex;
        align-items: center;
        margin: 20px 0;
    }

    #buscar {
        border: 1px solid #ccc;
        border-radius: 4px;
        padding: 10px;
        width: 250px;
        margin-left: 30px;
    }

    /* Estilo para los select de filtrado */
    select {
        border: 1px solid #ccc;
        border-radius: 4px;
        padding: 5px;
        margin-left: 15px;
    }

    /* Estilo para el botón de búsqueda */
    #btn-buscar {
        background-color: #dc3545;
        color: #fff;
        border: none;
        border-radius: 4px;
        padding: 10px 20px;
        cursor: pointer;
        margin-left: 15px;
    }

    #btn-buscar:hover {
        background-color: #b70025;
    }
</style>

<header class="container">
    <div>
        <div class="menu">
            <nav>
                <ul>
                    <li><a href="invitado.php" id="selected"></a></li>
                    <li><a href="../../login.php">Iniciar sesión</a></li>
                </ul>
            </nav>
        </div>
    </div>
</header><br><br>

<?php
include("conexion_bd.php");

if (isset($_POST["buscar"])) {
    $buscar = $_POST["buscar"];
    $resultado1 = isset($_POST["resultado1"]) ? $_POST["resultado1"] : "todos";
    $resultado2 = isset($_POST["resultado2"]) ? $_POST["resultado2"] : "todos";

    if ($resultado1 === "todos") {
        if ($resultado2 === "todos") {
            $query = "SELECT * FROM objeto WHERE (nombreO LIKE '%$buscar%'  OR id = '$buscar')";
        } else if ($resultado2 === "v") {
            $query = "SELECT * FROM objeto WHERE LEFT(ubicacion, 2) = '$buscar'";
        } else {
            $query = "SELECT * FROM objeto WHERE ubicacion = '$buscar'";
        }
    } else {
        if ($resultado2 === "todos") {
            $query = "SELECT * FROM objeto WHERE (nombreO LIKE '%$buscar%'  OR id = '$buscar') AND (
                (DATE1 > DATE2 AND '$resultado1' = 'si') OR (DATE1 <= DATE2 AND '$resultado1' = 'no')
            )";
        } else if ($resultado2 === "v") {
            $query = "SELECT * FROM objeto WHERE LEFT(ubicacion, 2) = '$buscar' AND ((DATE1 > DATE2 AND '$resultado1' = 'si') OR (DATE1 <= DATE2 AND '$resultado1' = 'no'))";
        } else {
            $query = "SELECT * FROM objeto WHERE ubicacion = '$buscar' AND ((DATE1 > DATE2 AND '$resultado1' = 'si') OR (DATE1 <= DATE2 AND '$resultado1' = 'no'))";
        }
    }

    $resultado = mysqli_query($conexion, $query);

    if (!$resultado) {
        die("Error en la consulta: " . mysqli_error($conexion));
    }
}
?>

<form id="form2" name="form2" method="POST" action="invitado.php">
    <input type="text" id="buscar" name="buscar" placeholder="Buscar..." value="<?php echo isset($_POST["buscar"]) ? $_POST["buscar"] : ''; ?>">

    <select id="resultado2" name="resultado2">
        <option value="todos">Todas las Ubicaciones</option>
        <option value="v">Sector</option>
        <option value="s">Vitrina</option>
    </select>
    <button id="btn-buscar" type="submit">Buscar</button>
</form><br>


    
<div class="contenedor__todo">
    <?php
    // Verificamos si $resultado está definido y no es NULL
    if (isset($resultado) && $resultado !== NULL) {
        while ($rowSql = mysqli_fetch_assoc($resultado)) {
            // Calcular el estado para cada objeto
            $date1 = $rowSql["date1"];
            $date2 = $rowSql["date2"];
            ?>
            <a href="ver2.php?id=<?php echo $rowSql['id']; ?>">
                <div class="caja__trasera">
                    <div class="imag">
                        <img src="<?php echo $rowSql['fotoObj'] ?>"  alt="Foto de Objeto">
                    </div>
                    <div class="nombre">
                        <h2><?php echo $rowSql["nombreO"]; ?></h2>
                    </div>
                </div>
            </a>
            <?php
        }
    }
    ?>
</div>

</body>
</html>
