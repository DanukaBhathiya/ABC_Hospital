<%-- 
    Document   : editAppointment
    Created on : Oct 27, 2021, 12:43:05 AM
    Author     : User
--%>

<%@page import="com.appointment.project.appointments"%>
<%@page import="com.appointment.project.AppointmentsDao"%>
<%@page import="com.appointment.project.ConnectionDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    AppointmentsDao appd = new AppointmentsDao(ConnectionDao.getCon());
    appointments app = appd.getSingleAppointment(id);
    request.setAttribute("EditAppointment", app);
%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

        <title>Edit Appointment Data</title>
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
                <a class="navbar-brand">Edit Appointment</a>
                <ul class="navbar-nav ml-auto mt-3 mx-5">
                    <li class="nav-item">
                        <a class="nav-link active" href="staffAppointment.jsp">Appointment</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="inner">
            <div class=" container">
                <div class="row">
                    <div class="col-12">
                        <h3>Edit Appointment Details</h3>
                        <form action="EditAppointmentServlet" method="put">
                            <div class="form-group">
<!--                                <label>Patient ID</label>-->
                                <input class="form-control" type="hidden" name="aid" value="${EditAppointment.id }" required>
                            </div>
                            <div class="form-group">
                                <label>Patient Name</label>
                                <input class="form-control" type="text" name="name" value="${EditAppointment.name }" required>
                            </div>
                            <div class="form-group">
                                <label>Age</label>
                                <input class="form-control" type="text" name="age" value="${EditAppointment.age }" required>
                            </div>
                            <div class="form-group" >
                                <label>Gender</label>
                                <select id="inputState" type="text" class="form-control" name="gender" required>
                                    <option selected value="${EditAppointment.gender}">${EditAppointment.gender}</option>
                                    <option value="Male">Male</option>
                                    <option value="Female">Female</option>
                                    <option value="Other">Other</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Contact Number</label>
                                <input type="tel" class="form-control" name="number" value="${EditAppointment.number}" required>
                            </div>
                            <div class="form-group">
                                <label>Email</label>
                                <input type="email" class="form-control" name="email" value="${EditAppointment.email}" required>
                            </div>
                            <div class="form-group" >
                                <label>Doctor</label>
                                <select id="inputState" type="text" class="form-control" name="doctor" required>
                                    <option selected value="${EditAppointment.doctor}">${EditAppointment.doctor}</option>
                                    <option value="Dr. Pandula Basnayake">Dr. Pandula Basnayake</option>
                                    <option value="Dr. Ashen Jayakody">Dr. Ashen Jayakody</option>
                                    <option value="Dr. Sunil Fonseka">Dr. Sunil Fonseka</option>
                                    <option value="Dr. Denesha Abeysekara">Dr. Denesha Abeysekara</option>
                                    <option value="Dr. Neranji Fernando">Dr. Neranji Fernando</option>
                                    <option value="Dr. Jessica Alba">Dr. Jessica Alba</option>
                                </select>
                            </div>
                            <div class="form-group" >
                                <label>Specialization - Description</label>
                                <select id="inputState" type="text" class="form-control" name="description" required>
                                    <option selected value="${EditAppointment.description}">${EditAppointment.description}</option>
                                    <option value="Any">Any</option>
                                    <option value="Ophthalmologist">Ophthalmologist</option>
                                    <option value="Neurologist">Neurologist</option>
                                    <option value="Oncologist">Oncologist</option>
                                    <option value="Physician">Physician</option>
                                    <option value="Orthodontist">Orthodontist</option>
                                </select>
                            </div>
                            <div class="form-group" >
                                <label>Hospital Branch</label>
                                <select id="inputState" type="text" class="form-control" name="branch"  required>
                                    <option selected value="${EditAppointment.branch}">${EditAppointment.branch}</option>
                                    <option value="Colombo">Colombo</option>
                                    <option value="Kalutara">Kalutara</option>
                                    <option value="Ja-Ela">Ja-Ela</option>
                                    <option value="Galle">Galle</option>
                                    <option value="Trincomalee">Trincomalee</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Date</label>
                                <input type="date" class="form-control" name="date" value="${EditAppointment.date}" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button  class="btn btn-primary"><a href="staffAppointment.jsp">Cancel</a></button>
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
