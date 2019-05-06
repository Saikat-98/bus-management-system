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
        <title>Staff</title>
        <link rel="stylesheet" href="css/staff.css" media="screen">
        <link href='https://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet'>
        <link rel='stylesheet' href='https://use.fontawesome.com/releases/v5.7.0/css/all.css' integrity='sha384-lZN37f5QGtY3VHgisS14W3ExzMWZxybE1SJSEsQp9S+oqd12jhcu+A56Ebc1zFSJ' crossorigin='anonymous'>
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
        <script type="text/javascript" src="js/particles.js"></script>
        <script language="JavaScript"  src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script>
    </head>
    <body>
        <div id="particles-js">
            <div class="navbar">
                <h2 class="navbar-header">Staff Profile</h2>
                <a href="#" class="about-us">About Us</a>
                <a href="#" class="search">View</a>
                <a href="#" class="create">Create</a>
                <a href="#" class="update">Update</a>
                <a href="#" class="delete">Delete</a>
                <a href="#" class="contact-us">Contact Us</a>
                <a href="LogoutServlet" class="logout">Logout</a>
            </div>
            <div class="wrapper">
                <div class="header-div">
                    <i class="fas fa-bars"></i>
                    <div class="sidebar">
                        <i class="fas fa-info-circle"></i>
                        <i class="fas fa-eye"></i>
                        <i class="fab fa-wpforms"></i>
                        <i class="fas fa-pencil-square-o"></i>
                        <i class="far fa-trash-alt main-delete"></i>
                        <i class="fas fa-address-book"></i>
                        <a href="LogoutServlet"><i class="fas fa-sign-out-alt"></i></a>
                    </div>
                    <h1 class="heading">Bus Manager</h1>
                    <i class='fas fa-bus-alt'></i>
                </div>
                <div class="container transit">
                    <div class="inside-container">
                        <h3 class="container-header animat">Staff Profile</h3>
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
                                  <th scope="col">Route ID</th>
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
                        <button class="btn btn-1" onclick="search1()">View all Buses</button>
                        <button class="btn btn-2" onclick="search2()">View all Routes</button>
                        <div class="create-form">
                            
                                <fieldset class="fieldset">
                                    <legend align="right" class="legend">Create a new Bus entry</legend>
                                    <div class="inner-form">
                                        <div class="left-form">
                                            <input type="text" class="bus-number" id="c-bus-number" name="c-bus-number" placeholder="Bus number" required>
                                            <input type="text" class="bus-driver-id" id="c-bus-driver-id" name="c-bus-driver-id" placeholder="Bus driver ID" required>
                                            <input type="text" class="bus-driver-name" id="c-bus-driver-name" name="c-bus-driver-name" placeholder="Bus driver name" required>
                                            <input type="text" class="bus-driver-mobile" id="c-bus-driver-mobile" name="c-bus-driver-mobile" placeholder="Bus driver mobile number" required>
                                            <input type="text" class="arrival-time" id="c-arrival-time" name="c-arrival-time" placeholder="Arrival time" required>
                                            <input type="text" class="destination-time" id="c-destination-time" name="c-destination-time" placeholder="Destination time" required>
                                        </div>
                                        <div class="right-form">
                                            <fieldset class="inner-fieldset">
                                                <div class="up-route-div">
                                                    <legend align="center" class="legend-1">Specify a route</legend>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                                                    <i class="fa fa-plus-square icn" style="font-size:25px;cursor:pointer;" onclick="create()"></i>
                                                    <i class="fa fa-minus-square icn" style="font-size:25px;cursor:pointer;" onclick="remove()"></i>
                                                </div>
                                                <div class="down-route-div" id="remove">
                                                        <input type="text" id="c-route-id-1" class="c-route-id" name="c-route-id" placeholder="Route ID" required>
                                                        <input type="text" id="c-route-point-1" class="c-route-point" name="c-route-point" placeholder="Route point" required>
                                                    </div>
                                            </fieldset>
                                        </div>
                                    </div>
                                    <input type="submit" value="Submit" class="submit-btn" onclick="create1()">
                                </fieldset>
                            
                        </div>
                        <div class="delete-div">
                                <input type="text" class="delete-bar" id="delete-busnumber" name="delete-busnumber" placeholder="DELETE BY BUS NUMBER..">
                                <button type="submit" class="delete-btn" onclick="delete1()"><i class="far fa-trash-alt" style="font-size: 16px;"></i></button>
                        </div>
                       <div class="update-form">
                            <fieldset class="update-fieldset">
                                <legend align="center" class="legend">Update a Bus schedule</legend>
                                <div class="inner-update-form">
                                    <input id ="update-busnumber-1" type="text" class="bus-number" name="update-busnumber-1" placeholder="Bus number" required>
                                    <input id ="update-arrivaltime-1" type="text" class="arrival-time" name="update-arrivaltime-1" placeholder="Arrival time" required>
                                    <input id ="update-destinationtime-1" type="text" class="destination-time" name="update-destinationtime-1" placeholder="Destination time" required>
                                </div>
                                <input type="submit" value="Submit" class="submit-btn" onclick="updateForm1()">
                            </fieldset>
                        </div>
                        <p class="p-about-us"></p>
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
        <script type="text/javascript" src="js/staff.js"></script>
        <script>
            var glob=2;
            function create(){
                var parent=document.querySelector(".inner-fieldset").childElementCount;
                var x="c-route-id";var x1=x+"-"+glob;
                var y="c-route-point";var y1=y+"-"+glob;
                glob++;
                if(parent<=4){
                    var node=document.createElement("input");
                    node.type="text";
                    node.setAttribute("placeholder","Route ID");node.setAttribute("name",x);node.setAttribute("id",x1);node.setAttribute("required","");
                    node.className="c-route-id";
                    var node1=document.createElement("input");
                    node1.type="text";
                    node1.setAttribute("placeholder","Route point");node1.setAttribute("name",y);node1.setAttribute("id",y1);node1.setAttribute("required","");
                    node1.className="c-route-point";
                    var div=document.createElement("div");
                    div.className="down-route-div";
                    div.appendChild(node);
                    div.appendChild(node1);
                    document.querySelector(".inner-fieldset").appendChild(div);
                }
            }
            function remove(){
                var node=document.querySelector(".inner-fieldset");
                var count=document.querySelector(".inner-fieldset").childElementCount;
                if(count>=3){
                    node.removeChild(node.lastChild);
                }
            }
            function create1(){
                var bus_number=document.getElementById("c-bus-number").value;
                var driver_id=document.getElementById("c-bus-driver-id").value;
                var driver_name=document.getElementById("c-bus-driver-name").value;
                var driver_mobile=document.getElementById("c-bus-driver-mobile").value;
                var arrival_time=document.getElementById("c-arrival-time").value;
                var destination_time=document.getElementById("c-destination-time").value;
                var route_id=document.getElementsByClassName("c-route-id");
                var route_point=document.getElementsByClassName("c-route-point");
                var x="";
                for(var i=0;i<route_id.length;i++)
                    x+=route_id[i].value+" "+route_point[i].value+" ";
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                  if (this.readyState == 4 && this.status == 200) {
                   if(this.responseText.trim()=="true")
                       alert("The bus schedule is successfully created!");
                   else
                       alert("The bus schedule couldn't be successfully created!");
                   document.querySelector(".create-form").style.display="block";
                   document.getElementById("c-bus-number").value="";
                   document.getElementById("c-bus-driver-id").value="";
                   document.getElementById("c-bus-driver-name").value="";
                   document.getElementById("c-bus-driver-mobile").value="";
                   document.getElementById("c-arrival-time").value="";
                   document.getElementById("c-destination-time").value="";
                   document.getElementById("c-route-id-1").value="";
                   document.getElementById("c-route-point-1").value="";
                   document.getElementById("c-route-id-2").style.display="none";
                   document.getElementById("c-route-point-2").style.display="none";
                   }
                };
                xhttp.open("GET", "StaffCreateBusServlet?createBusDetails="+bus_number+" "+driver_id+" "+driver_name+" "+driver_mobile+" "+arrival_time+" "+destination_time+" "+x, true);
                xhttp.send();
            }
            function updateForm1(){
                var bus_number=document.getElementById("update-busnumber-1").value;
                var arrival_time=document.getElementById('update-arrivaltime-1').value;
                var destination_time=document.getElementById('update-destinationtime-1').value;
                var x=bus_number+" "+arrival_time+" "+destination_time;
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                  if (this.readyState == 4 && this.status == 200) {
                   if(this.responseText.trim()=="true")
                       alert("The bus schedule is successfully updated!");
                   else{
                       alert("The bus schedule couldn't be successfully updated!");
                       document.querySelector(".create-form").style.display="flex";
                       document.querySelector(".update-form").style.display="none";
                   }
                   document.getElementById("update-busnumber-1").value="";
                   document.getElementById('update-arrivaltime-1').value="";
                   document.getElementById('update-destinationtime-1').value="";
                  }
                };
                xhttp.open("GET", "StaffUpdateBusNumberServlet?updateBusnumberDetails="+x, true);
                xhttp.send();
            }
            function delete1(){
                var bus_number=document.getElementById("delete-busnumber").value;
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                  if (this.readyState == 4 && this.status == 200) {
                   if(this.responseText.trim()=="true")
                       alert("The bus schedule is successfully deleted!");
                   else{
                       if(confirm("The bus schedule couldn't be successfully deleted! Wanna create a bus schedule with the prticular bus number?")){
                            document.querySelector(".create-form").style.display="flex";
                            document.querySelector(".delete-div").style.display="none";
                            document.querySelector(".container-header").style.display="none";
                        }
                        else
                            document.querySelector(".delete-div").style.display="flex";
                   }
                   document.getElementById("delete-busnumber").value="";
                  }
                };
                xhttp.open("GET", "StaffDeleteBusNumberServlet?deleteBusnumberDetails="+bus_number+"", true);
                xhttp.send();
            }
            function search1(){
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                  if (this.readyState == 4 && this.status == 200) {
                      document.querySelector(".inside-container").style.overflow="scroll";
                      document.querySelector(".inside-container").style.overflowX="hidden";
                      var table="";
                      var details=this.responseText.split(" ");
                      var length=details.length;
                      if(length>0){
                        for(var i=0,j=1;i<length-1;i+=8,j++)
                            table+="<tr><td>"+j+"</td><td>"+details[i]+"</td><td>"+details[i+1]+"</td><td>"+details[i+2]+"</td><td>"+details[i+3]+"</td><td>"+details[i+4]+"</td><td>"+details[i+5]+"</td><td>"+details[i+6]+"</td><td>"+details[i+7]+"</td></tr>";
                        document.getElementById("tbody1").innerHTML=table;
                      }
                      else
                          alert("OOPS! No data found");
                  }
                };
                xhttp.open("GET", "StaffSearchAllBusesServlet", true);
                xhttp.send();
            }
            function search2(){
                var xhttp = new XMLHttpRequest();
                xhttp.onreadystatechange = function() {
                  if (this.readyState == 4 && this.status == 200) {
                      document.querySelector(".inside-container").style.overflow="scroll";
                      document.querySelector(".inside-container").style.overflowX="hidden";
                      var table="";
                      var details=this.responseText.split(" ");
                      var length=details.length;
                      if(length>0){
                        for(var i=0,j=1;i<length-1;i+=2,j++)
                            table+="<tr><td>"+j+"</td><td>"+details[i]+"</td><td>"+details[i+1]+"</td></tr>";
                        document.getElementById("tbody2").innerHTML=table;
                      }
                      else
                          alert("OOPS! No data found");
                  }
                };
                xhttp.open("GET", "StaffSearchAllRoutesServlet", true);
                xhttp.send();
            }
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
        </script>
    </body>
</html>
<%}
else
  response.sendRedirect("index.jsp");
%>