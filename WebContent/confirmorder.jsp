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
<title>Confirm Order</title>
</head>
<body>
<h1 align="center">

Confirm Your Order!!!
</h1>
<%
String username=(String)session.getAttribute("username");
String bookname=(String)session.getAttribute("bookname");
String author=(String)session.getAttribute("author");
String price=(String)session.getAttribute("price");
%>
<h2 align="left">
<%
out.println("Username:"+username);
%>
</br>
<% 
out.println("Bookname:"+bookname);
%>
</br>
<% 

out.println("Authorname: " + author);
%>
</br>
<% 
out.println("Price: " + price);

%>
</h2>
</br>
<form action="savetodb" id="frm" method="post">
<button onClick="frm.submit();">Submit</button>
</form>

<a href="project.jsp" >
<button>Cancel</button>
</a>
</body>
</html>