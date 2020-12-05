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
        <title>Real Científica - Login</title>
        <link rel="shortcut icon" href="/resources/images/favicon.ico" />
        <!-- Principal CSS do Bootstrap -->
        <link href="/resources/css/bootstrap.min.css" rel="stylesheet">
        <link href="/resources/css/font-awesome-4.7.0/css/font-awesome.min.css" rel="stylesheet" >
        <link href="/resources/css/design.css" rel="stylesheet">
    </head>
    <body>
        <div class="container-fluid">
            <div class="row">
                <div class="col-sm-6">
                    <img src="/resources/images/logo.jpg" id="logoLogin" width="300" height="300">
                </div>
                <div class="col-sm-6" id="buttons">
                    <h4 id="loginText">Selecione a forma de login</h4>
                    <!--<a class="btn btn-light btn-lg" href="index.jsp"><img src="/resources/images/logo_google.png" width="22" height="22">   Entrar com Google</a><br><br>-->
                    <a class="btn btn-light btn-lg" href="/loginOracle"><img src="/resources/images/logo_oracle.png" width="22" height="22">   Entrar com Oracle</a><br><br>
                    <a class="btn btn-light btn-lg" href="/loginMicrosoft"><img src="/resources/images/microsoft_logo.png" width="22" height="22">   Entrar com Microsoft</a>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="/resources/js/jquery-3-3.1.min.js"></script>
        <script type="text/javascript" src="/resources/js/bootstrap.bundle.min.js"></script>
    </body>
</html>
