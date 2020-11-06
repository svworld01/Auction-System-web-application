<%@page import="auction.mysql.CRUD"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.LinkedHashMap"%>
<%@include file="head.jsp" %>
<body>
    <%@include file="header.jsp"%>
    <%@include file="slider.jsp"%>
    <%
        LinkedList<LinkedHashMap<String, String>> list;
        String cat_id = request.getParameter("cat_id");
        if (cat_id == null || cat_id == "") {
            String condition = " order by pro_id desc limit 10 ";
            String[] param = {};
            list = new CRUD().selectAllRecards("product", "*", condition, param);
        } else {
            String condition = " WHERE pro_cat=? ";
            String[] param = {cat_id};

            list = new CRUD().selectAllRecards("product", "*", condition, param);
        }

    %>
    <section>
        <div class="container">
            <div class="row">

                <%@include file="sidebar.jsp"%>


                <div class="col-sm-9 padding-right">
                    <div class="features_items"><!--features_items-->
                        <h2 class="title text-center">Features Items</h2>
                        <%                                                    for (LinkedHashMap<String, String> map : list) {

                        %>
                        <div class="col-sm-4">
                            <div class="product-image-wrapper">
                                <div class="single-products">
                                    <div class="productinfo text-center">
                                        <img src="upload/<%= map.get("pro_img")%>" style="height: 283px; width: 240px;" alt=""/>
                                        <h2>RS.<%= map.get("pro_min_cast")%></h2>
                                        <p><%= map.get("pro_name")%></p>
                                        <a href="pro_details.jsp?pro_id=<%= map.get("pro_id")%>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View</a>
                                    </div>
                                    <div class="product-overlay">
                                        <div class="overlay-content">
                                            <h2>RS.<%= map.get("pro_min_cast")%></h2>
                                            <p><%= map.get("pro_name")%></p>
                                            <a href="pro_details.jsp?pro_id=<%= map.get("pro_id")%>" class="btn btn-default add-to-cart"><i class="fa fa-shopping-cart"></i>View</a>
                                        </div>
                                    </div>
                                </div>

                            </div>
                        </div>
                        <%
                            }
                        %>


                    </div>
                </div>

            </div>
        </div><!--/recommended_items-->


    </section>

    <%@include file="footer.jsp" %>