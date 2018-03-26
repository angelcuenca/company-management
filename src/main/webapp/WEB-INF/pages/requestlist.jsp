<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Customer Satisfaction Survey</title>
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
    <script>
        $(document).ready(function() {
            $('#myTabContent #example').DataTable( {
                dom: 'Bfrtip',
                buttons: [
                    'copy', 'csv', 'excel', 'pdf'
                ]
            });
        });
    </script>
    <script>
        var surveys=[];
        var tabopt="";
        var emailFromDataStore="";

        $(document).ready(function(){
            tabopt="new2";
            var table = $("#myTabContent contentsurvey");
            table.find('tr').each(function (i, el) {
                var $tds = $(this).find('td'),
                        id = $tds.eq(0).text();
                name = $tds.eq(1).text();
                status = $tds.eq(2).text();
                createdBy = $tds.eq(3).text();
                surveys.push({"id":id,"name":name,"status":status,"createdBy":createdBy});
            });
            //console.log(surveys);

            $("#customername2").click(function () {
                $('#emails tbody').remove();
                $.ajax({
                    url : "dashboard/customer/contacts",
                    type : "POST",
                    dataType: 'json',
                    data: { idCustomer: $("#customername2 option:selected").val()},
                    async : true,
                    success : function(data) {
                        var index = 0;
                        emailFromDataStore = "";

                        for (index in data) {
                            console.log(data[index].email);
                            console.log("exit");
                            $("#emails").append('<tr>'+'<td>'+data[index].name+'</td>'+'<td>'+data[index].email+'</td>'+'</tr>');
                            emailFromDataStore=emailFromDataStore+data[index].email+',';
                            index++;
                        }
                        $("#emailstab").show("slow");
                        $('#emailstab tbody tr').eq(0).each(function () {
                            $(this).find('td').each(function () {
                                $(this).html();
                            })
                        })
                    }
                });
            });
        });

        function OpenModalForEmail(){
            $('#EmailModal').modal();
            showtab(tabopt);
            $("#namesurvey").val(namesurvey);
            $("#namesurvey2").text(namesurvey);
            $("#idsurvey").val(idsurvey);
        }

        function showtab(tab){
            $('#tabsList').find('.active').removeClass('active');
            tabopt=tab;

            switch (tab){
                case 'new2':{
                    $('#newcontactTab2').parent().addClass('active');
                    $('#newcontact2').show();
                    $('#groups').hide();
                    break;
                }
                case 'groups':{
                    $('#groupsTab').parent().addClass('active');
                    $('#groups').show();
                    $('#newcontact2').hide();
                    break;
                }
            }
        }

        function sendEmails(){

            $("#customername").val($("#customername2 option:selected").text());
            $("#customeremail").val(emailFromDataStore);
            //Dashboard controller send email
            var scope = $(this);
            scope.addClass('state-loading');
            $('#navigation-b').addClass("important");
            $("#main-content").toggleClass("block-content");
            $("#formnewcontact").attr("action", "dashboard/send").submit();

            new PNotify({
                title: 'Email',
                text: 'The email has been sent to: ' + $('#customeremail').val(),
                type: 'success',
                icon: true,
                delay: 1000
            });

        }
    </script>
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
                            <p class="pull-left h4 uppercase navbar-text hidden-xs">ENCARGOS</p>
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
                            <c:forEach var="i" items="${list}">
                                <tr>
                                    <td>
                                        <a href="${pageContext.request.contextPath}/survey/${i.id}">
                                                ${fn:substring(i.name, 0, 25)}
                                            <c:choose>
                                                <c:when test="${fn:length(i.name) > 25 }">
                                                    ...
                                                </c:when>
                                            </c:choose>
                                        </a>
                                    </td>
                                    <td>${i.createdBy['name']}</td>
                                    <td>${i.createdBy['name']}</td>
                                    <td class="text-center">
                                        <button type="button" class="btn btn-success" id="${index}-btn-approve"
                                                onclick="document.location.href='${pageContext.request.contextPath}/request/{idRequest}'"
                                                data-toggle="modal" data-target="#myModal">Editar</button>
                                        <button type="button" class="btn btn-danger" id="${index}-btn-reject"
                                                onclick="document.location.href='${pageContext.request.contextPath}/request/delete/{idRequest}'"
                                                data-toggle="modal" data-target="#myModal">Eliminar</button>
                                    </td>
                                </tr>
                            </c:forEach>
                        </div>
                        </tbody>
                    </table>
                </div>
                <!--P A G I N A C I O N-->
            </div>
        </div>
    </section>
</div>

<!-- !Footer -->
<jsp:include page="partial/_footer.jsp"/>
<!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
<script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
<!-- Include all compiled plugins (below), or include individual files as needed -->
<script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
<!-- jQuery UI -->
<script src="${pageContext.request.contextPath}/statics/js/jquery-ui.js"></script>
<!--DataTable-->
<script src="${pageContext.request.contextPath}/statics/js/datatable/jquery.dataTables.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/datatable/dataTables.buttons.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/datatable/buttons.flash.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/datatable/jszip.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/datatable/pdfmake.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/datatable/vfs_fonts.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/datatable/buttons.html5.min.js"></script>
<script src="${pageContext.request.contextPath}/statics/js/datatable/buttons.print.min.js"></script>
<link href='${pageContext.request.contextPath}/statics/js/datatable/jquery.dataTables.min.css' rel='stylesheet' type='text/css'>
<link href='${pageContext.request.contextPath}/statics/js/datatable/buttons.dataTables.min.css' rel='stylesheet' type='text/css'>
<script src="${pageContext.request.contextPath}/statics/js/admin.js"></script>
</body>
</html>