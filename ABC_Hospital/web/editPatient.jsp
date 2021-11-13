<%-- 
    Document   : editpatient
    Created on : Oct 27, 2021, 2:52:25 PM
    Author     : User
--%>

<%@page import="com.patient.project.patients"%>
<%@page import="com.patient.project.PatientsDao"%>
<%@page import="com.appointment.project.ConnectionDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    PatientsDao appd = new PatientsDao(ConnectionDao.getCon());
    patients app = appd.getSinglePatient(id);
    request.setAttribute("EditPatient", app);
%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

        <title>Edit Patient Data</title>
        <style>
            .inner{
                position: relative;
                margin: 0 auto;
                width: 650px;
                display: block;
                padding: 50px 0;
            }
            h3{
                text-align: center;
                border-bottom: 2px solid midnightblue;
                margin-bottom: 20px;
            }
            nav li a{
                font-size: 25px;
                font-weight: 500;
            }
            a{
                color: #fff;
                text-decoration: none;
            }
        </style>
    </head>
    <body>
        <div  class="container-fluid">
            <nav class="navbar navbar-light">
                <a class="navbar-brand">Edit Patient</a>
                <ul class="navbar-nav ml-auto mt-3 mx-5">
                    <li class="nav-item">
                        <a class="nav-link active" href="patient.jsp">Patient</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="inner">
            <div class=" container">
                <div class="row">
                    <div class="col-12">
                        <h3>
                            Edit Patient Details</h3>
                        <form action="EditPatientServlet" method="put">
                            <div class="form-group">
<!--                                <label>Patient ID</label>-->
                                <input class="form-control" type="hidden" name="pid" value="${EditPatient.id }" required>
                            </div>
                            <div class="form-group">
                                <label>Patient Number</label>
                                <input class="form-control" type="text" name="pnumber" value="${EditPatient.pnumber }" required>
                            </div>
                            <div class="form-group">
                                <label>Patient Name</label>
                                <input class="form-control" type="text" name="name" value="${EditPatient.name }" required>
                            </div>
                            <div class="form-group">
                                <label>Age</label>
                                <input class="form-control" type="text" name="age" value="${EditPatient.age }" required>
                            </div>
                            <div class="form-group" >
                                <label>Gender</label>
                                <select id="inputState" type="text" class="form-control" name="gender" required>
                                    <option selected value="${EditPatient.gender }">${EditPatient.gender }</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>NIC Number</label>
                                <input class="form-control" type="text" name="nic" value="${EditPatient.nic }" required>
                            </div>
                            <div class="form-group">
                                <label>Address</label>
                                <input class="form-control" type="text" name="address" value="${EditPatient.address }" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" name="email" value="${EditPatient.email }" required>
                            </div>
                            <div class="form-group">
                                <label>Contact Number</label>
                                <input type="tel" class="form-control" name="cnumber" value="${EditPatient.cnumber }" required>
                            </div>
                            <div class="form-group" >
                                <label>Blood Group</label>
                                <select id="inputState" type="text" class="form-control" name="blood" value="${EditPatient.blood }" required>
                                    <option selected value="${EditPatient.blood }">${EditPatient.blood }</option>
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
                                <input type="text" class="form-control" name="description" value="${EditPatient.description }" required>
                            </div>
                            <div class="form-group" >
                                <label>Hospital Branch</label>
                                <select id="inputState" type="text" class="form-control" name="branch" required>
                                    <option selected value="${EditPatient.branch }">${EditPatient.branch }</option>
                                    <option value="Colombo">Colombo</option>
                                    <option value="Kalutara">Kalutara</option>
                                    <option value="Ja-Ela">Ja-Ela</option>
                                    <option value="Galle">Galle</option>
                                    <option value="Trincomalee">Trincomalee</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Ward</label>
                                <input type="text" class="form-control" name="ward" value="${EditPatient.ward }" required>
                            </div>
                            <div class="form-group">
                                <label>Date of Entry</label>
                                <input type="date" class="form-control" name="entrydate" place-holder="Date of Entry" value="${EditPatient.entrydate }" required>
                            </div>
                            <div class="form-group">
                                <label>Discharge Date</label>
                                <input type="date" class="form-control" name="dischargedate" place-holder="Discharge Date" value="${EditPatient.dischargedate }" >
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button  class="btn btn-primary"><a href="patient.jsp">Cancel</a></button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <!-- jQuery first, then Popper.js, then Bootstrap JS -->
        <script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

    </body>
</html>
