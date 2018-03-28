<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Form template</title>
    <!-- Fonts -->
    <link href='https://fonts.googleapis.com/css?family=Maven+Pro:400,500,700,900' rel='stylesheet' type='text/css'>
    <link href="${pageContext.request.contextPath}/statics/css/bootstrap.css" rel="stylesheet">

    <%--Scripts--%>
    <!-- jQuery UI -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/jquery-ui.css">

    <script src="${pageContext.request.contextPath}/statics/js/jquery.min.js"></script>
    <script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
    <!-- jQuery UI -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
  </head>
  <body>

    <%--header--%>
    <jsp:include page="partial/_header.jsp"/>

    <!-- !Secondary nav bar -->
    <nav class="navbar navbar-static-top shrink navbar-inverse mtop-0 col-xs-12 padding-0" id="navigation-b">
    	<div class="container-fluid">
		      <div class="row">
			      <div class="col-xs-12 padding-0">
				      <div class="col-sm-6 col-xs-2">
					      <div class="row">
					      		<h1>SPRING SECURITY</h1>
					      </div>
				      </div>
				      <div class="col-sm-4 col-sm-offset-2 col-xs-10 pull-right">
			      		<div class="row">
			      			<div class="col-xs-6">

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
            <div class="col-lg-10 col-lg-offset-1 clearfix">
                <div class="panel panel-default mbottom-10" id="form-chunk">
                    <div class="panel-heading uppercase text-bold clearfix">
                        <input type="hidden" name="workstationId" id="workstationId" ng-model="registerForm.workstationId">
                        <p class="mbottom-0 pull-left"><span ng-bind="'_Workstation_' | i18n"></span></p>
                    </div>
                    <form class="panel-body" method="POST" action="/mail" >
                        <section>
                            <div class="col-sm-7 col-md-6 col-md-offset-3">
                                <div class="form-group">
                                    <label>Recipients</label>
                                    <input type="text" class="form-control input-sm" placeholder="" name="recipients" value="example@sanmina.com">
                                </div>
                                <div class="form-group">
                                    <label>Subject</label>
                                    <input type="text" class="form-control input-sm" placeholder="" name="subject" value="">
                                </div>
                                <div class="form-group">
                                    <label>Body</label>
                                    <input type="text" class="form-control input-sm" placeholder="" name="body">
                                </div>
                                <div class="form-group">
                                    <label>Attach File</label>
                                    <input type="file" name="file">
                                </div>
                                 <div>
                                    <button type="submit"  id="btn-submit" class="btn btn-success btn-lg navbar-btn uppercase text-bold btn-loading">
                                        <span class="content visible-lg"><span class="ion-email"></span>  Send</span>
                                    </button>
                                </div>
                                 <div>
                                    <h1>${answer}</h1>
                                </div>
                            </div>

                        </section>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- !Footer -->
    <jsp:include page="partial/_footer.jsp"/>
    <script>
         var bootstrap3_enabled = (typeof $().emulateTransitionEnd == 'function');
         console.log("enables"+ bootstrap3_enabled);
    </script>
  </body>
</html>