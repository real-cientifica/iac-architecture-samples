<%@page import="com.realcientifica.smallsmartcity.controller.TerraformController"%>
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
                        <h2 style="color:white;">Instâncias</h2>
                    </div>
                    <br>
                    <div class="col-lg-12">
                        <table class="table table-hover table-dark">
                            <thead>
                                <tr>
                                    <th scope="col">Nome da Máquina Virtual</th>
                                    <th scope="col">Rede</th>
                                    <th scope="col">Imagem</th>
                                    <th scope="col">Shape</th>
                                    <th scope="col">Destruir</th>
                                </tr>
                            </thead>
                            <tbody>
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
                            <h5 class="modal-title" id="bsModalLabel">Cadastrar Máquina Virtual</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true"></span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <form>
                                <div class="form-group">
                                    <label for="bsFormControlInput1">Nome</label>
                                    <input type="email" class="form-control" id="bsFormControlInput1" placeholder="Nome da máquina...">
                                </div>
                                <div class="form-group">
                                    <label for="bsFormControlSelect1">Rede</label>
                                    <select class="form-control" type="text" name="so" id="so">
                                        <option>-- Selecione --</option>
                                        <option value="ao vivo">ao vivo</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="bsFormControlSelect1">Imagem(Sistema operacional)</label>
                                    <select class="form-control" type="text" name="so" id="so">
                                        <option>-- Selecione --</option>
                                        <option value="Linux.8">Linux 8</option>
                                        <option value="Ubuntu.20.04">Ubuntu 20.04</option>
                                        <option value="CentOS.7">CentOS 7</option>
                                        <option value="Windows.Server.2019">Windows Server 2019</option>
                                    </select>
                                </div>
                                <div class="form-group">
                                    <label for="bsFormControlSelect1">Shape da máquina</label>
                                    <button type="button" class="btn btn-link btn-sm" data-toggle="modal" data-target="#bsModal4" data-whatever="@mdo">Informações</button>
                                    <select class="form-control" type="text" name="shape" id="shape">
                                        <option>-- Selecione --</option>
                                        <option value="VM.Standard2.2">VM.Standard 2.2</option>
                                        <option value="VM.Standard2.4">VM.Standard 2.4</option>
                                        <option value="VM.Standard2.16">VM.Standard 2.16</option>
                                        <option value="VM.Standard.E2.8">VM.Standard E2.8</option>
                                    </select>
                                </div>
                                <!-- <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#bsModal4" data-whatever="@mdo">Personalizado</button> -->
                            </form>
                            <div class="modal-footer">
                                <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                <a class="btn btn-primary" onclick="swal('Sucesso!','Máquina virtual criada com sucesso!', 'success')" href="/criar?shape=VM.Standard2.16">Salvar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
                            
            <div class="modal fade" id="bsModal4" tabindex="-1" role="dialog" aria-labelledby="bsModalLabel" aria-hidden="true">
                <div class="modal-dialog modal-lg" role="document">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h5 class="modal-title" id="bsModalLabel">Informações Shape</h5>
                            <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                <span aria-hidden="true"></span>
                            </button>
                        </div>
                        <div class="modal-body">
                            <table class="table table-bordered">
                                <thead>
                                    <tr>
                                        <th scope="col">Nome shape</th>
                                        <th scope="col">OCPU</th>
                                        <th scope="col">Memória RAM(GB)</th>
                                        <th scope="col">Disco local</th>
                                        <th scope="col">Largura de banda de rede(Gbps)</th>
                                        <th scope="col">Max VNICs</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <tr>
                                        <th scope="row">VM.Standard 2.2</th>
                                        <td>2</td>
                                        <td>30</td>
                                        <td>Somente armazenamentos em blocos</td>
                                        <td>2</td>
                                        <td>2</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">VM.Standard 2.4</th>
                                        <td>4</td>
                                        <td>60</td>
                                        <td>Somente armazenamentos em blocos</td>
                                        <td>4.1</td>
                                        <td>4</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">VM.Standard 2.16</th>
                                        <td>16</td>
                                        <td>240</td>
                                        <td>Somente armazenamentos em blocos</td>
                                        <td>16.4</td>
                                        <td>16</td>
                                    </tr>
                                    <tr>
                                        <th scope="row">VM.Standard.E2.8</th>
                                        <td>8</td>
                                        <td>64</td>
                                        <td>Somente armazenamentos em blocos</td>
                                        <td>5.6</td>
                                        <td>8</td>
                                    </tr>
                                </tbody>
                            </table>
                        </div>
                        <div class="modal-footer">
                            <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>

                        </div>
                    </div>

                    <div class="modal fade" id="bsModal2" tabindex="-1" role="dialog" aria-labelledby="bsModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="bsModalLabel">Agendamento Backup</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true"></span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="recipient-name" class="col-form-label">Data:</label>
                                            <input type="datetime-local" class="form-control" id="recipient-name">
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                    <button type="button" class="btn btn-primary">Salvar</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="bsModal4" tabindex="-1" role="dialog" aria-labelledby="bsModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="bsModalLabel">Agendamento Backup</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true"></span>
                                    </button>
                                </div>
                                <div class="modal-body">
                                    <form>
                                        <div class="form-group">
                                            <label for="recipient-name" class="col-form-label">Data:</label>
                                            <input type="datetime-local" class="form-control" id="recipient-name">
                                        </div>
                                    </form>
                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                    <button type="button" class="btn btn-primary">Salvar</button>
                                </div>
                            </div>
                        </div>
                    </div>

                    <div class="modal fade" id="bsModal3" tabindex="-1" role="dialog" aria-labelledby="bsModalLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="bsModalLabel">shapes</h5>
                                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                                        <span aria-hidden="true"></span>
                                    </button>
                                </div>
                                <div class="modal-body">

                                    <button type="button" class="btn btn-secondary">Reiniciar VM</button>
                                    <button type="button" class="btn btn-warning">Suspender</button>
                                    <input type="checkbox" checked data-toggle="toggle" id="estado" >


                                </div>
                                <div class="modal-footer">
                                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Fechar</button>
                                    <button type="button" class="btn btn-primary">Salvar</button>
                                </div>
                            </div>
                        </div>
                    </div>


                    <!-- Principal JavaScript do Bootstrap
                    ================================================== -->
                    <!-- Foi colocado no final para a pÃ¡gina carregar mais rÃ¡pido -->
                    <script type="text/javascript" src="/resources/js/jquery-3-3.1.min.js"></script>
                    <script type="text/javascript" src="/resources/js/bootstrap.bundle.min.js"></script>
                    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"</script>
                    <link href="https://gitcdn.github.io/bootstrap-toggle/2.2.2/css/bootstrap-toggle.min.css" rel="stylesheet">
                    <script src="https://gitcdn.github.io/bootstrap-toggle/2.2.2/js/bootstrap-toggle.min.js"></script>
                    <script src="/resources/js/scripts.js"></script>

                    </body>
                    </html>
