<?php
    session_start();
    $error ="Fins a un altre {$_SESSION['usuari']}";
    session_destroy();
    header("Location: index.php?error=" . urldecode($error));
    exit();
?>