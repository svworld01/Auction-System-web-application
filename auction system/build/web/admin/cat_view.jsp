<%@page import="java.util.Map"%>
<%@page import="java.util.LinkedList"%>
<%@page import="auction.mysql.CRUD"%>
<%@page import="java.util.LinkedHashMap"%>
<%@include file="checkSession.jsp" %>
<%@include file="inc/head.jsp" %>
<%
    String cat_id = request.getParameter("cat_id");
    String[] param = {cat_id};
    String condition = "WHERE cat_id=?";
    LinkedList<LinkedHashMap<String,String>> list;
    list = new CRUD().selectAllRecards("product_categoy", "*", condition, param);
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
                    <th>Category Id</th>
                    <td><%= m.get("cat_id")%></td>
                    
                  </tr>
                  <tr>
                    <th>Category Name</th>
                    <td><%= m.get("cat_name")%></td>
                                
                  </tr>
                  <tr>
                    <th>Category Publish</th>
                    <td><%= m.get("cat_publish")%></td>
                  </tr>
                  <tr>
                    <th>Category Status</th>
                    <td><%= m.get("cat_status")%></td>
                  </tr>
                  <tr>
                    <th>Category Deleted</th>
                    <td><%= m.get("cat_deleted")%></td>
                  </tr>
                  
                 
                </tbody>
        </table>
        
                  
        <div class="row">
            <div class="col-sm-4"> <a href='categry.jsp' style="border-radius: 4px;" class='btn btn-success fa fa-arrow-right'>Back</a></div>
                <div class="col-sm-4"> 
                         <form action="../DeleteCat" method="post" onsubmit="confirm('Are You Sure!!')">
                              <input type="hidden" name="cat_id" value="<%= m.get("cat_id")%>"/>
                              <button type="submit" style="border-radius: 4px;" class='btn btn-danger fa fa-times-circle'>Delete</button>
                       </form>
                </div>
                <div class="col-sm-4">
                    <a href="edit_category.jsp?cat_id=<%= m.get("cat_id")%>" style="border-radius: 4px;" class='btn btn-info fa fa-edit'>Edit</a>
                </div>
        </div>
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                                
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->
        <%@include file="inc/footer.jsp" %>