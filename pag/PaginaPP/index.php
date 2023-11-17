<?php

    session_start();

    if(!isset($_SESSION['usuario'])){
        echo '
            <script>
            alert("Por favor debes iniciar sesión");
                window.location = "../login.php";
            </script>
        ';
        session_destroy();
        die();
    }


?>


<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <link rel="stylesheet" href="css/styles2.css">
    <style>

        
    </style>
    <title>Museo</title>
</head>
<body>

<header class="container">
        <div>
            <div class = "menu">
                <nav>
                    <ul>                       
                        <li><a href="index.php" id="selected"></a></li>
                        <li><a href="funcionales/añaña.php">Añadir</a></li>  
                        <li><a href="funcionales/permisos.php">Permisos</a></li>                        
                        <li><a href="../php/cerrar_sesion.php">Cerrar sesión</a></li>                      
                    </ul>
                </nav>
            </div>
        </div>  
    </header><br><br>



       
    <?php
        include("funcionales/conexion_bd.php");

if (isset($_POST["buscar"])) {
    $buscar = $_POST["buscar"];
    $resultado1 = isset($_POST["resultado1"]) ? $_POST["resultado1"] : "todos";
    $resultado2 = isset($_POST["resultado2"]) ? $_POST["resultado2"] : "todos";

    if ($resultado1 === "todos") {
        if ($resultado2 === "todos") {
        $query = "SELECT * FROM objeto WHERE (nombreO LIKE '%$buscar%' OR descripcion LIKE '%$buscar%' OR id = '$buscar')";
        }else if ($resultado2 === "v") {
            $query = "SELECT * FROM objeto WHERE LEFT(ubicacion, 2) = '$buscar'";
        }else
            $query = "SELECT * FROM objeto WHERE ubicacion = '$buscar'"; 
    } else {
        if ($resultado2 === "todos") {
        $query = "SELECT * FROM objeto WHERE (nombreO LIKE '%$buscar%' OR descripcion LIKE '%$buscar' OR id = '$buscar') AND (
            (DATE1 > DATE2 AND '$resultado1' = 'si') OR (DATE1 <= DATE2 AND '$resultado1' = 'no')
        )";
    }else if ($resultado2 === "v") {
        $query = "SELECT * FROM objeto WHERE LEFT(ubicacion, 2) = '$buscar' AND ((DATE1 > DATE2 AND '$resultado1' = 'si') OR (DATE1 <= DATE2 AND '$resultado1' = 'no'))";
 
    }else 
    $query = "SELECT * FROM objeto WHERE ubicacion = '$buscar' AND ((DATE1 > DATE2 AND '$resultado1' = 'si') OR (DATE1 <= DATE2 AND '$resultado1' = 'no'))";

}
    
    $resultado = mysqli_query($conexion, $query);
    
    if (!$resultado) {
        die("Error en la consulta: " . mysqli_error($conexion));
    }
}
    ?>



                        
    <form id="form2" name="form2" method="POST" action="index.php">
        <input type="text" id="buscar" name="buscar" placeholder="Buscar..." value="<?php echo isset($_POST["buscar"]) ? $_POST["buscar"] : ''; ?>">
        <select id="resultado1" name="resultado1" >
            <option value="todos">Todos los Estados</option>
            <option value="si">En Alta</option>
            <option value="no">Dado de Baja</option>
        </select>
        <select id="resultado2" name="resultado2">
            <option value="todos">Todas las Ubicaciones</option>
            <option value="v">Sector</option>
            <option value="s">Vitrina</option>
        </select>
        <button id="btn-buscar" type="submit">Buscar</button>
    </form><br>
                        <input type="hidden" name="dato" value="modificar">
                        <div class="table-responsive">
                            <table class="table" border="1">
                                <?php if (isset($resultado) && $resultado !== NULL) : ?>
                                    <thead>
                                        <tr style="background-color: #333333; color:#FFFFFF;">
                                            <th>id</th>
                                            <th>Nombre</th>
                                            <th>Ubicación</th>
                                            <th>Descripción</th>
                                            <th>Historia</th>
                                            <th>Foto de Objeto</th>
                                            <th>Fecha de ingreso</th>       
                                            <th>Modificar</th>
                                            <th>Ver</th>                      
                                        </tr>
                                    </thead>
                                <?php endif; ?>    
                                <tbody>
                                    <?php 
                                    // Verificamos si $resultado está definido y no es NULL
                                    if (isset($resultado) && $resultado !== NULL) {
                                        while ($rowSql = mysqli_fetch_assoc($resultado)) {
                                            // Calcular el estado para cada objeto
                                            $date1 = $rowSql["date1"];
                                            $date2 = $rowSql["date2"];
                                            if (strtotime($date1) > strtotime($date2)) {
                                                $resultado1 = "si"; // date1 es más reciente que date2
                                            } else {
                                                $resultado1 = "no"; // date2 es igual o más reciente que date1
                                            }
                                            ?>
                                            <tr <?php if ($resultado1 === 'no') echo 'style="background-color: #f5f6ab;"'; ?>>
                                                <td><?php echo $rowSql["id"]; ?></td>
                                                <td><?php echo $rowSql["nombreO"]; ?></td>
                                                <td><?php echo $rowSql["ubicacion"]; ?></td>
                                                <td><?php echo $rowSql["descripcion"]; ?></td>
                                                <td><?php echo $rowSql["historia"]; ?></td>
                                                <td><img src="funcionales/<?php echo $rowSql['fotoObj']; ?>" width="100" height="100"></td>                                        
                                                <td><?php echo $rowSql["date1"]; ?></td>
                                                <td>
                                                    <a href="funcionales/modificar.php?dato=modificar&id=<?php echo $rowSql['id']; ?>">
                                                        <img src="css/img/lapiz.png" alt="Modificar" width="55" height="55">
                                                    </a>
                                                </td>                                                                  
                                                <td>
                                                    <a href="funcionales/ver.php?id=<?php echo $rowSql['id']; ?>">
                                                        <img src="css/img/ojo.png" alt="Modificar" width="55" height="55">
                                                    </a>
                                                </td>

                                            </tr>
                                            <?php 
                                        }
                                    }
                                    ?>
                                </tbody>
                            </table>
                       


</body>
</html>
