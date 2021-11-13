<%-- 
    Document   : pDoctorList
    Created on : Oct 27, 2021, 4:47:04 AM
    Author     : User
--%>

<%@page import="com.appointment.project.ConnectionDao"%>
<%@page import="java.util.List"%>
<%@page import="com.doctorlist.project.doctorlists"%>
<%@page import="com.doctorlist.project.DoctorlistsDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%
    DoctorlistsDao doctorlistData = new DoctorlistsDao(ConnectionDao.getCon());
    List<doctorlists> doctorlist = doctorlistData.getAllDoctorlists();
    request.setAttribute("DOCTORLISTS_LIST", doctorlist);
%>


<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <!--        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">-->

        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Clinic</title>
        <link href="https://fonts.googleapis.com/css?family=ZCOOL+XiaoWei" rel="stylesheet">
        <link href="css/stafAppstyle.css" rel="stylesheet" type="text/css"/>

        <style>
            .inner{
                margin: 15px 0;
            }
        </style>
    </head>
    <body>

        <!-- Nav -->
        <div>
            <nav class="navbar navbar-expand-lg navbar-light bg-light">
                <a class="navbar-brand fs-2 fw-bold" href="index.jsp">ABC</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-item nav-link" href="index.jsp">Home</a>
                        <a class="nav-item nav-link" href="about.jsp">About US</a>
                        <a class="nav-item nav-link active" href="pDoctorList.jsp">Clinic</a>
                        <a class="nav-item nav-link" href="doctor.jsp">Doctors</a>
                        <a class="nav-item nav-link" href="patientAppointment.jsp">Appointment</a>
                        <a class="nav-item nav-link" href="contact.jsp">Contact</a>
                        <a class="nav-item nav-link" onclick="myFunction()" style="cursor: pointer">Login</a>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Nav -->

        <div class="container">
            <div class="inner">
                <div class="row">

                    <!--                    <div  class="container-fluid">
                                            <nav class="navbar navbar-light">
                                                <a class="navbar-brand"></a>
                                                <form class="form-inline">
                                                    <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                                                    <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                                                </form>
                                            </nav>
                                        </div>-->

                    <div class="col-md-12">

                        <h3>Doctor Information From Database</h3>
                        <table class="table">
                            <thead class="bg-light">
                                <tr>
                                    <!--                                    <th scope="col">ID</th>-->
                                    <th scope="col">Doctor Name</th>
                                    <!--                                    <th scope="col">Contact Number</th>
                                                                        <th scope="col">Email</th>-->
                                    <th scope="col">Description</th>
                                    <th scope="col">Branch</th>
                                    <th scope="col">Date</th>
                                    <th scope="col">Time</th>
                                    <!--                                    <th scope="col">Action</th>-->
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="tempDoctorList" items="${DOCTORLISTS_LIST}">
                                    <tr>
<!--                                        <td>${tempDoctorList.id }</td>-->

                                        <td>${tempDoctorList.doctor}</td>
                                        <td>${tempDoctorList.specialization}</td>
                                        <td>${tempDoctorList.branch}</td>
                                        <td>${tempDoctorList.date}</td>
                                        <td>${tempDoctorList.time}</td>
<!--                                        <td><a href="editDoctorList.jsp?id=${tempDoctorList.id }">Edit</a> 
                                            <a href="deleteDoctorListServlet?id=${tempDoctorList.id}">Delete</a></td>-->
                                    </tr>
                                </c:forEach>
                            </tbody>
                        </table>
                    </div>
                </div>
            </div>
        </div>

        <!-- Footer -->
        <footer class="text-center text-lg-start bg-light text-muted">

            <!-- Section: Links  -->
            <section class="">
                <div class="container text-center text-md-start mt-5">
                    <!-- Grid row -->
                    <div class="row mt-3">
                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-4 col-xl-3 mx-auto mb-4">
                            <!-- Content -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                <i class="fas fa-gem me-3"></i>Company name
                            </h6>
                            <p>
                                Here you can use rows and columns to organize your footer content. Lorem ipsum
                                dolor sit amet, consectetur adipisicing elit.
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-2 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Products
                            </h6>
                            <p>
                                <a href="#!" class="text-reset">Angular</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">React</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Vue</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Laravel</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-3 col-lg-2 col-xl-2 mx-auto mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Useful links
                            </h6>
                            <p>
                                <a href="#!" class="text-reset">Pricing</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Settings</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Orders</a>
                            </p>
                            <p>
                                <a href="#!" class="text-reset">Help</a>
                            </p>
                        </div>
                        <!-- Grid column -->

                        <!-- Grid column -->
                        <div class="col-md-4 col-lg-3 col-xl-3 mx-auto mb-md-0 mb-4">
                            <!-- Links -->
                            <h6 class="text-uppercase fw-bold mb-4">
                                Contact
                            </h6>
                            <p><i class="fas fa-home me-3"></i> Colombo 05, No 10012, <br>Sri Lanka</p>
                            <p>
                                <i class="fas fa-envelope me-3"></i>
                                info@example.com
                            </p>
                            <p><i class="fas fa-phone me-3"></i> + 01 234 567 88</p>
                            <p><i class="fas fa-print me-3"></i> + 01 234 567 89</p>
                        </div>
                        <!-- Grid column -->
                    </div>
                    <!-- Grid row -->
                </div>
            </section>
            <!-- Section: Links  -->

            <!-- Copyright -->
            <div class="text-center p-4" style="background-color: rgba(0, 0, 0, 0.05);">
                © 2021 Copyright:
                <a class="text-reset fw-bold" href="https://mdbootstrap.com/">MDBootstrap.com</a>
            </div>
            <!-- Copyright -->
        </footer>
        <!-- Footer -->

        <script>
            function myFunction() {
                var txt;
                var r = parseInt(prompt("Enter a Staff Code"));
                if (r == 111) {
                    location.href = "http://localhost:8080/ABC_Hospital/login.jsp";

                } else {
                    txt = "You pressed Cancel!";
                }

            }
        </script>

        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
