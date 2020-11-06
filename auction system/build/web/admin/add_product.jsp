<%@page import="java.util.LinkedList"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="auction.mysql.CRUD"%>
<%@include file="checkSession.jsp" %>
<%@include file="inc/head.jsp" %>
<%

String cat_id=request.getParameter("cat_id");
String[] param={};
CRUD c=new CRUD();
LinkedList<LinkedHashMap<String,String>> category;
category=c.selectAllRecards("product_categoy", "cat_id,cat_name", "", param);
LinkedList<LinkedHashMap<String,String>> sellers;
sellers=c.selectAllRecards("sellers", "sel_id", "", param);
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
                    <li class="active">Add Product</li>
                </ul>
                <!-- END BREADCRUMB -->                       
                
                <!-- PAGE CONTENT WRAPPER -->
                 <div class="page-content-wrap">
                   <div class="col-md-7">                        

                            <!-- START JQUERY VALIDATION PLUGIN -->
                            <div class="block">
                                <h2>Add Product</h2>
                                <form id="jvalidate" role="form" class="form-horizontal" enctype="multipart/form-data" action="../AddProduct" method="post">
                                <div class="panel-body">                                    
                                  
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Product Name :</label>                                        
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="pro_name" required="required"/>  
                                        </div>
                                    </div>  
                                    <div class="form-group">
                                        <label class="col-md-3 control-label" for="sel1">Product Category:</label>
                                        <div class="col-md-9">
                                            <select class="form-control" id="sel1"  name="pro_cat">
                                          <option>choose</option>
                                          <%
                                          for(LinkedHashMap<String,String> cat:category){
                                          %>
                                          <option value="<%=cat.get("cat_id")%>">
                                              <%=cat.get("cat_name")%>
                                          </option>
                                          <%
                                          }
                                          %>
                                        </select>
                                        </div>
                                    </div>   
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Publish Date:</label>                                       
                                        <div class="col-md-9">
                                            <input type="date" class="form-control" name="pro_publish_data"  required="required"/>  
                                        </div>
                                    </div>               
                                      <div class="form-group">
                                        <label class="col-md-3 control-label" for="sel1">Product Owner:</label>
                                        <div class="col-md-9">
                                            <select class="form-control" id="sel1"  name="pro_owner">
                                          <option>choose</option>
                                          <%
                                          for(LinkedHashMap<String,String> sel:sellers){
                                          %>
                                          <option value="<%=sel.get("sel_id")%>">
                                              <%=sel.get("sel_id")%>
                                          </option>
                                          <%
                                          }
                                          %>
                                        </select>
                                        </div>
                                    </div>  
                                     <div class="form-group">
                                        <label class="col-md-3 control-label">Product Cost:</label>                                       
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="pro_min_cast"  required="required"/>  
                                        </div>
                                    </div>  
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Product Description:</label>                                       
                                        <div class="col-md-9">
                                            <input type="text" class="form-control" name="pro_disc"  required="required"/>  
                                        </div>
                                    </div>
                                    <div class="form-group">
                                        <label class="col-md-3 control-label">Product Image:</label>                                       
                                        <div class="col-md-9">
                                            <input type="file" accept="image/*" class="form-control" name="pro_img"  required="required"/>  
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