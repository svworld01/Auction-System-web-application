<%@page import="java.util.Map"%>
<%@page import="java.util.LinkedList"%>
<%@page import="auction.mysql.CRUD"%>
<%@page import="java.util.LinkedHashMap"%>
<%@include file="checkSession.jsp" %>
<%@include file="inc/head.jsp" %>
<%
    String pro_id = request.getParameter("pro_id");
    String[] param = {pro_id};
    String condition = "WHERE pro_id=?";
    LinkedList<LinkedHashMap<String,String>> list;
    list = new CRUD().selectAllRecards("product", "*", condition, param);
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
                    <li class="active">Product Details</li>
                </ul>
                <!-- END BREADCRUMB -->                       
                
                <!-- PAGE CONTENT WRAPPER -->
                <div class="page-content-wrap">
                     <center><h1>Product Details</h1></center>
                              <%
                    if(Alert.getMessage()!=null){
                        out.println(Alert.getMessage());
                        Alert.clear();
                    }
                    %>
        <table class="table">
                <tbody >
                  <tr>
                    <th>Product Id</th>
                    <td><%= m.get("pro_id")%></td>
                    
                  </tr>
                  <tr>
                    <th>Product Name</th>
                    <td><%= m.get("pro_name")%></td>
                                
                  </tr>
                  <tr>
                    <th>Product Publish</th>
                    <td><%= m.get("pro_publish_data")%></td>
                  </tr>
                  <tr>
                    <th>Product Status</th>
                    <td><%= m.get("pro_status")%></td>
                  </tr>
                  <tr>
                    <th>Image</th>
                   <td><img src="../upload/<%= m.get("pro_img") %>" style="height: 100px; width: 100px;" alt=""/></td>
                  </tr>
                </tbody>
        </table>
        
                  
        <div class="row">
            <div class="col-sm-4"> <a href='product.jsp' style="border-radius: 4px;" class='btn btn-success fa fa-arrow-right'>Back</a></div>
                <div class="col-sm-4"> 
                         <form action="../DeletePro" method="post" onsubmit="confirm('Are You Sure!!')">
                              <input type="hidden" name="pro_id" value="<%= m.get("pro_id")%>"/>
                              <button type="submit" style="border-radius: 4px;" class='btn btn-danger fa fa-times-circle'>Delete</button>
                       </form>
                </div>
                <div class="col-sm-4">
                    <a href="edit_product.jsp?pro_id=<%= m.get("pro_id")%>" style="border-radius: 4px;" class='btn btn-info fa fa-edit'>Edit</a>
                </div>
        </div>
                </div>
                <!-- END PAGE CONTENT WRAPPER -->                                
            </div>            
            <!-- END PAGE CONTENT -->
        </div>
        <!-- END PAGE CONTAINER -->
        <%@include file="inc/footer.jsp" %>