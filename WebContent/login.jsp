<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>


<!DOCTYPE html>


<html>



<head>
<style>


form
{

display:block;


}
<style>
 body
{

background-color:#FFFFB2;

}
</style>


</style>

<meta charset="ISO-8859-1">
<title>Login</title>
</head>
<body>

<%

String str=(String)session.getAttribute("username");
if(str!=null)
	response.sendRedirect("project.jsp");
%>
<form  align="center" action="userlogin" method="post">
<h1 align="center"> Login </h1>

<label> Username:</label>
<input id="username" name="username" type="text" ></input>
</br>
<label> Password:</label>
<input id="password" name="password" type="password" ></input>
</br	>
<input type="submit" value="LOGIN"></input>


</br>
<%
HttpSession s=request.getSession();
//String name=s.getAttribute("uname").toString();
String str1=request.getParameter("err");
String name=request.getParameter("uname");
if(str1!=null)
{
%> 	
<h2 style="color:red;">Login failed please try again <%out.println(name);%>!!!</h2>
<% 
}

%>

</form>


</body>
</html>