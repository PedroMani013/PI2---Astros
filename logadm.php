<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTROS - Sistema De Votação</title>
    <link rel="shortcut icon" href="images/astros.png">
    <link rel="stylesheet" href="style.css">
</head>

<?php
require_once 'conexao.php';
?>

<body>
    <div id="tudo">
        <header class="topo">
            <img src="images/fatec.png" alt="Logo FATEC" class="logotop">
            <h1>Votação Para Representante de Sala</h1>
            <img src="images/cps.png" alt="Logo Cps" class="logotop">
        </header>
        <main class="index">
            <div id="login">
                <div class="loginhead">
                    <img src="images/livro.png" alt="book">
                    <h2>LOGIN</h2>
                    <h3>Portal do administrador</h3>
                </div>
                <form action="paineladministrativo.php" method="post" class="loginbody">
                    <input type="text" name="Login" id="" placeholder="Login (e-mail)">
                    <input type="password" name="password" id="" placeholder="Senha">
                    <input type="submit" value="Entrar">
                </form>
                <a href="esquecisenha.php">Esqueceu a senha?</a>
            </div>
        </main>
        <footer class="rodape">
            <img src="images/govsp.png" alt="" class="logosp">
            <img src="images/astros.png" alt="" class="logobottom">
        </footer>
    </div>
</body>

</html>