<%@include file="checkSession.jsp" %>
<%@include file="inc/head.jsp" %>
<%

String sel_id=request.getParameter("sel_id");
%>
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
                    <li class="active">Edit Sellers</li>
                </ul>
                <!-- END BREADCRUMB -->                       
                
                <!-- PAGE CONTENT WRAPPER -->
                 <div class="page-content-wrap">
                   <div class="col-md-7">                        

                            <!-- START JQUERY VALIDATION PLUGIN -->
                            <div class="block">
                                <h2>Edit Sellers</h2>
                                <form id="jvalidate" role="form" class="form-horizontal" action="../Update_sel" method="post">
                                <div class="panel-body">                                    
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Sellers Id :</label>                                        
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="sel_id" value="<%=sel_id%>" readonly="readonly"/>  
                                        </div>
                                    </div>  
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Sellers Name :</label>                                        
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="sel_name" required="required"/>  
                                        </div>
                                    </div>  
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Sellers Number:</label>                                       
                                        <div class="col-md-9">
                                            <input type="number" class="form-control" name="sel_phone"  required="required"/>  
                                        </div>
                                    </div>               
                                     <div class="form-group">
                                        <label class="col-md-3 control-label" for="sel1">Sellers Gender:</label>
                                        <div class="col-md-9">
                                            <select class="form-control" id="sel1" name="sel_gender">
                                                <option value="">Choose</option>
                                                <option value="male">Male</option>
                                                <option value="female">Female</option>
                                        </select>
                                        </div>
                                    </div>   
                                     <div class="form-group">
                                        <label class="col-md-3 control-label">Sellers Web Site:</label>                                       
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="sel_website"  required="required"/>  
                                        </div>
                                    </div>  
                                        <div class="form-group">
                                        <label class="col-md-3 control-label" for="sel1">Status:</label>
                                        <div class="col-md-9">
                                            <select class="form-control" id="sel1" name="sel_status">
                                                <option value="">Choose</option>
                                                <option value="active">Active</option>
                                                <option value="offline">offline</option>
                                        </select>
                                        </div>
                                    </div>   
                                    <div class="btn-group pull-right">
                                        <button style="border-radius: 4px; " class="btn btn-info" type="submit">Update</button>
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
      
        <!-- END PAGE CONTAINER -->
        <%@include file="inc/footer.jsp" %>