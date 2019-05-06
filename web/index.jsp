<%@page import="model.User"%>
<%@page import="model.User"%>
<%@page import="java.util.List"%>
<%
    if(request.getSession().getAttribute("details")==null){  
%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" dir="ltr">
    <head>
        <meta charset = "UTF-8">
        <title>Bus Management System</title>
        <link href='https://fonts.googleapis.com/css?family=Amaranth' rel='stylesheet'>
        <link rel="stylesheet" href="css/style.css" media="screen">
        <script type="text/javascript" src="js/particles.js"></script>
        <script language="JavaScript"  src="http://ajax.googleapis.com/ajax/libs/jquery/1.10.0/jquery.min.js"></script>
    </head>
    <body>
        <div id="particles-js">
            <h1 class="header">Bus manager</h1>
            <div class="outer">
                <div class="mid" id="1">
                    <h2 class="header-outer">Don't have an account?</h2></br>
                    <button class="btn-11" id="2">Sign-Up</button>
                </div>
                <div class="mid-form" id="3">
                    <div class="mid-form-up">
                        <h1 class="header-signup">SIGN-UP</h1>
                    </div>
                    <div class="mid-form-down">
                        <form action="RegisterServlet" method="post" class="form-signup">
                            <input size="30" type="text" class="input-text input-text-username" placeholder="Username" name="username" required></br></br>
                            <input size="30" type="text" class="input-text mobile" placeholder="Mobile" name="mobile" required></br></br>
                            <input size="30" type="text" class="input-text email" placeholder="Email ID" name="email" required></br></br>
                            <input size="30" type="password" class="input-text password" placeholder="Password" name="password" required></br></br>
                            <label for="account" class="accnt-type">Account-Type :</label>
                            <select class="select-accnt" name="account-type">
                                <option class="option-1">Student</option>
                                <option class="option-2">Staff</option>
                                <option class="option-3">Faculty</option>
                            </select>
                            <button class="btn-41" onclick="return validate()">Submit</button>
                        </form>
                    </div>
                </div>
                <div class="mid1" id="4">
                    <h2 class="header-outer1">Have an account?</h2></br>
                    <button class="btn-31" id="5">Log-in</button>
                </div>
                <div class="inner" id="6">
                    <div class="inner-up">
                        <h1 class="header-login">LOGIN</h1>
                    </div>
                    <div class="inner-down">
                        <form action="LoginServlet" method="post" class="form-login">
                            <input size="30" type="text" class="input-text" placeholder="Username" name="login-username" required></br></br></br>
                            <input size="30" type="password" class="input-text" placeholder="Password" name="login-password" required></br></br></br>
                            <label for="account" class="accnt-type">Account-Type :</label>
                            <select class="select-accnt" name="login-account-type">
                                <option class="option-1">Student</option>
                                <option class="option-2">Staff</option>
                                <option class="option-3">Faculty</option>
                                <option class="option-3">Admin</option>
                            </select>
                            <button class="btn-21" onclick="">Submit</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
        <script type="text/javascript" src="js/app.js"></script>
        <script type="text/javascript" src="js/script.js"></script>
    </body>
</html>
<%}
else{
    List<User> details=(List<User>)session.getAttribute("details");
    for(User u:details){
    if(u.getAccounttype().equals("Admin"))
        response.sendRedirect("admin.jsp");
    else if(u.getAccounttype().equals("Staff"))
        response.sendRedirect("staff.jsp");
    else if(u.getAccounttype().equals("Student"))
        response.sendRedirect("student.jsp");
    else if(u.getAccounttype().equals("Faculty"))
        response.sendRedirect("faculty.jsp");
    }
}
%>