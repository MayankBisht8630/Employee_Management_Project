package com.employee.servlet;

import com.employee.dao.UserDao;
import com.employee.entities.*;
import com.employee.entities.user;
import com.employee.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.MultipartConfig;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;


@MultipartConfig
public class UpdateServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) 
        {
             out.println("Data Updated Successfuly1");

            String Id =request.getParameter("id");
            out.println(Id);
            String Name = request.getParameter("user_name");
            out.println(Name);
            String Email = request.getParameter("email");
            out.println(Email);
            String MobileNO = request.getParameter("mobile");
            out.println(MobileNO);
            String City = request.getParameter("city");
            out.println(City);
            String Gender = request.getParameter("gender");
            out.println(Gender);
            String Dob = request.getParameter("dob");
            out.println(Dob);
            
            //create object of user
            user user = new user(Name, Email, MobileNO, City, Gender, Dob);
            
            //create object of user dao
            UserDao daoo = new UserDao(ConnectionProvider.getConnection());
            
            boolean y =daoo.updateEmployee(user);
            if(y)
            {
                out.println("Data Updated Successfuly");
                response.sendRedirect("edit_employee.jsp");
            }
            else 
            {
                out.println("Error");
            }
        }
    }
    @Override
    public String getServletInfo() {
        return "Short description";
    }
}
