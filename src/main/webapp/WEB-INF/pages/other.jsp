<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Form template</title>

    <!-- Bootstrap -->
    <link href="//code.sanmina.com/v4/css/bootstrap.css" rel="stylesheet">
    <!-- jQuery UI -->
    <link rel="stylesheet" href="//code.jquery.com/ui/1.10.2/themes/smoothness/jquery-ui.css">
  </head>
  <body>
  	<!-- !Primary nav bar -->
    <nav class="navbar navbar-static-top navbar-default margin-0 col-xs-12 padding-0" role="navigation">
    	<div class="container-fluid">
	    	<!-- Brand and toggle get grouped for better mobile display -->
	    	<div class="navbar-header">
		      <button type="button" class="navbar-toggle mright-0" data-toggle="collapse" data-target="#menu">
		        <span class="sr-only">Toggle navigation</span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		        <span class="icon-bar"></span>
		      </button>
		      <img src="//code.sanmina.com/v4/img/dummy-logo.png" class="pull-left mtop-10" id="logo">
		      <a class="navbar-brand uppercase text-normal-size" href="#">
		      	<span>Here the name of the application</span>
		      </a>
		    </div>
		    <!-- User -->
	    	<div class="pull-right mtop-10 hidden-xs">
	    		<a href="" class="btn btn-default btn-circle pull-right mleft-15 mtop-5">
	    			<span class="glyphicon glyphicon-off"></span>
	    		</a>
	    		<small class="text-bold text-gray pull-right uppercase mtop-15 mleft-10 hidden-sm hidden-xs">User Name Here</small>
		    	<div class="pull-right mleft-20 hidden-md hidden-sm hidden-xs">
			    	<img src="//code.sanmina.com/v4/img/user-avatar.png" alt="User profile picture" class="img-circle" style="height: 40px; width:40px">
		    	</div>
	    	</div>
	    	<!-- Collect the nav links, forms, and other content for toggling -->
			<div class="collapse navbar-collapse pull-right" id="menu">
		      <ul class="nav navbar-nav">
		        <li class="active">
		        	<a href="#" class="uppercase text-medium">
		        		Nav 1
		        	</a>
		        </li>
		        <li>
		        	<a href="#" class="uppercase text-medium">
		        		Nav 2
		        	</a>
		        </li>
		      </ul>
		    </div>
    	</div>
    </nav>
    <!-- !Secondary nav bar -->
    <nav class="navbar navbar-static-top shrink navbar-inverse mtop-0 col-xs-12 padding-0" id="navigation-b">
    	<div class="container-fluid">
		      <div class="row">
			      <div class="col-xs-12 padding-0">
				      <div class="col-sm-6 col-xs-2">
					      <div class="row">
					      		<a href="#" class="btn navbar-btn-lg btn-gray-dark pull-left">
					      			<span class="ion-arrow-left-c text-bigger"></span>
					      		</a>
					      		<!-- hidden on smartphones -->
					      		<p class="pull-left h4 uppercase navbar-text hidden-xs" id="form-name">SURVEY</p>
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
                    <form class="panel-body" method="GET" action="/home" enctype="multipart/form-data">
                        <section>
                            <div class="col-sm-7 col-md-6 col-md-offset-3">
                                <div class="form-group">
                                    <p class="pull-left h1 uppercase navbar-text hidden-xs" id="form-name">SI SE PUEDE</p>
                                </div>
                            </div>
                        </section>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- !Footer -->
    <footer class="col-lg-8 col-lg-offset-2" id="footer">
    	<div class="container-fluid">
		      <div class="row">
			      <div class="col-xs-12">
				      <div class="badge badge-danger uppercase mtop-20">Here some legend of authoring or copyrights</div>
				      <img src="https://code.sanmina.com/v4/img/logos/sanmina-100x56.png" width="80" alt="Sanmina" class="pull-right mtop-5 mbottom-25">
			      </div>
		      </div>
    	</div>
  	</footer>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="//code.sanmina.com/v4/js/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="//code.sanmina.com/v4/js/bootstrap.min.js"></script>
    <!-- jQuery UI -->
    <script src="//code.sanmina.com/v4/js/jquery-ui.js"></script>
    <!-- Points of interest -->
    <script src="//code.sanmina.com/v4/js/sanm-points-of-interest.js"></script>

  </body>
</html>