<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import ="com.employee.helper.*" %>
<%@page import ="com.employee.entities.*" %>
<%@page import ="com.employee.dao.*" %>
<%@page import ="com.employee.servlet.*" %>
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
        <%
            int id = Integer.parseInt(request.getParameter("id"));
        %>
        <%
              UserDao udao = new UserDao(ConnectionProvider.getConnection());
              user us= udao.getemployeeId(id);
        %>
          
        <!--normal nav bar-->
        <%@include file="normal_navbar.jsp" %>

        <%= id %>
        <!--creating the edit form--> 
        <main class="primary-background p-5 banner-background ">
            <div class="container">
                <div class="col-md-6 offset-md-3">
                    <div class="card">
                        <div class="card-header text-center bg-primary text-white">
                            <span class="fa fa-user-circle fa-3x"></span>
                            <br>
                            <h5> Edit Carefully !!</h5>
                        </div>

                        <div class="card-body">
                            <form action ="UpdateServlet" method="post">
                                <div class="form-group">
                                    <input name ="id" type="hidden" class="form-control" value="<%= us.getId()%> ">
                                </div>
                                <div class="form-group">
                                    <label for="user_name"> Name</label>
                                    <input name ="user_name" type="text" class="form-control" value="<%= us.getName()%>">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1">Email address</label>
                                    <input name ="email" type="email" class="form-control" value="<%= us.getEmail()%> ">
                                </div>
                                <div class="form-group">
                                    <label for="mobile"> Mobile No.</label>
                                    <input name ="mobile" type="text" class="form-control" value="<%= us.getMobile_no() %>" >
                                </div>
                                <div class="form-group">
                                    <label for="city"> Employee City</label>
                                    <input name ="city" type="text" class="form-control" value="<%= us.getCity() %>" >
                                </div> 
                                <div class="form-group">
                                    <label for="exampleInputEmail1"> Employee Gender</label>
                                    <input name ="gender" type="text" class="form-control" value="<%= us.getGender()%> ">
                                </div>
                                <div class="form-group">
                                    <label for="exampleInputEmail1"> Employee DOB</label>
                                    <input name ="dob" type="text" class="form-control" value="<%= us.getDob()%> ">
                                </div>
                                <br>
                                <button id="submit-btn" type="submit" class="btn btn-primary"> Save </button>
                                <a href="index.jsp" class="btn btn-primary"> <span class=" fa fa-sign-in"></span> Already A User ! </a>
                            </form>
                        </div>
                    </div>
                </div>
            </div>
        </main>

        <!--java script--> 
        <script
            src="https://code.jquery.com/jquery-3.6.3.min.js"
            integrity="sha256-pvPw+upLPUjgMXY0G+8O0xUf+/Im1MZjXxxgOcBQBXU="
            crossorigin="anonymous">
        </script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.12.9/dist/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>        
        <script src="js/myjs.js" type="text/javascript"></script>

        <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js">
        </script>
        
       
        
    </body>
</html>
