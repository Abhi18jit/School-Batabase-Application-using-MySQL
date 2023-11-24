<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.sql.*" %>
    <%@page import="javax.servlet.http.HttpServletResponse" %>
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
<section class="mid-up">
	<div>
	<%
	String id=request.getParameter("id");
    Connection con;
    ResultSet rs;

    Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_db", "root", "abhi123");

    String query = "select * from students where id="+id+";";
    Statement st = con.createStatement();

    rs = st.executeQuery(query);
    while(rs.next()){
    	
    
	%>

    <form  action="update.jsp" method="post">
    	Id:<input type="number" name="newid" value="<%=rs.getString("id")%>" readonly="readonly">
		Name:<input type="text" name="newname" value="<%=rs.getString("name")%>">
		Address:<input type="text" name="newaddress" value="<%=rs.getString("address")%>">
		Phone:<input type="text" name="newphone" value="<%=rs.getString("phone")%>">
		E-mail:<input type="email" name="newemail" value="<%=rs.getString("email")%>">
		Password:<input type="password" name="newpass" value="<%=rs.getString("pass")%>">
		<div>
		<input type="submit" name="newsubmit" value="submit">		
		</div>
      </form>
      <%} %>
                      
</div>
    
</section>
<footer class="bottom">
    <p>
        To Add students you can <a href="addStudents.jsp">Click here</a>
    </p>
    <p>copyright@GoswamiParaHighSchool</p>
</footer>

</div>
</body>
</html>