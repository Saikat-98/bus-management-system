package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.User;
import model.UserDAO;
public class LoginServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        String username=request.getParameter("login-username");
        String password=request.getParameter("login-password");
        String account_type=request.getParameter("login-account-type");
        User u=new User();
        u.setUsername(username);        
        u.setPassword(password);
        u.setAccounttype(account_type);
        UserDAO ud=new UserDAO();
        if(ud.check(u)){
            List<User> details=ud.getDetails(u);
            HttpSession session=request.getSession();
            session.setAttribute("details",details);
            session.setMaxInactiveInterval(40*60);
            if(account_type.equals("Student")){
                RequestDispatcher rd=request.getRequestDispatcher("student.jsp");
                rd.forward(request, response);
            }
            else if(account_type.equals("Faculty")){
                RequestDispatcher rd=request.getRequestDispatcher("faculty.jsp");
                rd.forward(request, response);
            }
            else if(account_type.equals("Staff")){
                RequestDispatcher rd=request.getRequestDispatcher("staff.jsp");
                rd.forward(request, response);
            }
            else if(account_type.equals("Admin")){
                RequestDispatcher rd=request.getRequestDispatcher("admin.jsp");
                rd.forward(request, response);
            }
        }
        else{
            out.println("<html><body>");
            out.println("<script type=\"text/javascript\">");
            out.println("window.alert(\"You have entered incorrect details! Please Sign-in with your correct credentials\")");
            out.println("window.location.href=\"index.jsp\"");
            out.println("</script>");
            out.println("</body></html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
