<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="com.employee.helper.*" %>
<%@page import ="com.employee.entities.*" %>
<%@page import ="java.util.*" %>
<%@page import="java.sql.*" %>
<%@page errorPage="error_page.jsp" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Edit Page</title>
        <!--Bootstrap CSS-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Local Shop India</title>
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>
    <body>
        <%@include file="normal_navbar.jsp" %> 
        <% 
            Connection con = ConnectionProvider.getConnection();
            String query = "select * from employee";
            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery(query);
        %>
        <br>
        <br>
        <div class="container text-center">
            <h3>All Employee Lists</h3>
            <div class="row">
                <div class="col-md-11 text-center">
                   <% message m1 =(message)session.getAttribute("msg");
                           if(m1 != null)
                           {%>
                        <div class="alert alert-<%= m1.getCssClass() %>" role="alert">
                            <%= m1.getContent()%>
                        </div>
                        <% }
                        %>
                        <% session.removeAttribute("msg"); %>
                    <table class="table table-striped table-light">
                        <thead>
                            <tr class="primary-background text-warning">
                                <th scope="col">Name</th>
                                <th scope="col">Email</th>
                                <th scope="col">Mobile</th>
                                <th scope="col">City</th>
                                <th scope="col">Gender</th>
                                <th scope="col">DOB</th>
                                <th scope="col">Delete</th>
                            </tr>
                        </thead>
                        <tbody>
                            <% while(rs.next()){ %>
                            <tr>
                                <td><%= rs.getString("name") %></td>
                                <td><%= rs.getString("email") %></td>
                                <td><%= rs.getString("mobile_no") %></td>
                                <td><%= rs.getString("city") %></td>
                                <td><%= rs.getString("gender") %></td>
                                <td><%= rs.getString("dob") %></td>
                                <td><a class="btn btn-primary" href="delete?id=<%=rs.getInt("id")%>"> Delete </a></td>
                                <% } %>
                            </tr>
                        </tbody>
                    </table>
                    <br>
                    <a class="btn btn-primary" href="index.jsp"> Back </a>      
                </div>
            </div>
        </div>

        <!--Java Script-->
        <script
            src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
            crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>        
        <script src="js/myjs.js" type="text/javascript"></script>

    </body>
</html>

