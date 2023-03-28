
package com.employee.servlet;

import com.employee.dao.UserDao;
import com.employee.entities.message;
import com.employee.entities.user;
import com.employee.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@MultipartConfig
public class RegisterServlet extends HttpServlet 
{

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            //fetch all form data
            String check = request.getParameter("check");
            if (check == null )
            {
               out.println("Please Check The Terms And Condition");
            }
            else
            {
                //all data 
                String name = request.getParameter("user_name");
                String email = request.getParameter("email");
                String mobile_no = request.getParameter("mobile");
                String city = request.getParameter("city");
                String gender = request.getParameter("gender");
                String dob = request.getParameter("dob");
                
                //creat user object and set all the data to that object
                user user =new user(name , email , mobile_no , city , gender , dob);
                
                //creat UserDao objectc
                UserDao dao = new UserDao(ConnectionProvider.getConnection());
                
                if(dao.saveUser(user))
                
                {
                    //save
                    out.println("Done");
                }
                else
                {
                    out.println("User Mobie No or Email Alredy Exist");
                }
                
            }
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
