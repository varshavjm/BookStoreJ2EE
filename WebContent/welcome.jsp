<%@ page import="java.sql.*" %>

<%@ page import="javax.sql.*;" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<style>
 body
{

margin:auto;  
background-color:#FFFFB2;

}
</style>

<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Welcome</title>
</head>
<body>
<span>
<h2>Welcome 
<%
HttpSession s=request.getSession();
if(s!=null)
{
String str=(String)s.getAttribute("username");
out.print(str);
out.print("!!!!");
}
%>
</h2>
<span align="right">
<a href="project.jsp" >
GO SHOPPING!!!
</a>
</span>
</span>
<h1 align="center" style="font-size:38pt;color:orange;"><u>Order details</u></h1>
<%
final String DB_DRIVER_CLASS="oracle.jdbc.driver.OracleDriver" ;
final String DB_URL="jdbc:oracle:thin:@localhost:1521:xe";
final String str2="select * from orders where username='"+session.getAttribute("username")+"' ";
Connection con = null;
	
	

	try
	{
		
		Class.forName(DB_DRIVER_CLASS);
	}
	catch(ClassNotFoundException e)
	{
		e.printStackTrace();
		
	}
	
	
	
		
		try {
			con=DriverManager.getConnection(DB_URL,"varsha","varsha");
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
if(con!=null)
{
System.out.println("im in");	
		Statement st = null;
		ResultSet rs=null;
		try {
			st = con.createStatement();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	
	try {
		 rs=st.executeQuery(str2);
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}
	
	try {
		%>
		<table align="center" style="font-size:20pt;";">
		<%
		int i=0;
		while(rs.next())
		{
		%>
		
		<tr>
		<td><label><b>Book Name</b></label></td>
		<td>
		<% 
		
			out.println(rs.getString(2));
		%>
		</td>
		</tr>
		<tr>
		<td><label><b>Author Name</b></label></td>
		<td>
		<%
			out.println(rs.getString(3));
		
		%>
		</td>
		</tr>
		<tr>
		<td><label><b>Price</b></label></td>
		<td>
		<%
		out.println(rs.getString(4));
		//	out.println(i++);
		%>
		</td></tr>
		<tr>
		<td><label><b>Date</b></label><hr></td>
		
		<td>
		<%
		out.println(rs.getString(5));
		//	out.println(i++);
		%>
		<hr>
		</td>
		</tr>
		
		<% 
				
			
		}
		%>
		</table>
		<%
		
	} catch (SQLException e) {
		// TODO Auto-generated catch block
		e.printStackTrace();
	}	
}
	%>
	<% 
System.out.println("im out!!");
	con.close();
%>


</body>
</html>