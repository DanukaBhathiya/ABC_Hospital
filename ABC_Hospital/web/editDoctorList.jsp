<%-- 
    Document   : editDoctorList
    Created on : Oct 27, 2021, 12:45:12 AM
    Author     : User
--%>

<%@page import="com.doctorlist.project.doctorlists"%>
<%@page import="com.doctorlist.project.DoctorlistsDao"%>
<%@page import="com.appointment.project.ConnectionDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
    int id = Integer.parseInt(request.getParameter("id"));
    DoctorlistsDao appd = new DoctorlistsDao(ConnectionDao.getCon());
    doctorlists app = appd.getSingleDoctorlist(id);
    request.setAttribute("EditDoctorlist", app);
%>
<!DOCTYPE html>
<html>
    <head>
        <!-- Required meta tags -->
        <meta charset="utf-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

        <title>Edit Clinic List Data</title>
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
                <a class="navbar-brand">Edit Clinic List</a>
                <ul class="navbar-nav ml-auto mt-3 mx-5">
                    <li class="nav-item">
                        <a class="nav-link active" href="sDoctorList.jsp">Clinic</a>
                    </li>
                </ul>
            </nav>
        </div>
        <div class="inner">
            <div class=" container">
                <div class="row">
                    <div class="col-12">
                        <h3>Edit Clinic List Details</h3>
                        <form action="editDoctorListServlet" method="put">
                            <div class="form-group">
<!--                                <label>Doctor List ID</label>-->
                                <input class="form-control" type="hidden" name="dlid" value="${EditDoctorlist.id }" required>
                            </div>

                            <div class="form-group" >
                                <label>Doctor Name</label>
                                <select id="inputState" type="text" class="form-control" name="doctor" required>
                                    <option selected value="${EditDoctorlist.doctor }">${EditDoctorlist.doctor }</option>
                                    <option value="Dr. Pandula Basnayake">Dr. Pandula Basnayake</option>
                                    <option value="Dr. Ashen Jayakody">Dr. Ashen Jayakody</option>
                                    <option value="Dr. Sunil Fonseka">Dr. Sunil Fonseka</option>
                                    <option value="Dr. Denesha Abeysekara">Dr. Denesha Abeysekara</option>
                                    <option value="Dr. Neranji Fernando">Dr. Neranji Fernando</option>
                                    <option value="Dr. Jessica Alba">Dr. Jessica Alba</option>
                                </select>
                            </div>
                            <div class="form-group" >
                                <label>Specialization</label>
                                <select id="inputState" type="text" class="form-control" name="specialization" required>
                                    <option selected value="${EditDoctorlist.specialization }">${EditDoctorlist.specialization }</option>
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
                                <select id="inputState" type="text" class="form-control" name="branch" required>
                                    <option selected value="${EditDoctorlist.branch }">${EditDoctorlist.branch }</option>
                                    <option value="Colombo">Colombo</option>
                                    <option value="Kalutara">Kalutara</option>
                                    <option value="Ja-Ela">Ja-Ela</option>
                                    <option value="Galle">Galle</option>
                                    <option value="Trincomalee">Trincomalee</option>
                                </select>
                            </div>
                            <div class="form-group">
                                <label>Date</label>
                                <input type="date" class="form-control" name="date" value="${EditDoctorlist.date }" required>
                            </div>
                            <div class="form-group">
                                <label>Time</label>
                                <input type="time" class="form-control" name="time" value="${EditDoctorlist.time }" required>
                            </div>
                            <button type="submit" class="btn btn-primary">Submit</button>
                            <button  class="btn btn-primary"><a href="sDoctorList.jsp">Cancel</a></button>
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
