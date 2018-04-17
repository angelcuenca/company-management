<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Company Management Session</title>
    <!--DataTable-->
    <!--<script type="text/javascript" src="https://code.jquery.com/jquery-1.11.3.min.js"></script>-->
    <link rel='shortcut icon' type='image/x-icon' href='/statics/img/survey-icon.png'/>
    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Maven+Pro:400,500,700,900' rel='stylesheet' type='text/css'>
    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/statics/css/bootstrap.css" rel="stylesheet">
    <!-- Custom-Style -->
    <link href="${pageContext.request.contextPath}/statics/css/custom-style.css" rel="stylesheet">
    <!-- jQuery UI -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/jquery-ui.css">
    <!-- jQuery UI -->
    <script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
    <!-- PNotify -->
    <link href="${pageContext.request.contextPath}/statics/css/pnotify.custom.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/statics/js/pnotify.custom.js"></script>

</head>
<body>

<%--header--%>
<jsp:include page="partial/_header.jsp"/>
<div>
    <!-- !Secondary nav bar -->
    <nav class="navbar navbar-static-top shrink navbar-inverse mtop-0 col-xs-12 padding-0" id="navigation-b">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 padding-0">
                    <div class="col-sm-6 col-xs-2">
                        <div class="row">
                            <!--<a href="#" class="btn navbar-btn-lg btn-gray-dark pull-left">
                                <span class="ion-arrow-left-c text-bigger"></span>
                            </a>-->
                            <!-- hidden on smartphones -->
                            <p class="pull-left h4 uppercase navbar-text hidden-xs">COMPANY MANAGEMENT</p>
                        </div>
                    </div>
                    <div class="col-sm-4 col-sm-offset-0 pull-right">
                        <div class="row">
                            <div class="col-xs-6 pull-right">
                                <button type="button" id="btn-submit" onclick="document.location.href='${pageContext.request.contextPath}/request/new'" class="btn btn-success btn-lg btn-block navbar-btn uppercase text-bold btn-loading" >
                                    <span class="content visible-lg"><span class="ion-plus-circled"></span> Nuevo Encargo</span>
                                    <!-- Visible on medium size screens and tablets -->
                                    <span class="content hidden-lg"><span class="ion-plus-circled"></span> Nuevo Encargo</span>
                                </button>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <section class="container-fluid mbottom-20" id="main-content">
        <div id="myTabContent" class="tab-content col-lg-8 col-lg-offset-2 clearfix">
            <div class="tab-pane fade in active" id="home">
                <div class="table-responsive">
                    <table class="table table-bordered table-striped table-hover" id="example">
                        <thead>
                        <tr>
                            <th>A nombre de</th>
                            <th>Encargo</th>
                            <th>Creado por</th>
                            <th>Accion</th>
                        </tr>
                        </thead>
                        <tbody>
                        <div id="contentsurvey">

                        </div>
                        </tbody>
                    </table>
                </div>
                <!--P A G I N A C I O N-->
            </div>
        </div>
    </section>
    <section class="text-center">
        <h1>ADMIN PAGE</h1>
        <h2>Working in the functionality</h2>
    </section>
</div>

<!-- !Footer -->
<jsp:include page="partial/_footer.jsp"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>

</body>
</html>