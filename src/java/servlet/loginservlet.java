/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package servlet;

import bean.loginbean;
import java.io.IOException;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletConfig;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import static jdk.nashorn.internal.runtime.Debug.id;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import bean.loginbean;
import servlet.DB;

/**
 *
 * @author Administrator
 */
public class loginservlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        request.setCharacterEncoding("UTF-8");   //必须的
        loginbean rr = new loginbean();//loginbean对象
        HttpSession ss = request.getSession(true);
        ss.setAttribute("loginbean", rr);

        String id = request.getParameter("id");
        String pwd = request.getParameter("password");

        if (!id.equals(null) && !pwd.equals(null)) {
            try {
                PreparedStatement ps = DB.dbCon().prepareStatement("select * from user where userid=? and pwd=?");
                ps.setString(1, id);
                ps.setString(2, pwd);
                ResultSet rs = ps.executeQuery();
                if (rs.next()) {
                    rr.setName(rs.getString(2));
                    rr.setFlag("Welcome " + rs.getString(2));
                    rr.setSs(true);
                    rr.setId(rs.getString(1));
                    rr.setPhone(rs.getString(4));
                    

                    ss.setAttribute("loginbean", rr);

                    ss.setAttribute("id", id);
                    ss.setAttribute("name", rs.getString(2));
                   

                    response.sendRedirect("mainpage.jsp");
                  

                } else {
                    rr.setFlag("Wrong id or password!");
                    RequestDispatcher dis = request.getRequestDispatcher("error.jsp");
                    dis.forward(request, response);
                }
            } catch (Exception e) {
            };
        } else {
            rr.setFlag("id or password can not be null");
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

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
