<%@page import="java.sql.*" %> 
<%@page import="javax.servlet.http.HttpServletResponse" %>

<% 
        String id = request.getParameter("id");
        
        Connection con;
        PreparedStatement pst;
        
        
        Class.forName("com.mysql.cj.jdbc.Driver");
        con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_db","root","abhi123");
        pst = con.prepareStatement("delete from students where id = ?");
        pst.setString(1, id);
        pst.executeUpdate();  
        
        %>
        
        <script>
            
            alert("Record Deletee");
            
       </script>
<%
    String redirectURL = "display.jsp";
    response.sendRedirect(redirectURL);
%>