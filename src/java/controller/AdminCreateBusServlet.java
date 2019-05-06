package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Bus;
import model.BusDAO;
import model.Route;

public class AdminCreateBusServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession session=request.getSession(false);
        if(session!=null){
            String details=request.getParameter("createBusDetails");
            String[] x=details.split(" ");
            Route r = new Route();
            Bus b=new Bus();
            int length=x.length;
            String routepoint="";
            for(int i=7;i<length;i+=2){
                if(i<length-1)
                    routepoint+=x[i]+"->";
                else
                    routepoint+=x[i];
            }
            String routeid="";
            for(int i=6;i<length;i+=2)
                routeid+=x[i];
            r.setBusnumber(x[0]);
            r.setBusdriverid(x[1]);
            r.setBusdrivername(x[2]);
            r.setBusdrivermobile(x[3]);
            r.setArrivaltime(x[4]);
            r.setDestinationtime(x[5]);
            r.setRouteid(routeid);
            r.setCheckpoints(routepoint);
            BusDAO bd=new BusDAO();
            boolean check=true;
            for(int i=6;i<length;i+=2)
                check=check&&bd.checkRoute(x[i],x[i+1]);
            if(check==true){
                bd.save(b);
                bd.save(r);
                out.println(true);
            }
            else
                out.println(false);
        }
        else
            response.sendRedirect("index.jsp");
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
