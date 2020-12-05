<%-- 
    Document   : index
    Created on : 25/08/2020, 14:14:11
    Author     : Luiz, Jean
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <title>Real Cientifica - Home</title>
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
                        <li class="nav-item"> 
                            <a class="nav-link" href="/redes">Redes</a>
                        </li>
                    </ul>
                    <div>
                        <h5 style="color: white; padding-right: 10px; font-size: 11pt;"></h5>
                    </div>
                </div>
                <div class="btn-group dropleft">
                    <button type="button" class="btn btn-secondary" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
                        <i class="fa fa-user-circle text-white" aria-hidden="true"></i>
                    </button>
                    <div class="dropdown-menu">
                        <a class="dropdown-item" href="/"><i class="fa fa-sign-out" aria-hidden="true" style="padding-right: 10px;"></i>Sair</a>
                    </div>
                </div>
            </nav>
        </header>
        <main role="main">
            <div class="container" id="descArea">
                <div class="row">
                    <div class="col-lg-6">
                        <div class="text-center">
                            <img class="rounded-circle-fluid" src="/resources/images/vm.png" alt="Generic placeholder image" width="140" height="140">
                            <h2 style="color:white;">Máquina Virtual</h2>
                            <p style="color:white;">Crie sua própria máquina virtual de maneira fácil, rápida e simples.</p>
                            <br>
                            <p><a class="btn btn-secondary" href="/cadastro" role="button">Ver mais</a></p>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="text-center">
                            <img class="rounded-circle-fluid" src="/resources/images/network.png" alt="Generic placeholder image" width="140" height="140">
                            <h2 style="color:white;">Rede</h2>
                            <p style="color:white;">Suas redes virtuais na nuvem (VCNs) são privadas, personalizáveis e controladas por você. Crie a sua agora mesmo!</p>
                            <p><a class="btn btn-secondary" href="/redes" role="button">Ver mais</a></p>
                        </div>
                    </div>
                </div>
            </div>
        </main>
        <!-- Principal JavaScript do Bootstrap
        ================================================== -->
        <!-- Foi colocado no final para a pÃ¡gina carregar mais rÃ¡pido -->
        <script type="text/javascript" src="/resources/js/jquery-3-3.1.min.js"></script>
        <script type="text/javascript" src="/resources/js/bootstrap.bundle.min.js"></script>
    </body>
</html>