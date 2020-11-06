
<%@page import="auction.mysql.CRUD"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.LinkedHashMap"%>
<%@page import="java.util.LinkedHashMap"%>
<%
        
        String condition1="";
        String[] param1={};
        LinkedList<LinkedHashMap<String,String>> list1;
        list1=new CRUD().selectAllRecards(" product_categoy ", " cat_id,cat_name ", condition1, param1);
        
        
        
        %>

<div class="col-sm-3">
    <div class="left-sidebar">
        <h2>Category</h2>
        <div class="panel-group category-products" id="accordian">
            <%
            for(LinkedHashMap<String,String> map1:list1){
            %>
            <div class="panel panel-default">	
                <div class="panel-heading">		
                    <h4 class="panel-title"><a href="index.jsp?cat_id=<%=map1.get("cat_id")%>"><%= map1.get("cat_name")%></a></h4>
                </div>
            </div>
            <%
            }
            %>
        </div><!--/category-products-->
    </div>
</div>