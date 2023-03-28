package com.employee.servlet;

import com.employee.dao.*;
import com.employee.entities.message;
import com.employee.helper.ConnectionProvider;
import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

public class DeleteServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            /* TODO output your page here. You may use following sample code. */
            int delid = Integer.parseInt(request.getParameter("id"));
            UserDao dao = new UserDao(ConnectionProvider.getConnection());
            boolean b = dao.delete(delid);
            if (b == true) {
                response.sendRedirect("edit_employee.jsp");
                HttpSession s = request.getSession();
                message m = new message("Deleted SuccessFully", "success", "danger");
                s.setAttribute("msg", m);
            }

        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    @Override
    public String getServletInfo() {
        return "Short description";
    }

}
