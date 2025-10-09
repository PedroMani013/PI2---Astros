<!DOCTYPE html>
<html lang="pt-br">

<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>ASTROS - Sistema De Votação</title>
    <link rel="shortcut icon" href="images/astros.png">
    <link rel="stylesheet" href="style.css">
</head>

<body>
    <div id="tudo">
        <header class="topo">
            <img src="images/fatec.png" alt="Logo FATEC" class="logotop">
            <h1>Votação Para Representante de Sala</h1>
            <img src="images/cps.png" alt="Logo Cps" class="logotop">
        </header>
        <main class="index">
            <div class="boxpadrao">
                <h1>PAINEL ADMINISTRATIVO</h1>
                <div class="votacaoadm">
                    <div class="infovotacaoadm">
                        <p>Curso: <?php?></p>
                        <p>Semestre: <?php?></p>
                        <p>Data de candidatura: <?php?></p>
                        <p>Data de inicio: <?php?></p>
                        <p>Número de candidatos: <?php?></p>
                    </div>
                    <div class="botoesvotoadm">
                        <a href="">Administrar Candidatos</a>
                        <a href="">Visualizar Votos</a>
                    </div>
                </div>
                <div class="criarvot">
                    <a href="">
                        <img src="images/addvotacao.png" alt="">
                        <h3>Criar Votação</h3>
                    </a>
                </div>
                <div class="finalizarsessao">
                    <a href="index.html">
                        <img src="images/log-out.png" alt="">
                        <p>Finalizar Sessão</p>
                    </a>
                    
                </div>
            </div>
        </main>
        <footer class="rodape">
            <img src="images/govsp.png" alt="" class="logosp">
            <img src="images/astros.png" alt="" class="logobottom">
        </footer>
    </div>
</body>

</html>