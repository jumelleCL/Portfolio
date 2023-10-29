<?php 
    if(preg_match('/^[^@\s]+@[^@\s]+\.[^@\s]+$/',$_POST["email"])){
        header("Location: final.php");
        exit();
    }else{
        $error = "L'adreça no és correcta.";
        header("Location: formulari.php?error=" . urlencode($error));
        exit();
    }
?>