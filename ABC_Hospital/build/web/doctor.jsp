<%-- 
    Document   : doctor
    Created on : Oct 27, 2021, 5:03:28 PM
    Author     : User
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta http-equiv="X-UA-Compatible" content="IE=edge" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-F3w7mX95PdgyTmZZMECAngseQB83DfGTowi0iMjiWaeVhAn4FJkqJByhZMI3AhiU"
            crossorigin="anonymous"
            />
        <link href="css/doctorStyle.css" rel="stylesheet" type="text/css"/>
        <title>Our Doctors</title>

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
                        <a class="nav-item nav-link" href="pDoctorList.jsp">Clinic</a>
                        <a class="nav-item nav-link active" href="doctor.jsp">Doctors</a>
                        <a class="nav-item nav-link" href="patientAppointment.jsp">Appointment</a>
                        <a class="nav-item nav-link" href="contact.jsp">Contact</a>
                        <a class="nav-item nav-link" onclick="myFunction()" style="cursor: pointer">Login</a>
                    </div>
                </div>
            </nav>
        </div>
        <!-- Nav -->

        <div class="container h-contact-container">
            <h2 class="text-white">Our Doctors</h2>
            <p class="text-colour">
                Hospital backed by a team of highly skilled Consultants and 38 visiting specialist doctors with years of experience. Lorem ipsum dolor sit amet consectetur
                adipisicing elit. Et asperiores animi quia odio, error alias, similique
                veniam veritatis corrupti, perspiciatis hic voluptate commodi nisi unde
                quasi odit molestias ipsum possimus.
            </p>

        </div>

        <div class="container gallery-container">
            <div class="card">
                <img
                    src="img/eye.png"
                    class="card-img-top"
                    alt="..."
                    />
                <div class="card-body">
                    <h5 class="card-title">Dr. Pandula Basnayake</h5>
                    <p class="card-text">
                        “one of Sri Lanka’s top ophthalmologists, does not have time to waste.He has a clinic full of patients to attend to.”
                    </p>
                </div>
            </div>
            <div class="card">
                <img
                    src="img/image3.jpg"
                    class="card-img-top"
                    alt="..."
                    />
                <div class="card-body">
                    <h5 class="card-title">Dr. Ashen Jayakody</h5>
                    <p class="card-text">
                        “one of Sri Lanka’s top neurologist, does not have time to waste.He has a clinic full of patients to attend to”
                    </p>
                </div>
            </div>
            <div class="card">
                <img
                    src="img/images (1).jpeg"
                    class="card-img-top"
                    alt="..."
                    />
                <div class="card-body">
                    <h5 class="card-title">Dr. Sunil Fonseka</h5>
                    <p class="card-text">
                        “one of Sri Lanka’s top Oncologists, does not have time to waste.He has a clinic full of patients to attend to”
                    </p>
                </div>
            </div>
            <div class="card">
                <img
                    src="img/images.jpeg"
                    class="card-img-top"
                    alt="..."
                    />
                <div class="card-body">
                    <h5 class="card-title">Dr. Denesha Abeysekara</h5>
                    <p class="card-text">
                        “one of Sri Lanka’s top nuclear medicine physicians, does not have time to waste.He has a clinic full of patients to attend to.”
                    </p>
                </div>
            </div>
            <div class="card">
                <img
                    src="img/image2.jpg"
                    class="card-img-top"
                    alt="..."
                    />
                <div class="card-body">
                    <h5 class="card-title">Dr. Neranji Fernando</h5>
                    <p class="card-text">
                        “one of Sri Lanka’s top orthodontist, does not have time to waste.He has a clinic full of patients to attend to.
                    </p>
                </div>
            </div>
            <div class="card">
                <img
                    src="img/doctor_3.jpg"
                    class="card-img-top"
                    alt="..."
                    />
                <div class="card-body">
                    <h5 class="card-title">Dr. Jessica Alba</h5>
                    <p class="card-text">
                        “one of Sri Lanka’s top orthodontist, does not have time to waste.He has a clinic full of patients to attend to.
                    </p>
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

        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.1/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-/bQdsTh/da6pkI1MST/rWKFNjaCP5gBSY4sEBT38Q/9RBh9AH40zEOg7Hlq2THRZ"
            crossorigin="anonymous"
        ></script>
    </body>
</html>
