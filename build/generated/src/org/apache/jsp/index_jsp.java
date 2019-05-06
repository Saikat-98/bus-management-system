package org.apache.jsp;

import javax.servlet.*;
import javax.servlet.http.*;
import javax.servlet.jsp.*;

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
      response.setContentType("text/html;charset=UTF-8");
      pageContext = _jspxFactory.getPageContext(this, request, response,
      			null, true, 8192, true);
      _jspx_page_context = pageContext;
      application = pageContext.getServletContext();
      config = pageContext.getServletConfig();
      session = pageContext.getSession();
      out = pageContext.getOut();
      _jspx_out = out;
      _jspx_resourceInjector = (org.glassfish.jsp.api.ResourceInjector) application.getAttribute("com.sun.appserv.jsp.resource.injector");


    
    if(request.getSession().getAttribute("details")==null){
    

      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("\n");
      out.write("<!DOCTYPE html>\n");
      out.write("<html lang=\"en\" dir=\"ltr\">\n");
      out.write("    <head>\n");
      out.write("        <meta charset = \"UTF-8\">\n");
      out.write("        <title>Bus Management System</title>\n");
      out.write("        <link href='https://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet'>\n");
      out.write("        <link rel=\"stylesheet\" href=\"css/style.css\" media=\"screen\">\n");
      out.write("        <script type=\"text/javascript\" src=\"js/particles.js\"></script>\n");
      out.write("        <script language=\"JavaScript\"  src=\"http://ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js\"></script>\n");
      out.write("    </head>\n");
      out.write("    <body>\n");
      out.write("        <div id=\"particles-js\">\n");
      out.write("            <h1 class=\"header\">Bus manager</h1>\n");
      out.write("            <div class=\"outer\">\n");
      out.write("                <div class=\"mid\" id=\"1\">\n");
      out.write("                    <h2 class=\"header-outer\">Don't have an account?</h2></br>\n");
      out.write("                    <button class=\"btn-11\" id=\"2\">Sign-Up</button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"mid-form\" id=\"3\">\n");
      out.write("                    <div class=\"mid-form-up\">\n");
      out.write("                        <h1 class=\"header-signup\">SIGN-UP</h1>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"mid-form-down\">\n");
      out.write("                        <form action=\"RegisterServlet\" method=\"post\" class=\"form-signup\">\n");
      out.write("                            <input size=\"30\" type=\"text\" class=\"input-text input-text-username\" placeholder=\"Username\" name=\"username\" required></br></br>\n");
      out.write("                            <input size=\"30\" type=\"text\" class=\"input-text mobile\" placeholder=\"Mobile\" name=\"mobile\" required></br></br>\n");
      out.write("                            <input size=\"30\" type=\"text\" class=\"input-text email\" placeholder=\"Email ID\" name=\"email\" required></br></br>\n");
      out.write("                            <input size=\"30\" type=\"password\" class=\"input-text password\" placeholder=\"Password\" name=\"password\" required></br></br>\n");
      out.write("                            <label for=\"account\" class=\"accnt-type\">Account-Type :</label>\n");
      out.write("                            <select class=\"select-accnt\" name=\"account-type\">\n");
      out.write("                                <option class=\"option-1\">Student</option>\n");
      out.write("                                <option class=\"option-2\">Staff</option>\n");
      out.write("                                <option class=\"option-3\">Faculty</option>\n");
      out.write("                            </select>\n");
      out.write("                            <button class=\"btn-41\" onclick=\"return validate()\">Submit</button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"mid1\" id=\"4\">\n");
      out.write("                    <h2 class=\"header-outer1\">Have an account?</h2></br>\n");
      out.write("                    <button class=\"btn-31\" id=\"5\">Log-in</button>\n");
      out.write("                </div>\n");
      out.write("                <div class=\"inner\" id=\"6\">\n");
      out.write("                    <div class=\"inner-up\">\n");
      out.write("                        <h1 class=\"header-login\">LOGIN</h1>\n");
      out.write("                    </div>\n");
      out.write("                    <div class=\"inner-down\">\n");
      out.write("                        <form action=\"LoginServlet\" method=\"post\" class=\"form-login\">\n");
      out.write("                            <input size=\"30\" type=\"text\" class=\"input-text\" placeholder=\"Username\" name=\"login-username\" required></br></br></br>\n");
      out.write("                            <input size=\"30\" type=\"password\" class=\"input-text\" placeholder=\"Password\" name=\"login-password\" required></br></br></br>\n");
      out.write("                            <label for=\"account\" class=\"accnt-type\">Account-Type :</label>\n");
      out.write("                            <select class=\"select-accnt\" name=\"login-account-type\">\n");
      out.write("                                <option class=\"option-1\">Student</option>\n");
      out.write("                                <option class=\"option-2\">Staff</option>\n");
      out.write("                                <option class=\"option-3\">Faculty</option>\n");
      out.write("                                <option class=\"option-3\">Admin</option>\n");
      out.write("                            </select>\n");
      out.write("                            <button class=\"btn-21\" onclick=\"\">Submit</button>\n");
      out.write("                        </form>\n");
      out.write("                    </div>\n");
      out.write("                </div>\n");
      out.write("            </div>\n");
      out.write("        </div>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/app.js\"></script>\n");
      out.write("        <script type=\"text/javascript\" src=\"js/script.js\"></script>\n");
      out.write("    </body>\n");
      out.write("</html>\n");
}
else
  response.sendRedirect("admin.jsp");

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
