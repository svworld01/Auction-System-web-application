package org.apache.jsp.admin;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;
import auction.services.Alert;

public final class index_jsp extends org.apache.jasper.runtime.HttpJspBase
    implements org.apache.jasper.runtime.JspSourceDependent {

  private static final JspFactory _jspxFactory = JspFactory.getDefaultFactory();

  private static java.util.List<String> _jspx_dependants;

  private org.glassfish.jsp.api.ResourceInjector _jspx_resourceInjector;

  public java.util.List<String> getDependants() {
    return _jspx_dependants;
  }

  public void _jspService(HttpServletRequest request, HttpServletResponse response)
        throws java.io.IOException, ServletException {

    PageContext pageContext = null;
    HttpSession session = null;
    ServletContext application = null;
    ServletConfig config = null;
    JspWriter out = null;
    Object page = this;
    JspWriter _jspx_out = null;
    PageContext _jspx_page_context = null;

    try {
      response.setContentType("text/html");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");

      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" class=\"body-full-height\">\n");
      out.write("    \n");
      out.write("<!-- Mirrored from themifycloud.com/demos/templates/joli/pages-login-website-light.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2017 07:39:19 GMT -->\n");
      out.write("<head>        \n");
      out.write("        <!-- META SECTION -->\n");
      out.write("        <title>Admin Page</title>            \n");
      out.write("        <meta http-equiv=\"Content-Type\" content=\"text/html; charset=utf-8\" />\n");
      out.write("        <meta http-equiv=\"X-UA-Compatible\" content=\"IE=edge\"/>\n");
      out.write("        <meta name=\"viewport\" content=\"width=device-width, initial-scale=1\" />\n");
      out.write("        \n");
      out.write("        <link rel=\"icon\" href=\"favicon.ico\" type=\"image/x-icon\" />\n");
      out.write("        <!-- END META SECTION -->\n");
      out.write("        \n");
      out.write("        <!-- CSS INCLUDE -->        \n");
      out.write("        <link rel=\"stylesheet\" type=\"text/css\" id=\"theme\" href=\"css/theme-default.css\"/>\n");
      out.write("        <link rel=\"icon\" type=\"img/png\" href=\"img/icons/favicon.ico\"/>\n");
      out.write("        <!-- EOF CSS INCLUDE -->                                     \n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        \n");
      out.write("        <div class=\"login-container lightmode\">\n");
      out.write("        \n");
      out.write("            <div class=\"login-box animated fadeInDown\">\n");
      out.write("                <div class=\"login-logo\"></div>\n");
      out.write("                <div class=\"login-body\" style=\"border-radius:9px; \">\n");
      out.write("                    <div class=\"login-title\"><strong>Log In</strong> to your account</div>\n");
      out.write("                    ");

                    if(Alert.getMessage()!=null){
                        out.println(Alert.getMessage());
                        Alert.clear();
                    }
                    
      out.write("\n");
      out.write("                    <form action=\"../Admin_Login\" class=\"form-horizontal\" method=\"post\" >\n");
      out.write("                       \n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                            <input type=\"text\" name=\"email\" class=\"form-control\" placeholder=\"E-mail\"/>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"col-md-12\">\n");
      out.write("                            <input type=\"password\" name=\"password\" class=\"form-control\" placeholder=\"Password\"/>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"form-group\">\n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("                            <a href=\"#\" class=\"btn btn-link btn-block\">Forgot your password?</a>\n");
      out.write("                        </div>\n");
      out.write("                        <div class=\"col-md-6\">\n");
      out.write("                            <button type=\"submit\" class=\"btn btn-info btn-block\">Log In</button>\n");
      out.write("                        </div>\n");
      out.write("                    </div>\n");
      out.write("                    \n");
      out.write("                    \n");
      out.write("                    <div class=\"login-subtitle\">\n");
      out.write("                        Don't have an account yet? <a href=\"#\">Create an account</a>\n");
      out.write("                    </div>\n");
      out.write("                    </form>\n");
      out.write("                </div>\n");
      out.write("               </div>\n");
      out.write("            \n");
      out.write("        </div>\n");
      out.write("        \n");
      out.write("    </body>\n");
      out.write("\n");
      out.write("<!-- Mirrored from themifycloud.com/demos/templates/joli/pages-login-website-light.html by HTTrack Website Copier/3.x [XR&CO'2014], Mon, 01 May 2017 07:39:19 GMT -->\n");
      out.write("</html>\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
    } catch (Throwable t) {
      if (!(t instanceof SkipPageException)){
        out = _jspx_out;
        if (out != null && out.getBufferSize() != 0)
          out.clearBuffer();
        if (_jspx_page_context != null) _jspx_page_context.handlePageException(t);
        else throw new ServletException(t);
      }
    } finally {
      _jspxFactory.releasePageContext(_jspx_page_context);
    }
  }
}
