
<%@page import="auction.services.Alert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
String id=(String)session.getAttribute("admin");
if(id==""||id==null){
    Alert.setMessage("danger","Alert","You can't acccess that page directly.");
    response.sendRedirect("index.jsp");
}

%>
