<?php 
$tiempoLimite = 300;
$msg = "La sessió ha caducat.";
session_set_cookie_params($tiempoLimite);
session_start();

if (isset($_SESSION['ultimoAcceso']) && (time() - $_SESSION['ultimoAcceso']) > $tiempoLimite) {
    session_unset();
    session_destroy();
    header("Location: index.php?error=" . urldecode($msg));
    exit();
} else {
    $_SESSION['ultimoAcceso'] = time();
}
?>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>final</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <h2><?php echo $_SESSION["usuari"];?></h2>
    <form method="post" action="tancarSessio.php">
        <button class="boton" type="submit" name="cerrar_sesion">Cerrar sesión</button>
    </form>
</body>
</html>