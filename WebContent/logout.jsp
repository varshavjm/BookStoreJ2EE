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
<title>Insert title here</title>
</head>
<body>
<h1>
<%
HttpSession s=request.getSession();
String str=(String)s.getAttribute("username");
if(str!=null)
{
out.print(str);
out.print(" has logged out!!!");
}
s.setAttribute("bookname", null);
s.setAttribute("username", null);
s.setAttribute("author", null);
s.setAttribute("price", null);
%>
</h1>
<form action="project.jsp">
<input type="Submit" value="Go to Home" onclick="form.submit()"></input>
</form>
</body>
</html>