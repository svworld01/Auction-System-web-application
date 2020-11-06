<%@page import="auction.mysql.CRUD"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.LinkedHashMap"%>
<%@include file="checkSession.jsp" %>
<%@include file="inc/head.jsp" %>
<% 
    String[] param = {};
    String condition = "";
    LinkedList<LinkedHashMap<String,String>> list;
    list = new CRUD().selectAllRecards("sellers", "*", condition, param);
    
    
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
                    <li class="active">Sellers</li>
                </ul>
                <!-- END BREADCRUMB -->                       
                
                        <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                    <div class="row" style="margin:1%">
                        <div class="col-md-12" style="text-align: right">
                            <a href="add_sellers.jsp" style="border-radius: 4px;" class="btn btn-lg btn-success">Add New</a>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-12">

                            <!-- START DEFAULT DATATABLE -->
                            <div class="panel panel-default">
                                <div class="panel-heading">                                
                                    <h3 class="panel-title">Standered</h3>
                                    <ul class="panel-controls">
                                        <li><a href="#" class="panel-collapse"><span class="fa fa-angle-down"></span></a></li>
                                        <li><a href="#" class="panel-refresh"><span class="fa fa-refresh"></span></a></li>
                                        <li><a href="#" class="panel-remove"><span class="fa fa-times"></span></a></li>
                                    </ul>                                
                                </div>
                                <div class="panel-body">
                                      <%
                                        if(Alert.getMessage()!=null){
                                            out.println(Alert.getMessage());
                                            Alert.clear();
                                        }
                                      %>
                                    <table class="table datatable">
                                        <thead>
                                            <tr>
                                                <th>ID</th>
                                                <th>Name</th>
                                                <th>Gender</th>
                                                <th>Email</th>
                                                <th>Phone Number</th>
                                                <th>State</th>
                                                <th>City</th>
                                                <th>Web site</th>
                                                <th>Logo</th>
                                                <th>Action</th>
                                            </tr>
                                        </thead>
                                        <tbody>
                                            
                                            <%
                                            for(LinkedHashMap<String, String> map : list){
                                            %>
                                            
                                                <tr>
                                                    <td><%= map.get("sel_id") %></td>
                                                    <td><%= map.get("sel_name") %></td>
                                                    <td><%= map.get("sel_gender") %></td>
                                                    <td><%= map.get("sel_email") %></td>
                                                    <td><%= map.get("sel_phone") %></td>
                                                    <td><%= map.get("sel_state") %></td>
                                                    <td><%= map.get("sel_city") %></td>
                                                    <td><%= map.get("sel_website") %></td>
                                                    <td><img src="../upload/<%= map.get("sel_img") %>" style="height: 100px; width: 100px;" alt=""/></td>
                                                    <td>
                                                        <span class="fa fa-eye"></span>
                                                        <a href="sel_view.jsp?sel_id=<%= map.get("sel_id") %>"> View</a>
                                                    </td>
                                                </tr>
                                            
                                            <%
                                            }
                                            %>
                                            
                                         
                                        </tbody>
                                    </table>
                                </div>
                            </div>
                            <!-- END DEFAULT DATATABLE -->

                        </div>
                    </div>                                
                    
                </div>
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->
        <%@include file="inc/footer.jsp" %>