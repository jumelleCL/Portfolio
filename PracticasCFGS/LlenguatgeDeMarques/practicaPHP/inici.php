<?php
$usuarios = array(
    "LopezJuan" => "juan123",
    "GomezMaria" => "maria123",
    "PerezPedro" => "pedro123"
);

if (isset($_POST["usuari"]) && isset($_POST["password"])) {
    $usuari = $_POST["usuari"];
    $password = $_POST["password"];

    if (array_key_exists($usuari, $usuarios) && $usuarios[$usuari] == $password) {
        session_start();

        $_SESSION["usuari"] = $usuari;
        $_SESSION["password"] = $password;
        header("Location: formulari.php");
        exit();
    }
}

$error = "L'usuari o contrasenya no són vàlids.";
header("Location: index.php?error=" . urlencode($error));
exit();
?>