<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <title>Inici</title>
    <link rel="stylesheet" type="text/css" href="style.css">
</head>
<body>
    <header>
        <h1>Vuelos Express</h1>
        <img src="images/icono.png" alt="logo"><br/>
    </header>
    
    <form method="post" action="inici.php">
        <h3>Inici de sessió:</h3>
        <?php
            if(isset($_GET['error'])){
                $error = urldecode($_GET['error']);
                echo "<p class='error'><span class='error-text'>{$error}</span></p>";
            }
        ?>
        <p>
            <label for="usuari">Usuari: </label>
            <input class="input" type="text" id="usuari" name="usuari">
        </p>
        
        <p>
            <label for="password">Password:</label>
            <input class="input" type="password" id="password" name="password">
        </p>

        <button class="boton" type="submit" name="enviar" value="enviar">Entrar</button>
    </form>
</body>
</html>

