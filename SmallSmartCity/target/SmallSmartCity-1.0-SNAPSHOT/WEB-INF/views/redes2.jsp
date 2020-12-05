<%@page import="com.realcientifica.smallsmartcity.controller.TerraformController"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <title>Real Cientifica - Redes</title>
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
                            <a class="nav-link" href="/home">Home<span class="sr-only">(atual)</span></a>
                        </li>
                        <li class="nav-item"> 
                            <a class="nav-link" href="/cadastro">Máquina Virtual</a>
                        </li>
                        <li class="nav-item"> 
                            <a class="nav-link" href="/redes">Redes</a>
                        </li>
                    </ul>
                </div>
                <div>
                    <h5 style="color: white; padding-right: 10px; font-size: 11pt;">Jean Daniel</h5>
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
            <div class="row">
                <div class="col-lg-12">
                    <div class="text-center">
                        <h2 style="color:white;">VNCs (Redes Virtuais na Nuvem)</h2>
                    </div>
                    <br>
                    <div class="col-lg-12">
                        <table class="table table-hover table-dark">
                            <thead>
                                <tr>
                                    <th scope="col">Nome da Rede</th>
                                    <th scope="col">Destruir</th>
                                </tr>
                            </thead>
                            <tbody>
                                <tr>
                                    <th scope="col">ao vivo</th>
                                    <td><a onclick="swal('Sucesso!','Rede virtual destruida com sucesso!', 'success')" href="/destruirRede"><button class="btn btn-danger">X</button></a></td>
                                </tr>
                            </tbody>
                        </table>
                        <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#bsModal" data-whatever="@mdo">Cadastrar</button>
                    </div>
                </div>
            </div>
            
            <div class="modal fade" id="bsModal" tabindex="-1" role="dialog" aria-labelledby="bsModalLabel" aria-hidden="true">
                <div class="modal-dialog" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="bsModalLabel">Cadastrar Rede Virtual na Nuvem</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true"></span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label for="bsFormControlInput1">Nome</label>
                                    <input type="email" class="form-control" id="bsFormControlInput1" placeholder="Nome da rede...">
                                    <label style="color: blue; font-size: 8px" for="bsFormControlInput1">*Será gerado uma rede com configuração padrão</label>
                                </div>
                                <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#bsModal4" data-whatever="@mdo">Personalizado</button> -->
                            </form>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>         
                                <a class="btn btn-primary" onclick="swal('Sucesso!','Rede virtual criada com sucesso!', 'success')" href="/criarRede">Salvar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>


                    <!-- Principal JavaScript do Bootstrap
                    ================================================== -->
                    <!-- Foi colocado no final para a página carregar mais rápido -->
                    <script type="text/javascript" src="/resources/js/jquery-3-3.1.min.js"></script>
                    <script type="text/javascript" src="/resources/js/bootstrap.bundle.min.js"></script>
                    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"</script>
                    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
                    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
                    <script src="/resources/js/scripts.js"></script>

    </body>
</html>
