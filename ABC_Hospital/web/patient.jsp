<%-- 
    Document   : patientRegistration
    Created on : Oct 27, 2021, 10:25:41 AM
    Author     : User
--%>

<%@page import="com.appointment.project.ConnectionDao"%>
<%@page import="java.util.List"%>
<%@page import="com.patient.project.patients"%>
<%@page import="com.patient.project.PatientsDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ taglib uri = "http://java.sun.com/jsp/jstl/core" prefix = "c"%>
<%
    PatientsDao patientData = new PatientsDao(ConnectionDao.getCon());
    List<patients> patient = patientData.getAllPatients();
    request.setAttribute("PATIENTS_LIST", patient);
%>


<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
        
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
        <title>Patient</title>
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
                <a class="navbar-brand fs-2 fw-bold" href="staffwelcome.jsp">ABC</a>
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNavAltMarkup" aria-controls="navbarNavAltMarkup" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarNavAltMarkup">
                    <div class="navbar-nav">
                        <a class="nav-item nav-link" href="staffwelcome.jsp">Home</a>
                        <!-- <a class="nav-item nav-link" href="#">About US</a> -->
                        <!--<a class="nav-item nav-link" href="#">Services</a>-->
                        <a class="nav-item nav-link" href="sDoctorList.jsp">Clinic</a>
                        <a class="nav-item nav-link" href="staffAppointment.jsp">Appointment</a>
                        <a class="nav-item nav-link active" href="patient.jsp">Patient</a>
                        <a class="nav-item nav-link" href="LogoutServlet">LogOut</a>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Nav -->

        <div class="container">
            <div class="inner">
                <div class="row">
                    <div class="col-md-12">
                        <h3>Input Patient Information</h3>
                        <form action="AddPatientServlet" method="post">
                            <div class="form-group">
                                <label>Patient Number</label>
                                <input class="form-control" type="text" name="pnumber" place-holder="Patient Number" required>
                            </div>
                            <div class="form-group">
                                <label>Patient Name</label>
                                <input class="form-control" type="text" name="name" place-holder="Patient Name" required>
                            </div>
                            <div class="form-group">
                                <label>Age</label>
                                <input class="form-control" type="text" name="age" place-holder="Age" required>
                            </div>
                            <div class="form-group" >
                                <label>Gender</label>
                                <select id="inputState" type="text" class="form-control" name="gender" required>
                                    <option selected disabled>Choose Gender</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>NIC Number</label>
                                <input class="form-control" type="text" name="nic" place-holder="NIC Number" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input class="form-control" type="text" name="address" place-holder="Address" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" name="email" place-holder="Email" required>
                            </div>
                            <div class="form-group">
                                <label>Contact Number</label>
                                <input type="tel" class="form-control" name="cnumber" place-holder="Contact Number" required>
                            </div>
                            <div class="form-group" >
                                <label>Blood Group</label>
                                <select id="inputState" type="text" class="form-control" name="blood" required>
                                    <option selected disabled>Choose Blood Group</option>
                                    <option value="A+">A+</option>
                                    <option value="A-">A-</option>
                                    <option value="B+">B+</option>
                                    <option value="B-">B-</option>
                                    <option value="O+">O+</option>
                                    <option value="O-">O-</option>
                                    <option value="AB+">AB+</option>
                                    <option value="AB-">AB-</option>
                                </select>
                            </div>
<!--                            <div class="form-group" >
                                <label>Specialization - Description</label>
                                <select id="inputState" type="text" class="form-control" name="description" required>
                                    <option selected disabled>Choose</option>
                                    <option value="Any">Any</option>
                                    <option value="d001">d001</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>-->
                            <div class="form-group">
                                <label>Specialization - Description</label>
                                <input type="text" class="form-control" name="description" place-holder="Description" required>
                            </div>
                            <div class="form-group" >
                                <label>Hospital Branch</label>
                                <select id="inputState" type="text" class="form-control" name="branch" required>
                                    <option selected disabled>Choose Branch</option>
                                    <option value="Colombo">Colombo</option>
                                    <option value="Kalutara">Kalutara</option>
                                    <option value="Ja-Ela">Ja-Ela</option>
                                    <option value="Galle">Galle</option>
                                    <option value="Trincomalee">Trincomalee</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Ward</label>
                                <input type="text" class="form-control" name="ward" place-holder="Ward" required>
                            </div>
                            <div class="form-group">
                                <label>Date of Entry</label>
                                <input type="date" class="form-control" name="entrydate" place-holder="Date of Entry" required>
                            </div>
                            <div class="form-group">
                                <label>Discharge Date</label>
                                <input type="date" class="form-control" name="dischargedate" place-holder="Discharge Date" >
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button type="reset" class="btn btn-primary">Reset</button>
                        </form>
                    </div>

                    <div  class="container-fluid">
                        <nav class="navbar navbar-light">
                            <a class="navbar-brand"></a>
                            <form class="form-inline">
                                <input class="form-control mr-sm-2" type="search" placeholder="Search" aria-label="Search">
                                <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>
                            </form>
                        </nav>
                    </div>

                    <div class="col-md-12">
                        <h3>
                            Patients Information From Database</h3>
                        <table class="table">
                            <thead class="bg-light">
                                <tr>
                                    
                                    <th scope="col">Patient Number</th>
                                    <th scope="col">Name</th>
                                    <th scope="col">Age</th>
                                    <th scope="col">Gender</th>
<!--                                    <th scope="col">NIC Number</th>-->
                                    <th scope="col">Address</th>
<!--                                    <th scope="col">Email</th>-->
                                    <th scope="col">Contact Number</th>
                                    <th scope="col">Blood Group</th>
<!--                                    <th scope="col">Description</th>-->
                                    <th scope="col">Branch</th>
                                    <th scope="col">Date of Entry</th>
                                    <th scope="col">Discharge Date</th>
                                </tr>
                            </thead>
                            <tbody>
                                <c:forEach var="tempPatient" items="${PATIENTS_LIST}">
                                    <tr>
                                        
                                        <td>${tempPatient.pnumber }</td>
                                        <td>${tempPatient.name }</td>
                                        <td>${tempPatient.age }</td>
                                        <td>${tempPatient.gender }</td>
<!--                                        <td>${tempPatient.nic}</td>-->
                                        <td>${tempPatient.address}</td>
<!--                                        <td>${tempPatient.email}</td>-->
                                        <td>${tempPatient.cnumber}</td>
                                        <td>${tempPatient.blood}</td>
<!--                                        <td>${tempPatient.description}</td>-->
                                        <td>${tempPatient.branch}</td>
<!--                                        <td>${tempPatient.ward}</td>-->
                                        <td>${tempPatient.entrydate}</td>
                                        <td>${tempPatient.dischargedate}</td>
                                        <td><a href="editPatient.jsp?id=${tempPatient.id }">Edit</a> 
                                            <a href="DeletePatientServlet?id=${tempPatient.id}" onclick="return confirm('Are you sure you want to delete this item?');">Delete</a></td>
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
        
        <!-- Optional JavaScript -->
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
    </body>
</html>
