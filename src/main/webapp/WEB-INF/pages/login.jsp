<%@ page contentType="text/html;charset=UTF-8" language="java" %>
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
    <script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/hello.js"></script>

</head>
<body class='body'>
<div class='container'>
    <div class='col-sm-8 col-sm-offset-2  mtop-10'>
        <div class="row panel panel-default">

            <section>
                <div class="col-lg-8 col-lg-offset-2">
                    <h1>Loading session...</h1>
                </div>
            </section>
        </div>
    </div>
</div>

<!-- Login files -->
<script src="${pageContext.request.contextPath}/statics/js/hello.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/login.js"></script>

</body>
</html>

