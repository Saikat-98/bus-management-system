package controller;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import model.Route;
import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;
public class AdminSearchBusNumberServlet extends HttpServlet {
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        HttpSession nsession=request.getSession(false);
        if(nsession!=null){
            Configuration cf=null;
            SessionFactory sf=null;
            Session session=null;
            List<Route> list=null;
            try{
                String bus_number=request.getParameter("adminsearchbusnumberdetails");
                cf=new Configuration();
                cf.configure("/cfgpackage/hibernate.cfg.xml");
                sf=cf.buildSessionFactory();
                session=sf.openSession();
                Transaction tx=session.beginTransaction();
                Query query=session.createQuery("from Route where busnumber =:n");
                query.setParameter("n",bus_number);
                list=query.list();
                String details="";
                if(list.size()>0){
                    for(Route b:list)
                        details+=b.getBusnumber()+" "+b.getBusdrivername()+" "+b.getBusdriverid()+" "+b.getBusdrivermobile()+" "+b.getArrivaltime()+" "+b.getDestinationtime()+" "+b.getRouteid()+" "+b.getCheckpoints()+" ";
                    out.println(details);
                }
                else
                    out.println("false");
                tx.commit();
            }
            catch(Exception ex){
                ex.printStackTrace();
            }
            finally{
                session.close();
                sf.close();
            }
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
