<?php 
$tiempoLimite = 300;
$error = "La sessió ha caducat.";
session_set_cookie_params($tiempoLimite);
session_start();

if (isset($_SESSION['ultimoAcceso']) && (time() - $_SESSION['ultimoAcceso']) > $tiempoLimite) {
    session_unset();
    session_destroy();
    header("Location: index.php?error=" . urldecode($error));
    exit();
} else {
    $_SESSION['ultimoAcceso'] = time();
}
?>

<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Formulari</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <?php
            if(isset($_GET['error'])){
                $error = urldecode($_GET['error']);
                echo "<p class='error'>{$error}</p>";
            } 
        ?>
    <h2>Benvingut <?php echo $_SESSION["usuari"];?> !</h2>
    <!-- text correo electronico, date dia, colleccio de 5 min tipo radio
    // colleccio checkbox -->
    <form method="post" action="formulariCheck.php">
        <h3>Formulari per programar un vol.</h3>
    <p>
            <label for="email">Correu electrònic: </label>
            <input class="input" type="text" id="email" name="email"><br>
        </p>
        <p>
            <label for="date">Dia d'anada: </label>
            <input type="date" id="date" name="date"><br>
        </p>
        <p>
            <label for="date">Dia de tornada: </label>
            <input type="date" id="date" name="date"><br>
        </p>
        <p>
            <label>Tipus de vol:</label><br>
            <input type="radio" id="radio1" name="opcions[]" value="opcio1">
            <label for="radio1">Vol regular</label><br>
            <input type="radio" id="radio2" name="opcions[]" value="opcio2">
            <label for="radio2">Vol xàrter</label><br>
            <input type="radio" id="radio3" name="opcions[]" value="opcio3">
            <label for="radio3">Vol de baix cost</label><br>
            <input type="radio" id="radio4" name="opcions[]" value="opcio4">
            <label for="radio4">Vol regionals</label><br>
            <input type="radio" id="radio5" name="opcions[]" value="opcio5">
            <label for="radio5">Vol de carga</label><br>
        </p>
        <p>
            <label>Incloure:</label><br>
            <input type="checkbox" id="checkbox1" name="checkboxs[]" value="checkbox1">
            <label for="checkbox1">Hotel</label><br>
            <input type="checkbox" id="checkbox2" name="checkboxs[]" value="checkbox2">
            <label for="checkbox2">Menjar per al vol</label><br>
            <input type="checkbox" id="checkbox3" name="checkboxs[]" value="checkbox3">
            <label for="checkbox3">Assegurança del viatge</label><br>
            <input type="checkbox" id="checkbox4" name="checkboxs[]" value="checkbox4">
            <label for="checkbox4">Transport terrestre</label><br>
            <input type="checkbox" id="checkbox5" name="checkboxs[]" value="checkbox5">
            <label for="checkbox5">Activitat turistica</label><br>
        </p>
        <p>
            <label for="select"">Numero d'escales:</label><br>
            <select id="select" name="select[]" multiple>
                <option value="opcio1">Cap</option>
                <option value="opcio2">1</option>
                <option value="opcio3">2</option>
                <option value="opcio4">3</option>
                <option value="opcio5">3+</option>
            </select><br>
        </p>
        <button class="boton" type="submit" name="enviar" value="enviar">Enviar</button>
    </form>
    <form method="post" action="tancarSessio.php">
        <button class="boton" type="submit" name="cerrar_sesion">Cerrar sesión</button>
    </form>
    
</body>
</html>