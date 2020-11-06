<%@page import="auction.services.Alert"%>
<!DOCTYPE html>
<html lang="en" class="body-full-height">
    
<!-- Mirrored from themifycloud.com/demos/templates/joli/pages-login-website-light.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2017 07:39:19 GMT -->
<head>        
        <!-- META SECTION -->
        <title>Admin Page</title>            
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge"/>
        <meta name="viewport" content="width=device-width, initial-scale=1" />
        
        <link rel="icon" href="favicon.ico" type="image/x-icon" />
        <!-- END META SECTION -->
        
        <!-- CSS INCLUDE -->        
        <link rel="stylesheet" type="text/css" id="theme" href="css/theme-default.css"/>
        <link rel="icon" type="img/png" href="img/icons/favicon.ico"/>
        <!-- EOF CSS INCLUDE -->                                     
    </head>
    <body>
        
        <div class="login-container lightmode">
        
            <div class="login-box animated fadeInDown">
                <div class="login-logo"></div>
                <div class="login-body" style="border-radius:9px; ">
                    <div class="login-title"><strong>Log In</strong> to your account</div>
                    <%
                    if(Alert.getMessage()!=null){
                        out.println(Alert.getMessage());
                        Alert.clear();
                    }
                    %>
                    <form action="../Admin_Login" class="form-horizontal" method="post" >
                       
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="text" name="email" class="form-control" placeholder="E-mail"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-12">
                            <input type="password" name="password" class="form-control" placeholder="Password"/>
                        </div>
                    </div>
                    <div class="form-group">
                        <div class="col-md-6">
                            <a href="#" class="btn btn-link btn-block">Forgot your password?</a>
                        </div>
                        <div class="col-md-6">
                            <button type="submit" class="btn btn-info btn-block">Log In</button>
                        </div>
                    </div>
                    
                    
                    <div class="login-subtitle">
                        Don't have an account yet? <a href="#">Create an account</a>
                    </div>
                    </form>
                </div>
               </div>
            
        </div>
        
    </body>

<!-- Mirrored from themifycloud.com/demos/templates/joli/pages-login-website-light.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2017 07:39:19 GMT -->
</html>





