<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <!--Bootstrap CSS-->
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title> Local Shop India</title>
        <link href="css/mystyle.css" rel="stylesheet" type="text/css"/>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <style>
            .back-img{
                background: url("main_image/local shop.PNG");
                height: 50vh;
                width: 100%;
                background-repeat: no-repeat;
                background-size: cover;
            }
            .banner-background{
                clip-path: polygon(30% 0%, 70% 0%, 100% 0, 100% 90%, 70% 100%, 28% 90%, 0 100%, 0 0);
            }
        </style>  
    </head>
    <body>

        <!--navbar-->
        <%@include file="normal_navbar.jsp" %>

        <div class = "container-fluid back-img">

        </div>
        <!--banner-->
        <div class="container-fluid-0 m-0  ">
            <div class="jumbotron primary-background text-white banner-background">
                <div class="container">
                    <h3 class="display-3 text-center"> Welcome To Local Shop India !! </h3>
                    <p class="text-center"> Local Shop India is One Stop shop for India's Local and Home-based Business. <br>An e-commerce platform to bring customers and business owners at a single platform to buy and sell their products at your local area. </p>
                    <button class="btn btn-outline-light btn-lg"> <span class="fa fa-send"></span> Management Team</button>
                    <a href="#" class="btn btn-outline-light btn-lg"> <span class=" fa fa-user-circle fa-spin"></span> About </a>
                </div>
            </div>
        </div>

         <div class="container">
            <div class="row p-5">
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa fa-plus-square fa-3x text-primary"></i>
                            <h4> New Employee </h4>
                            <a class="btn btn-primary" href="register_page.jsp"> New Employee </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">                   
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa fa-pencil-square fa-3x text-warning"></i>
                            <h4> Edit Employee </h4>
                            <a class="btn btn-primary" href="edit_employee.jsp"> Edit Employee </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa fa-globe fa-3x text-primary"></i>
                            <h4> All Employee </h4>
                            <a class="btn btn-primary" href="all.jsp"> All Employee </a>
                        </div>
                    </div>
                </div>
                <div class="col-md-3">
                    <div class="card">
                        <div class="card-body text-center">
                            <i class="fa fa-trash fa-3x text-danger"></i>
                            <h4> Delete Employee </h4>
                            <a class="btn btn-primary" href="delete.jsp"> Delete Employee </a>
                        </div>
                    </div>
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

