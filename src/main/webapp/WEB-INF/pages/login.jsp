<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Inicio</title>

    <%--Bootstrap Theme--%>
    <link href="${pageContext.request.contextPath}/statics/css/bootstrap.css" rel="stylesheet">
    <%--Scripts--%>
    <script src="${pageContext.request.contextPath}/statics/js/jquery.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/hello.js"></script>

</head>
<body class='body'>
<div class='container'>
    <div class='col-sm-8 col-sm-offset-2  mtop-10'>
        <div class="row">
            <div class="col-xs-12">
                <h3 class="mtop-40 mbottom-5">Bienvenidos</h3>
            </div>
            <div class="col-xs-10">
                <img src="${pageContext.request.contextPath}/statics/img/logo-compuser.png" class="pull-right">
            </div>
        </div>
        <div class="row panel panel-default">

            <form role="form col-xs-12">
                <div class="clearfix">
                    <div class="col-lg-6 col-md-5 mtop-15 clearfix">
                        <!-- Remove ".hide" class to show the alert, show this alert for errors-->
                        <div class="alert alert-danger hide"><b>Incorrect user or password</b></div>
                        <!-- Remove ".hide" class to show the alert, show this alert whenever the-->
                        <div class="alert alert-success alert-dismissable hide"><button type="button" class="close" data-dismiss="alert" aria-hidden="true"></button><b>Inicion cerrada correctamente.</b></div>
                        <div class="text-center">
                            <button id="btn-login" type="button" class="btn btn-md btn-info col-lg-8" onclick="login();" >
                                LOGIN
                            </button>
                        </div>
                    </div>
                    <div class="col-lg-6 col-md-7 mtop-10 mbottom-10">
                        <div class="clearfix well well-info">
                            <div class="col-xs-12">
                                <h5 class="text-center">COMPAÑIA</h5>
                                <p class="text-smaller">
                                    Gestiona todas tus operaciones en este sitio web.
                                    <br/>Entra con una cuenta de Google
                                    <br/>Angel Cuenca
                                </p>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
    </div>
</div>
<script>
    function login(){
        hello("google").login(function(e){
            log("login",e);
        });
    }

    function getUrlParam(sParam){
        console.log(((window.location.href)));
        if( ((window.location.href).search(sParam)) != -1){
           return true;
        }
    }

    var logout = getUrlParam("logout");
    if(logout){
        hello("google").logout(function(){
            window.location = "/login";
        });
    }

    hello.init( {
        google 	: "567947741943-b739f4oafrbvs65oph5muq335jqg2q1f.apps.googleusercontent.com"
    },{
        redirect_uri:'callback',
        display:'page',
        scope: 'email'
    });

    hello.on('auth.login', function(auth){
        // call user information, for the given network
        hello( auth.network ).api( '/me' ).then( function(r){
            // Inject it into the container
            window.location = "/signup?token=" + auth.authResponse.access_token + "&service=" + auth.network;
        });
    });

    $('#btn-login').on("click", function (e) {
        e.preventDefault();
        $(this).addClass('state-loading');
        var scope = $(this);
        setTimeout(function () {
            scope.removeClass('state-loading');
            scope.addClass('state-success');
            setTimeout(function () {
                scope.removeClass('state-success');
            }, 1000);
        }, 3000);
    });

</script>
</body>
</html>

