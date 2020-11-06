
<%@page import="java.util.LinkedHashMap"%>
<%@page import="auction.services.Alert"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
LinkedHashMap<String,String> sellerMap=(LinkedHashMap<String,String>)session.getAttribute("sellers");
if(sellerMap.isEmpty()){
    Alert.setMessage("danger","Alert","You can't acccess that page directly.");
    response.sendRedirect("index.jsp");
}

%>
