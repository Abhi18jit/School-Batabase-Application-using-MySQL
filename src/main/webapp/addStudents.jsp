<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="CSS/style.css">
</head>
<body>
	<div class="box">

    
    <section class="top">

    
    <div class="navbar">

        <ul>
            <li class="crud">CRUD</li>
            <li class="lists"><a href="index.jsp">Home </a></li>
            <li class="lists"><a href="addStudents.jsp">Add Students</a></li>
            <li class="lists"><a href="display.jsp">View</a></li>
            <li class="lists"><a href="#">Help</a></li>
        </ul>
    </div>
    
</section>
<section class="mid-add">
    <div>

    
    <fieldset class="form-box">
        <legend>Student Registration form</legend>

    
    <form action="addStudentsDataProcessing.jsp" method="post">
            <input type="text" name="name"placeholder="Enter Your Name...">
            <input type="text" name="address" placeholder="Enter Your Address">
            <input type="text" name="phone" placeholder="Enter your Phone No">
            <input type="email" name="email" placeholder="Enter your E-Mail">
            <input type="password" name="password" id="eligib" placeholder="Enter Your password">
            <div>
                <input type="submit" name="submit" value="Submit">
                <input type="reset" value="Reset" >
            </div>


    </form>
    </fieldset>
</div>
</section>
<footer class="bottom">
    <p>
        To go to home page <a href="index.jsp">Click here</a>
    </p>
    <p>copyright@GoswamiParaHighSchool</p>
</footer>

</div>
</body>
</html>