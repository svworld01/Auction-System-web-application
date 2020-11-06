<%@page import="java.util.LinkedList"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="auction.mysql.CRUD"%>
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
                    <li class="active">Add Product</li>
                </ul>
                <!-- END BREADCRUMB -->                       
                
                <!-- PAGE CONTENT WRAPPER -->
                 <div class="page-content-wrap">
                   <div class="col-md-7">                        

                            <!-- START JQUERY VALIDATION PLUGIN -->
                            <div class="block">
                                <h2>Add Sellers</h2>
                                <form id="jvalidate" role="form" class="form-horizontal" enctype="multipart/form-data" action="../add_sel" method="post">
                                <div class="panel-body">                                    
                                  
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Sellers Name :</label>                                        
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="sel_name" required="required"/>  
                                        </div>
                                    </div>  
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="sel1">Sellers Gender</label>
                                        <div class="col-md-9">
                                            <select class="form-control" id="sel1"  name="sel_gender">
                                                <option value="">choose</option>
                                                <option value="male">male</option>
                                                <option value="female">Female</option>
                                        </select>
                                        </div>
                                    </div>   
                                    
                                   <div class="form-group">
                                        <label class="col-md-3 control-label">Sellers Email :</label>                                        
                                        <div class="col-md-9">
                                            <input type="email" class="form-control" name="sel_email" required="required"/>  
                                        </div>
                                    </div>  
                                    
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Sellers Phone Number:</label>                                       
                                        <div class="col-md-9">
                                            <input type="number" class="form-control" name="sel_phone"  required="required"/>  
                                        </div>
                                    </div>     
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Sellers State :</label>                                        
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="sel_state" required="required"/>  
                                        </div>
                                    </div>  
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Sellers City :</label>                                        
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="sel_city" required="required"/>  
                                        </div>
                                    </div> 
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Sellers Pin:</label>                                        
                                        <div class="col-md-9">
                                            <input type="number" class="form-control" name="sel_pin" required="required"/>  
                                        </div>
                                    </div>  
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Address:</label>                                        
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="sel_address" required="required"/>  
                                        </div>
                                    </div> 
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Sellers Web site:</label>                                        
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="sel_website" required="required"/>  
                                        </div>
                                    </div>  
                                   
                                     <div class="form-group">
                                        <label class="col-md-3 control-label">Sellers Password:</label>                                       
                                        <div class="col-md-9">
                                            <input type="password"  class="form-control" name="sel_password"  required="required"/>  
                                        </div>
                                    </div> 
                                     <div class="form-group">
                                        <label class="col-md-3 control-label">Sellers Logo</label>                                       
                                        <div class="col-md-9">
                                            <input type="file" accept="image/*" class="form-control" name="sel_img"  required="required"/>  
                                        </div>
                                    </div>  
                                    <div class="btn-group pull-right">
                                        <button style="border-radius: 4px; " class="btn btn-info" type="submit">Add</button>
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