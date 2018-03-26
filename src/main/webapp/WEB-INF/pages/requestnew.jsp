<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html lang="en">
    <head>
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>Customer Satisfaction Survey</title>
        <link rel='shortcut icon' type='image/x-icon' href='/statics/img/survey-icon.png'/>
        <!-- Fonts -->
        <link href='https://fonts.googleapis.com/css?family=Maven+Pro:400,500,700,900' rel='stylesheet' type='text/css'>
        <!-- Bootstrap -->
        <link href="${pageContext.request.contextPath}/statics/css/bootstrap.css" rel="stylesheet">
        <!-- Custom-Style -->
        <link href="${pageContext.request.contextPath}/statics/css/custom-style.css" rel="stylesheet">
        <!-- jQuery UI -->
        <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/jquery-ui.css">
    </head>
    <body>


    <%--header--%>
    <jsp:include page="partial/_header.jsp"/>

    <!-- !Secondary nav bar -->
    <nav class="navbar navbar-static-top shrink navbar-inverse mtop-0 col-xs-12 padding-0" id="navigation-b">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 padding-0">
                    <div id="controlbuttons" class="col-sm-4 col-sm-offset-2 col-xs-10 pull-right">
                        <div class="row">
                            <div class="col-xs-6">
                                <button type="submit" formnovalidate form="form" id="btn-save" class="btn btn-default btn-lg btn-block navbar-btn uppercase text-bold btn-loading" >
                                    <span class="content visible-lg"><span class="ion-document"></span> GUARDAR EDICION</span>
                                    <!-- Visible on medium size screens and tablets -->
                                    <span class="content hidden-lg"><span class="ion-document"></span> GUARDAR EDICION</span>
                                </button>
                            </div>
                            <div class="col-xs-6">
                                <button type="button" form="form" id="btn-submit" name="btn-submit" class="btn btn-success btn-lg btn-block navbar-btn uppercase text-bold btn-loading">
                                    <span class="content visible-lg"><span class="ion-checkmark-round"></span> GUADAR</span>
                                    <!-- Visible on medium size screens and tablets -->
                                    <span class="content hidden-lg"><span class="ion-checkmark-round"></span> GUARDAR</span>
                                </button>
                            </div>
                        </div>
                    </div>

                </div>
            </div>
        </div>
    </nav>

    <!-- !Content -->
    <section class="container-fluid mbottom-10" id="main-content">
        <div class="row">
            <!-- visible only on smartphones -->
            <p class="h4 uppercase text-gray-darker visible-xs col-xs-12 mbottom-20">Encargo</p>
            <div class="col-lg-8 col-lg-offset-2 clearfix">
                <div class="panel panel-default mbottom-10">

                    <div class="panel-body">
                        <section class="row">
                            <div class="col-sm-12">
                                <form:form method="POST" id="form" action="${redirectAction}">
                                    <div class="panel-body">
                                        A nombre de:<br>
                                        <input input="text" name="applicant" id="applicant" >
                                        Encargo:<br>
                                        <input type="text" name="request" id="request" >
                                    </div>
                                </form:form>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </section>

    <!-- !Footer -->
    <jsp:include page="partial/_footer.jsp"/>

    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
    <!-- jQuery UI -->
    <script src="${pageContext.request.contextPath}/statics/js/jquery-ui.js"></script>
    <!-- Survey Engine Commons-->
    <script src="${pageContext.request.contextPath}/statics/js/surveyengine.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/surveyengine.answer.js"></script>
    <!-- Pnotify -->
    <script src="${pageContext.request.contextPath}/statics/js/pnotify.custom.js"></script>
    <!-- PM -->
    <script src="${pageContext.request.contextPath}/statics/js/surveyengine.pmrequest.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/pmrequest.js"></script>

    <script>
        /* Create List with all survey responses */
        var listAnswers = new Array();
        <c:forEach items="${surveyAnswers}" var="listAnswers">
            var answer = new Object();
            answer.InputId = '${listAnswers.inputId}';
            answer.QuestionText = '${listAnswers.questionText}';
            answer.Answer = '${listAnswers.answer}';
            answer.type = '${listAnswers.type}';
            listAnswers.push(answer);
        </c:forEach>

        var surveyAnswer = SurveyEngine.surveyAnswer;
        surveyAnswer.ready(listAnswers, "${notify}", "${statusResponse}", "${expirationDate}");
    </script>
    </body>
</html>