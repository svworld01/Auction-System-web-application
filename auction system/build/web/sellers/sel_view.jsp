<%@page import="java.util.Map"%>
<%@page import="java.util.LinkedList"%>
<%@page import="auction.mysql.CRUD"%>
<%@page import="java.util.LinkedHashMap"%>
<%@include file="checkSession.jsp" %>
<%@include file="inc/head.jsp" %>
<%
    String sel_id = request.getParameter("sel_id");
    String[] param = {sel_id};
    String condition = "WHERE sel_id=?";
    LinkedList<LinkedHashMap<String,String>> list;
    list = new CRUD().selectAllRecards("sellers", "*", condition, param);
    LinkedHashMap<String,String> m=list.get(0);
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
                    <li class="active">Category Details</li>
                </ul>
                <!-- END BREADCRUMB -->                       
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                     <center><h1>Category Details</h1></center>
                              <%
                    if(Alert.getMessage()!=null){
                        out.println(Alert.getMessage());
                        Alert.clear();
                    }
                    %>
        <table class="table">
                <tbody >
                  <tr>
                    <th>Sellers Id</th>
                    <td><%= m.get("sel_id")%></td>
                    
                  </tr>
                  <tr>
                    <th>Sellers Name</th>
                    <td><%= m.get("sel_name")%></td>
                                
                  </tr>
                  <tr>
                    <th>Sellers Gender</th>
                    <td><%= m.get("sel_gender")%></td>
                  </tr>
                  <tr>
                    <th>Sellers Web site</th>
                    <td><%= m.get("sel_website")%></td>
                  </tr>
                  <tr>
                    <th>Sellers Phone Number</th>
                    <td><%= m.get("sel_phone")%></td>
                  </tr>
                  <tr>
                    <th>Image</th>
                   <td><img src="../upload/<%= m.get("sel_img") %>" style="height: 100px; width: 100px;" alt=""/></td>
                  </tr>
                </tbody>
        </table>
        
                  
        <div class="row">
            <div class="col-sm-4"> <a href='sellers.jsp' style="border-radius: 4px;" class='btn btn-success fa fa-arrow-right'>Back</a></div>
                <div class="col-sm-4"> 
                         <form action="../DeleteSel" method="post" onsubmit="confirm('Are You Sure!!')">
                              <input type="hidden" name="sel_id" value="<%= m.get("sel_id")%>"/>
                              <button type="submit" style="border-radius: 4px;" class='btn btn-danger fa fa-times-circle'>Delete</button>
                       </form>
                </div>
                <div class="col-sm-4">
                    <a href="edit_sellers.jsp?sel_id=<%= m.get("sel_id")%>" style="border-radius: 4px;" class='btn btn-info fa fa-edit'>Edit</a>
                </div>
        </div>
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                                
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->
        <%@include file="inc/footer.jsp" %>