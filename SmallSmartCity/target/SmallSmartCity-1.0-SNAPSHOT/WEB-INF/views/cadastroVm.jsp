<%-- 
    Document   : index
    Created on : 25/08/2020, 14:14:11
    Author     : Luiz
--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Real Cientifica - Máquina Virtual</title>
        <link rel="shortcut icon" href="/resources/images/favicon.ico" />

        <!-- Principal CSS do Bootstrap -->
        <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="/resources/css/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" >
        <link href="/resources/css/design.css" rel="stylesheet">
    </head>
    <body>

        <header>
            <nav class="navbar navbar-expand-md navbar-dark bg-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarCollapse">
                    <ul class="navbar-nav mr-auto">
                        <li class="nav-item active">
                            <a class="nav-link" href="/home">Home <span class="sr-only">(atual)</span></a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="/cadastro">Máquina Virtual</a>
                        </li>
                    </ul>
                </div>
                <div class="btn-group dropleft">
                    <button type="button" class="btn btn-secondary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-user-circle text-white" aria-hidden="true"></i>
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/login"><i class="fa fa-sign-out" aria-hidden="true" style="padding-right: 10px;"></i>Sair</a>
                    </div>
                </div>
            </nav>
        </header>

        <main role="main">


            <div class="container">
                <h2>Minha Conta</h2>
                <form>
                    <div class="form-group">

                        <label for="FormControlInput2">Nome Completo</label>
                        <input type="text" class="form-control" id="FormControlInput2" placeholder="Nome Completo...">
                        <label for="FormControlInput1">Endereço de email</label>
                        <input type="email" class="form-control" id="FormControlInput1" placeholder="nome@exemplo.com">

                    </div>
                    <div class="form-group">
                        <label for="FormControlSelect1">Meu plano atual</label>
                        <select class="form-control" id="FormControlSelect1">
                            <option>Premium</option>
                        </select>
                    </div>
                    <button type="button" class="btn btn-success" onclick="alertaVm()" href="">Salvar</button>
                    <a class="btn btn-secondary" href="/home" role="button">Voltar ao menu</a></p>
                </form>
            </div>

            <script>
                function alertaVm() {
                    alert("Máquina virtual criada com sucesso");
                }
            </script>

            <script type="text/javascript" src="/resources/js/jquery-3-3.1.min.js"></script>
            <script type="text/javascript" src="/resources/js/bootstrap.bundle.min.js"></script>
            <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
            <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
            <script src="/resources/js/scripts.js"></script>

    </body>
</html>
