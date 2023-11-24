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
<section class="mid-view">
	<div>

    
	<table class="center" id="stud">
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Address</th>
            <th>Phone</th>
            <th>E-mail</th>
            <th>Password</th>
            <th>Operations</th>
        </tr>
        <%

                            Connection con;
                            ResultSet rs;

                            Class.forName("com.mysql.cj.jdbc.Driver");
                            con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_db", "root", "abhi123");

                            String query = "select * from students";
                            Statement st = con.createStatement();

                            rs = st.executeQuery(query);

                            while (rs.next()) {
                                String id = rs.getString("id");
                        %>
                        <tr> 
                            <td> <%= rs.getString("id")%> </td>
                            <td><%= rs.getString("name")%></td>
                            <td><%= rs.getString("address")%></td>
                            <td><%= rs.getString("phone")%></td>
                            <td><%= rs.getString("email")%></td>
                            
                            <td><%= rs.getString("pass")%></td>
                            <td>
                                <a href="update_record.jsp?id=<%=rs.getString("id")%>">Edit</a>
                                <a href="delete_record.jsp?id=<%=rs.getString("id")%>">Delete</a>
                            </td>
                        </tr>
                        <%
                            }
                        %>
    </table>
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