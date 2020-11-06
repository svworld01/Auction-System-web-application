<%@include file="checkSession.jsp" %>
<%@include file="inc/head.jsp" %>

    <body>
        <!-- START PAGE CONTAINER -->
        <div class="page-container">
            
            <!-- START PAGE SIDEBAR -->
            <div class="page-sidebar">
                <!-- START X-NAVIGATION -->
                <%@include file="inc/nav-y.jsp" %>
                <!-- END X-NAVIGATION -->
            </div>
            <!-- END PAGE SIDEBAR -->
            
            <!-- PAGE CONTENT -->
            <div class="page-content">
                
                <!-- START X-NAVIGATION VERTICAL -->
                <%@include file="inc/nav-x.jsp"%>
                <!-- END X-NAVIGATION VERTICAL -->                     

                <!-- START BREADCRUMB -->
                <ul class="breadcrumb">
                    <li><a href="#">Home</a></li>                    
                    <li class="active">Dashboard</li>
                    <li class="active">Add Category</li>
                </ul>
                <!-- END BREADCRUMB -->                       
                
                <!-- PAGE CONTENT WRAPPER -->
                 <div class="page-content-wrap">
                   <div class="col-md-7">                        

                            <!-- START JQUERY VALIDATION PLUGIN -->
                            <div class="block">
                                <h2>Add Category</h2>
                                <form id="jvalidate" role="form" class="form-horizontal" action="../add_cat" method="post">
                                <div class="panel-body">                                    
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Category Name :</label>                                        
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="cat_name" required="required"/>  
                                        </div>
                                    </div>                    
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Publish Date:</label>                                       
                                        <div class="col-md-9">
                                            <input type="date" class="form-control" name="cat_publish"  required="required"/>  
                                        </div>
                                    </div>               
                                                                                                               
                                    <div class="btn-group pull-right">
                                        <button style="border-radius: 4px; " class="btn btn-info" type="submit">Submit</button>
                                    </div>                                                                                                                          
                                </div>                                               
                                </form>
                            <!-- END JQUERY VALIDATION PLUGIN -->
                            </div>
                        </div>
                    </div>
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                                
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->
        <%@include file="inc/footer.jsp" %>