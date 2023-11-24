<%@page import="java.sql.*" %> 
<%@page import="javax.servlet.http.HttpServletResponse" %>
<%@page import="java.io.IOException" %>
<% 
        //String id = request.getParameter("newid");
        
        Connection con;
        PreparedStatement pst;
        int newidd=Integer.parseInt(request.getParameter("newid"));
        
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_db","root","abhi123");
        pst = con.prepareStatement("update students set name=?,address=?,phone=?,email=?,pass=? where id="+newidd+";");
        pst.setString(1, request.getParameter("newname"));
        pst.setString(2, request.getParameter("newaddress"));
        pst.setString(3, request.getParameter("newphone"));
        pst.setString(4, request.getParameter("newemail"));
        pst.setString(5, request.getParameter("newpass"));
        System.out.println(request.getParameter("newphone"));
        pst.executeUpdate(); 
        
        %>
        
<%
    String redirectURL = "display.jsp";
    response.sendRedirect(redirectURL);
%>