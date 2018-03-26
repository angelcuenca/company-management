<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <title>Customer Satisfaction Survey</title>

    <!-- Bootstrap -->
    <link href="${pageContext.request.contextPath}/statics/css/bootstrap.css" rel="stylesheet">
    <script src="${pageContext.request.contextPath}/statics/js/bootstrap.min.js"></script>
    <!-- Custom-Style -->
    <link href="${pageContext.request.contextPath}/statics/css/custom-style.css" rel="stylesheet">
    <!-- jQuery UI -->
    <link rel="stylesheet" href="${pageContext.request.contextPath}/statics/css/jquery-ui.css">
</head>
<body>



<div>
    <nav class="navbar shrink navbar-inverse mtop-0 col-xs-12 padding-0 affix-top" id="navigation-b" style="top: 0px;">
        <div class="container-fluid">
            <div class="row">
                <div class="col-xs-12 padding-0">
                    <div class="col-sm-6 col-xs-2">
                        <div class="row">
                            <!-- hidden on smartphones -->
                            <p class="pull-left h4 uppercase navbar-text hidden-xs">DASHBOARD</p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </nav>

    <section class="container-fluid mbottom-20" id="main-content">

        <div id="myTabContent" class="tab-content col-lg-10 col-lg-offset-1 clearfix">
            <div class="tab-pane fade in active" id="home">
                <div class="table-responsive">
                    <form class="panel-body" method="POST" action="/mail" enctype="multipart/form-data">
                         <section>
                            <div class="col-sm-7 col-md-6 col-md-offset-3">
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><small>Recipients</small></label>
                                    <input type="text" class="form-control input-sm" placeholder="" id="mandatory">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><small>Subject</small></label>
                                    <input type="text" class="form-control input-sm" placeholder="" id="mandatory">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"><small>Body</small></label>
                                    <input type="text" name="body" class="form-control input-sm col-sm-2">
                                </div>
                                <div class="form-group col-md-6">
                                    <label for="exampleInputEmail1"><small>Attach File</small></label>
                                    <input type="file" >
                                </div>
                                 <div>
                                    <button type="submit"  id="btn-submit" class="btn btn-success btn-lg navbar-btn uppercase text-bold btn-loading">
                                        <span class="content visible-lg"><span class="ion-email"></span>  Senddsadas</span>
                                    </button>
                                </div>
                                <div>
                                    <h1>${answer}</h1>
                                </div>
                            </div>
                         </section>
                    </form>
                </div>
                <!--P A G I N A C I O N-->
            </div>
        </div>
    </section>
</div>
<!-- !Footer -->
</body>
</html>