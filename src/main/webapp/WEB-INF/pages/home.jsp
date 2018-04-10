<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <meta name="description" content="">
        <meta name="author" content="">

        <title>Compuser</title>

        <!-- Bootstrap core CSS -->
        <link href="${pageContext.request.contextPath}/statics/vendor/bootstrap.min.css" rel="stylesheet">

        <!-- Custom fonts for this template -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/vendor/font-awesome.min.css">
        <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/vendor/simple-line-icons.css">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Catamaran:100,200,300,400,500,600,700,800,900" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Muli" rel="stylesheet">
        <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet">

        <link href="${pageContext.request.contextPath}/statics/fonts/Simple-Line-Icons.woff2" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/statics/fonts/fontawesome-webfont.woff2" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/statics/fonts/Simple-Line-Icons.ttf" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/statics/fonts/fontawesome-webfont.woff" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/statics/fonts/Simple-Line-Icons.woff" rel="stylesheet">
        <link href="${pageContext.request.contextPath}/statics/fonts/fontawesome-webfont.ttf" rel="stylesheet">

        <!-- Plugin CSS -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/vendor/device-mockups.min.css">

        <!-- Custom styles for this template -->
        <link href="${pageContext.request.contextPath}/statics/vendor/new-age.min.css" rel="stylesheet">

    </head>

    <body id="page-top">

    <!-- Navigation -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top" id="mainNav">
        <div class="container">
            <a class="navbar-brand js-scroll-trigger" href="#page-top">Descubre Mas</a>
            <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
                Menu
                <i class="fa fa-bars"></i>
            </button>
            <div class="collapse navbar-collapse" id="navbarResponsive">
                <ul class="navbar-nav ml-auto">
                    <!--<li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#download">Download</a>
                    </li>-->
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#features">Productos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link js-scroll-trigger" href="#contact">Contacto</a>
                    </li>
                </ul>
            </div>
        </div>
    </nav>

    <header class="masthead">
        <div class="container h-100">
            <div class="row h-100">
                <div class="col-lg-7 my-auto">
                    <div class="header-content mx-auto">
                        <h1 class="mb-5">Gestiona todas tus operaciones en este sitio web.</br>
                            Inicia con tu cuenta de Google
                            </h1>
                        <a onclick="login()" class="btn btn-outline btn-xl js-scroll-trigger">Iniciar sesion</a>
                    </div>
                </div>
                <div class="col-lg-5 my-auto">
                    <div class="device-container">
                        <div class="device-mockup iphone6_plus portrait white">
                            <div class="device">
                                <div class="screen">
                                    <!-- Demo image for screen mockup, you can put an image here, some HTML, an animation, video, or anything else! -->
                                    <img src="${pageContext.request.contextPath}/statics/img/demo-screen-1.jpg" class="img-fluid" alt="">
                                </div>
                                <div class="button">
                                    <!-- You can hook the "home button" to some JavaScript events or just remove it -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </header>

    <section class="download bg-primary text-center" id="download">
        <div class="container">
            <div class="row">
                <div class="col-md-8 mx-auto">
                    <h2 class="section-heading">Descubre con Compuser una mejor opcion para tus servicios.</h2>
                    <p>Tenemos una gran variedad de servicios asi como reparacion de computadoras.</p>
                    <!--<div class="badges">
                        <a class="badge-link" href="#"><img src="${pageContext.request.contextPath}/statics/img/google-play-badge.svg" alt=""></a>
                        <a class="badge-link" href="#"><img src="${pageContext.request.contextPath}/statics/img/app-store-badge.svg" alt=""></a>
                    </div>-->
                </div>
            </div>
        </div>
    </section>

    <section class="features" id="features">
        <div class="container">
            <div class="section-heading text-center">
                <h2>Dale seguimiento a tus ordenes de servicio</h2>
                <p class="text-muted">Con Compuser puedes tener un seguimiento en todo momento sobre el estatus de tu computadora</p>
                <hr>
            </div>
            <div class="row">
                <div class="col-lg-4 my-auto">
                    <div class="device-container">
                        <div class="device-mockup iphone6_plus portrait white">
                            <div class="device">
                                <div class="screen">
                                    <!-- Demo image for screen mockup, you can put an image here, some HTML, an animation, video, or anything else! -->
                                    <img src="${pageContext.request.contextPath}/statics/img/demo-screen-1.jpg" class="img-fluid" alt="">
                                </div>
                                <div class="button">
                                    <!-- You can hook the "home button" to some JavaScript events or just remove it -->
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-8 my-auto">
                    <div class="container-fluid">
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="feature-item">
                                    <i class="icon-screen-smartphone text-primary"></i>
                                    <h3>Registro</h3>
                                    <p class="text-muted">Inicia orden de servicio</p>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="feature-item">
                                    <i class="icon-magnifier text-primary"></i>
                                    <h3>Evaluacion</h3>
                                    <p class="text-muted">Se registra una evuacion del estatus de la computadora</p>
                                </div>
                            </div>
                        </div>
                        <div class="row">
                            <div class="col-lg-6">
                                <div class="feature-item">
                                    <i class="icon-layers text-primary"></i>
                                    <h3>Reparacion</h3>
                                    <p class="text-muted">Serie de procesos para generar la reparacion/mantenimiento</p>
                                </div>
                            </div>
                            <div class="col-lg-6">
                                <div class="feature-item">
                                    <i class="icon-lock-open text-primary"></i>
                                    <h3>Cierre</h3>
                                    <p class="text-muted">Termina el proceso de orden de servicio</p>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <section class="cta">
        <div class="cta-content">
            <div class="container">
                <h2>Mejores servicios.<br>Mejores productos.</h2>
                <p class="text-white">En Compuser nos esforzamos para que tengas la mejor experiencia </p>
                <!--<a href="#contact" class="btn btn-outline btn-xl js-scroll-trigger">Let's Get Started!</a>-->
            </div>
        </div>
        <div class="overlay"></div>
    </section>

    <section class="contact bg-primary" id="contact">
        <div class="container">
            <h2>Para estar en contacto
                <i class="fa fa-heart"></i>
                </h2>
            <ul class="list-inline list-social">
                <li class="list-inline-item social-twitter">
                    <a href="https://www.twitter.com/angelcuenca_">
                        <i class="fa fa-twitter"></i>
                    </a>
                </li>
                <li class="list-inline-item social-facebook">
                    <a href="https://www.facebook.com/angel.sancuenca">
                        <i class="fa fa-facebook"></i>
                    </a>
                </li>
                <li class="list-inline-item social-google-plus">
                    <a href="https://www.instagram.com/angelcuenca_">
                        <i class="fa fa-instagram"></i>
                    </a>
                </li>
            </ul>
        </div>
    </section>

    <footer>
        <div class="container">
            <p>&copy; Compuser 2018. Todos los derechos reservados. Angel Cuenca</p>
            <ul class="list-inline">
                <li class="list-inline-item">
                    <a href="#">Privacy</a>
                </li>
                <li class="list-inline-item">
                    <a href="#">Terms</a>
                </li>
                <li class="list-inline-item">
                    <a href="#">FAQ</a>
                </li>
            </ul>
        </div>
    </footer>

    <!-- Bootstrap core JavaScript -->
    <script src="${pageContext.request.contextPath}/statics/vendor/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/vendor/bootstrap.bundle.min.js"></script>

    <!-- Plugin JavaScript -->
    <script src="${pageContext.request.contextPath}/statics/vendor/jquery.easing.min.js"></script>

    <!-- Custom scripts for this template -->
    <script src="${pageContext.request.contextPath}/statics/vendor/new-age.min.js"></script>

    <!-- Login files -->

    <script src="${pageContext.request.contextPath}/statics/js/hello.js"></script>

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
            google 	: "447432173054-o0u9nm2ib85ebjum67h9a21kavjrnapp.apps.googleusercontent.com"
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