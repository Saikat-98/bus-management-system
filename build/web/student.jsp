<%@page import="model.User"%>
<%@page import="java.util.List"%>
<%@page import="model.Bus"%>
<%
    if(request.getSession().getAttribute("details")!=null){
    List<User> details=(List<User>)session.getAttribute("details");
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <title>Student</title>
        <link rel="stylesheet" href="css/insidepage.css" media="screen">
        <link href='https://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet'>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script type="text/javascript" src="js/particles.js"></script>
        <script language="JavaScript"  src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script>
    </head>
    <body>
        <div id="particles-js">
            <div class="navbar">
                <h2 class="navbar-header">Student Profile</h2>
                <a href="#" class="about-us">About Us</a>
                <a href="#" class="search">Search</a>
                <a href="#" class="contact-us">Contact Us</a>
                <a href="LogoutServlet" class="logout">Logout</a>
            </div>
            <div class="wrapper">
                <div class="header-div">
                    <i class="fas fa-bars"></i>
                    <div class="sidebar">
                        <i class="fas fa-info-circle"></i>
                        <i class="fas fa-search"></i>
                        <i class="fas fa-address-book"></i>
                        <a href="LogoutServlet"><i class="fas fa-sign-out-alt"></i></a>
                    </div>
                    <h1 class="heading">Bus Manager</h1>
                    <i class='fas fa-bus-alt'></i>
                </div>
                <div class="container transit">
                    <div class="inside-container">
                        <h3 class="container-header animat">Student Profile</h3>
                        <%for(User u:details){%>
                        <h5 class="welcome">Welcome,  <%=u.getUsername()%></h5>
                        <%}%>
                        <div class="table-div1">
                            <table class="table1">
                              <thead class="thead-dark">
                                <tr>
                                  <th scope="col">Sn. No.</th>
                                  <th scope="col">Bus Number</th>
                                  <th scope="col">Bus Driver Name</th>
                                  <th scope="col">Bus Driver ID</th>
                                  <th scope="col">Bus Driver Mobile</th>
                                  <th scope="col">Arrival time</th>
                                  <th scope="col">Destination time</th>
                                  <th scope="col" id="check">Checkpoints</th>
                                </tr>
                              </thead>
                              <tbody id="tbody1">
                              </tbody>
                            </table>
                            </div>
                            <div class="table-div2">
                            <table class="table2">
                              <thead class="thead-dark">
                                <tr>
                                  <th scope="col">Sn. No.</th>
                                  <th scope="col">Route Number</th>
                                  <th scope="col">Checkpoint</th>
                                </tr>
                              </thead>
                              <tbody id="tbody2">
                              </tbody>
                            </table>
                            </div>
                        <p class="p-about-us"></p>
                        <button class="btn btn-1">Search Buses based on Bus numbers</button>
                        <button class="btn btn-2">Search Routes based on Route numbers</button>
                        <button class="btn btn-3" onclick="search1()">View all Buses</button>
                        <button class="btn btn-4" onclick="search3()">View all Routes</button>
                        <div class="search-div1">
                            <input type="text" id="search-bar1" class="search-bar1" placeholder="SEARCH BY BUS NUMBER..">
                            <button type="submit" class="search-btn1" onclick="search()"><i class="fa fa-search searching"></i></button>
                        </div>
                        <div class="search-div2">
                            <input type="text" id="search-bar2" class="search-bar2" placeholder="SEARCH BY ROUTE NUMBER..">
                            <button type="submit" class="search-btn2" onclick="search2()"><i class="fa fa-search searching"></i></button>
                        </div>
                        <div class="wrapper-contactus">
                            <div class="upper-container">
                                <p class="email">
                                    <i class="fas fa-envelope"></i>&nbsp;&nbsp;&nbsp;<span style="font-family: Amaranth;color: white;text-shadow: 0px 0px 2px beige; text-decoration: underline;">EMAIL </span><u>saikatchoudhury1998@gmail.com</u><br>
                                    For further queries :<br>
                                    <u>sandipc595@gmail.com</u>
                                </p>
                                <p class="mobile">
                                    <i class="fas fa-mobile"></i>&nbsp;&nbsp;&nbsp;<span style="font-family: Amaranth;color: white;text-shadow: 0px 0px 2px beige; text-decoration: underline;">MOBILE</span> <br>
                                    <u>India (+91)</u>
                                    <br>9002624999<br>7018088316
                                </p>
                                <p class="location">
                                    <i class="fas fa-map-marker"></i>&nbsp;&nbsp;&nbsp;<span style="font-family: Amaranth;color: white;text-shadow: 0px 0px 2px beige; text-decoration: underline;">ADDRESS</span> <br><b>Chitkara University, Himachal Pradesh:</b><br>
                                    Pinjore-Barotiwala National Highway (NH-21A)<br>
                                    Himachal Pradesh – 174 103
                                </p>
                                <div class="social-icons">
                                    <a href="#"><i class="fa fa-rss"></i></a> 
                                    <a href="#"><i class="fa fa-youtube-play" aria-hidden="true"></i></a>
                                    <a href="#"><i class="fa fa-twitter"></i></a> 
                                    <a href="#"><i class="fa fa-google-plus"></i></a>
                                    <a href="#"><i class="fa fa-linkedin"></i></a>
                                    <a href="#"><i class="fa fa-instagram"></i></a>
                                    <a href="#"><i class="fa fa-facebook"></i></a>
                                    <a href="#"><i class="fa fa-skype"></i></a>
                                </div>
                            </div>
                            <div class="left-container">
                                <center><h2 class="google-header"><u>Send us Feedback</u></h2></center>
                                <div class="feedback-form">
                                    <input type="email" class="feedback-email" id="feedback-email" name="feedback-email" placeholder="Enter your Email" required>
                                    <textarea rows="10" cols="50" class="textarea" id="feedback-text" name="feedback-text" placeholder="Write your message here" required></textarea>
                                    <input type="submit" value="Submit" class="feedback-submit" onclick="feedback()">
                                </div>
                            </div>
                            <div class="right-container">
                                <h2 class="google-header">Our Location</h2>
                                <div class="google-map">
                                    <div id="googleMap">
                                        <iframe src="https://www.google.com/maps/embed?pb=!1m10!1m8!1m3!1d3424.326282224775!2d76.87033676513497!3d30.877532181586872!3m2!1i1024!2i768!4f13.1!5e0!3m2!1sen!2sin!4v1550072481880" width="300" height="300" frameborder="0" style="border:0" allowfullscreen></iframe>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="footer">Copyright @ Bus Manager 2019</div>
            </div>
        </div>
        </div>
        <script src="https://maps.googleapis.com/maps/api/js?   key=YOUR_KEY&callback=myMap"></script>
        <script type="text/javascript" src="js/app.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
        <script>
            function feedback(){
                var email=document.getElementById("feedback-email").value;
                var text=document.getElementById("feedback-text").value;
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                  if (this.readyState == 4 && this.status == 200) {
                       alert("Thank you for your kind feedback!");
                       document.getElementById("feedback-email").value="";
                       document.getElementById("feedback-text").value="";
                  }
                };
                xhttp.open("GET", "SendFeedbackServlet?details="+email+" "+text, true);
                xhttp.send();
            }
            function search(){
                var bus_number=document.getElementById("search-bar1").value;
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                  if (this.readyState == 4 && this.status == 200) {
                      var table="";
                      if(this.responseText.trim()!="false"){
                        var details=this.responseText.split(" ");
                              table+="<tr><td>"+"1"+"</td><td>"+details[0]+"</td><td>"+details[1]+"</td><td>"+details[2]+"</td><td>"+details[3]+"</td><td>"+details[4]+"</td><td>"+details[5]+"</td><td>"+details[6]+"</td></tr>";
                        document.getElementById("tbody1").innerHTML=table;
                      }
                      else{
                          alert("OOPS! No such bus schedule exists");
                          document.querySelector(".table1").style.display="none";
                          document.querySelector(".btn-1").style.display="block";
                          document.querySelector(".btn-2").style.display="block";
                          document.querySelector(".btn-3").style.display="block";
                          document.querySelector(".btn-4").style.display="block";
                          document.querySelector(".container-header").style.display="block";
                          document.querySelector(".container-header").innerHTML="Search Buses/Routes";
                          }
                     }
                };
                xhttp.open("GET", "StudentFacultySearchBusNumberServlet?studentfacultysearchbusnumberdetails="+bus_number+"", true);
                xhttp.send();
            }
            function search2(){
                var route_number=document.getElementById("search-bar2").value;
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                  if (this.readyState == 4 && this.status == 200) {
                      var table="";
                      if(this.responseText.trim()!="false"){
                        var details=this.responseText.split(" ");
                              table+="<tr><td>"+"1"+"</td><td>"+details[0]+"</td><td>"+details[1]+"</td></tr>";
                        document.getElementById("tbody2").innerHTML=table;
                      }
                      else{
                          document.querySelector(".table2").style.display="none";
                          alert("OOPS! No such route entry exists");
                          document.querySelector(".btn-1").style.display="block";
                          document.querySelector(".btn-2").style.display="block";
                          document.querySelector(".btn-3").style.display="block";
                          document.querySelector(".btn-4").style.display="block";
                          document.querySelector(".container-header").style.display="block";
                          document.querySelector(".container-header").innerHTML="Search Buses/Routes";
                      }
                  }
                };
                xhttp.open("GET", "StudentFacultySearchRouteNumberServlet?studentfacultysearchroutenumberdetails="+route_number+"", true);
                xhttp.send();
            }
            function search1(){
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                  if (this.readyState == 4 && this.status == 200) {
                      document.querySelector(".inside-container").style.overflow="scroll";
                      document.querySelector(".inside-container").style.overflowX="hidden";
                      console.log(this.responseText);
                      var table="";
                      var details=this.responseText.split(" ");
                      var length=details.length;
                      if(length>0){
                        for(var i=0,j=1;i<length-1;i+=7,j++){
                            table+="<tr><td>"+j+"</td><td>"+details[i]+"</td><td>"+details[i+1]+"</td><td>"+details[i+2]+"</td><td>"+details[i+3]+"</td><td>"+details[i+4]+"</td><td>"+details[i+5]+"</td><td>"+details[i+6]+"</td></tr>";
                        }
                        document.getElementById("tbody1").innerHTML=table;
                      }
                      else{
                          alert("OOPS! No bus entry found");
                          document.querySelector(".btn-1").style.display="block";
                          document.querySelector(".btn-2").style.display="block";
                          document.querySelector(".btn-3").style.display="block";
                          document.querySelector(".btn-4").style.display="block";
                          document.querySelector(".container-header").style.display="block";
                          document.querySelector(".container-header").innerHTML="Search Buses/Routes";
                      }
                  }
                };
                xhttp.open("GET", "StudentFacultyViewAllBusesServlet", true);
                xhttp.send();
            }
            function search3(){
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                  if (this.readyState == 4 && this.status == 200) {
                      document.querySelector(".inside-container").style.overflow="scroll";
                      document.querySelector(".inside-container").style.overflowX="hidden";
                      var table="";
                      var details=this.responseText.split(" ");
                      var length=details.length;
                      if(length>0){
                        for(var i=0,j=1;i<length-1;i+=2,j++){
                            table+="<tr><td>"+j+"</td><td>"+details[i]+"</td><td>"+details[i+1]+"</td></tr>";
                        }
                        document.getElementById("tbody2").innerHTML=table;
                      }
                      else{
                          alert("OOPS! No bus entry found");
                          document.querySelector(".btn-1").style.display="block";
                          document.querySelector(".btn-2").style.display="block";
                          document.querySelector(".btn-3").style.display="block";
                          document.querySelector(".btn-4").style.display="block";
                          document.querySelector(".container-header").style.display="block";
                          document.querySelector(".container-header").innerHTML="Search Buses/Routes";
                      }
                  }
                };
                xhttp.open("GET", "StudentFacultyViewAllRoutesServlet", true);
                xhttp.send();
            }
        </script>
    </body>
</html>
<%}
else
  response.sendRedirect("index.jsp");
%>