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
            <h1>Administração de Candidatos</h1>
            <div class="boxcandidatos">
                <div class="candidato">
                    <img src="images/fotouser.png" alt="">
                    <div class="candidatotext">
                        <p>CANDIDATO(A):</p>
                        <p>Rafael Monteiro Silvestre</p>
                        <div class="botaoremov">
                            <button>Remover Candidatura</button>
                        </div>
                    </div>
                </div>
            </div>
            <div class="finalizarsessao">
                    <a href="votacoesaluno.php">
                        <img src="images/log-out.png" alt="">
                        <p>Voltar Para Votações</p>
                    </a>
                </div>
        </main>
        <footer class="rodape">
            <img src="images/govsp.png" alt="" class="logosp">
            <img src="images/astros.png" alt="" class="logobottom">
        </footer>
    </div>
    <div id="popupOverlay" class="overlay">
        <div class="popup">
            <img src="images/alert-triangle.png" alt="Alerta" class="popup-icon">
            <h2>Confirmação de remoção</h2>
            O candidato ao ser removido não poderá mais se candidatar na votação selecionada<br>
            Após a confirmação, o candidato terá sua candidatura removida<br>
            Tem certeza que deseja remover <span id="nomeCandidato"></span>?
            </p>
            <button id="confirmarVoto">CONFIRMAR REMOÇÃO</button>
        </div>
    </div>
    <script>
        const overlay = document.getElementById("popupOverlay");
        const nomeCandidato = document.getElementById("nomeCandidato");
        const confirmarBtn = document.getElementById("confirmarVoto");

        const botoesVotar = document.querySelectorAll(".botaoremov button");

        botoesVotar.forEach(botao => {
            botao.addEventListener("click", (e) => {
            const candidato = e.target.closest(".candidatotext").querySelectorAll("p")[1].textContent;
            nomeCandidato.textContent = candidato;
            confirmarBtn.setAttribute("data-candidato", candidato); // guarda o nome do candidato
            overlay.style.display = "flex";
            });
        });

        overlay.addEventListener("click", (e) => {
            if (e.target === overlay) overlay.style.display = "none";
        });

        confirmarBtn.addEventListener("click", () => {
            const candidatoEscolhido = confirmarBtn.getAttribute("data-candidato");
            // Redireciona para a página PHP (envie o nome via GET, por exemplo)
            window.location.href = `administracaocandidatos.php?candidato=${encodeURIComponent(candidatoEscolhido)}`;
        });
    </script>
</body>

</html>