<%@page import="java.sql.*" %>
<%@page import="javax.servlet.http.HttpServletResponse" %>

<%
try{
if(request.getParameter("submit")!=null){
	String name=request.getParameter("name");
	String phone=request.getParameter("phone");
	String email=request.getParameter("email");
	String password=request.getParameter("password");
	String address=request.getParameter("address");
	
	/*Connection con=null;
	Statement st=null;
	System.out.println("before");
	Class.forName("com.mysql.cj.jdbc.Driver");
	System.out.println("after");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_db", "root","abhi123");
	st=con.createStatement();
	String sql="insert into students(name,address,email,pass,phone)values('"
				+name+"','"+address+"','"+email+"','"+password+"','"+phone+"');";
	st.executeUpdate(sql);
	System.out.println(sql);
	st.close();
	con.close();*/
	

	
	Connection con=null;
	PreparedStatement pst=null;
	
	Class.forName("com.mysql.cj.jdbc.Driver");
    con = DriverManager.getConnection("jdbc:mysql://localhost:3306/crud_db","root","abhi123");
    pst=con.prepareStatement("insert into students(name,address,email,pass,phone)values(?,?,?,?,?);");
    pst.setString(1, name);
    pst.setString(2, address);
    pst.setString(3, email);
    pst.setString(4, password);
    pst.setString(5, phone); 
    pst.executeUpdate();
	}
}catch(Exception e){
	out.print(e);
}

String redirectURL="addStudents.jsp";
response.sendRedirect(redirectURL);
  %>
    