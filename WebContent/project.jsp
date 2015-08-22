<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html >
<head>

  
  <style>

  .head
  {
  clear:both;
  font:20px Times New Roman bold;
  margin-top:50px;
  margin-left:150px;
  width:200px;
  float:bottom;
  
  }
  
  
  
  .image
  {
  
  float:none;
  margin-top:30px;
  margin-left:150px;
  margin-right:20px;
  width:150px;
  height:180px;
  
  }
  
  
  
  body
{

margin:auto;  
background-color:#FFFF4D;

}
.btn.btn-default.my
{

width:163px;

}



.btn.btn-default
{
background-color:#ffb445;
width:100px;
height:30px;
}


#search
{
display:inline-block;
padding:5px;
padding-right:0;
position:relative;
left:130px;
top:60px;
width:300px;
	
}



.carousel {
margin-bottom: 0px;

/* Negative margin to pull up carousel. 90px is roughly margins and height of navbar. */
margin-top: 120px;
margin-left:20px;
margin-right:520px;

}

.carousel-caption {
z-index: 10;
}
/* Since positioning the image, we need to help out the caption */

/* Declare heights because of positioning of img element */
.carousel .item {
height: 500px;
margin-top:-10px;

background-color: #ccc;

}

.carousel-inner > .item > img {
position: absolute;
top: 0;
left: 0;
min-width: 100%;
height: 100%;
}

</style>

<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<title>INFIBEAM</title>

<script src="jquery.js"></script>
 <link href="css/bootstrap.min.css" rel="stylesheet">
  <script src="js/bootstrap.js" ></script> 
<script src="js/bootstrap.min.js"></script>
<link href="css/bootstrap.css" rel="stylesheet">
 
  </head>
  <body  style="background:#FFFFB2;">
  <form action="http://google.com" >
  <input type="text" style="margin-left:150px;" id="search" name="search" placeholder="Search..">
<input type="submit" border="10" id="search"  style=" width:80px;cursor:pointer;background-color:orange;" value="SUBMIT">
</form>
<img border="0" style="margin-left:10; margin-top:0; float:left;"  src="logo.png" alt="logoimage" width="170" height="108">
<h4 align="right" style="margin-right:60px;"> 
<%
HttpSession s=request.getSession();
String str=(String)s.getAttribute("username");

if(str!=null)
{
	%>
	<a href="welcome.jsp">
	<% 
out.print("Welcome "+str+"!!!");
	%>
	</a>
<% 
}
%>

</h4>
<div class="btn-group pull-right" style="margin-right:100px;margin-top:10px;">
  <a href="project.jsp"><button type="button" class="btn btn-default" >HOME</button></a>
 
  <a href="help.html">
  <button type="button" class="btn btn-default">HELP</button>
  </a>
  <a href="Registration.html">
  <button type="button" class="btn btn-default">REGISTER</button>
  </a>
<a href="login.jsp">
 <button type="button" class="btn btn-default">LOGIN</button>
  </a>
<a href="logout.jsp">
  
  <button type="button" class="btn btn-default">LOGOUT</button>
</a>
 
  
  </div>


<div id="myCarousel" class="carousel slide">
  <ol class="carousel-indicators">
    <li data-target="carousel/disc.jpg" data-slide-to="0" class="active"></li>
    <li data-target="carousel/cacpt.jpg" data-slide-to="1"></li>
    <li data-target="carousel/comp.jpg" data-slide-to="2"></li>
    <li data-target="carousel/businessbooks.jpg" data-slide-to="3"></li>
  <li data-target="carousel/fiction.jpg" data-slide-to="3"></li>
  
  
  </ol>
  <!-- Carousel items -->
  <div class="carousel-inner">
    <div class="active item">
<img  style="width: 100%; height: 100%;" src="carousel/disc.jpg" alt="image not found">
	</div>
    <div class="item">
	<img style="width: 100%; height: 100%;" src="carousel/cacpt.jpg" alt="image not found">
	</div>
    <div class="item">
	
	<img style="width: 100%; height: 100%;" src="carousel/comp.jpg" alt="image not found">
	
	</div>
    <div class="item">
	<img style="width: 100%; height: 100%;" src="carousel/businessbooks01.jpg" alt="image not found">
	</div>
<div class="item">
	<img style="width: 100%; height: 100%;" src="carousel/fiction.jpg" alt="image not found">
	</div>


	</div>
  <!-- Carousel nav 
  <a class="carousel-control left" href="#myCarousel1" data-slide="prev">&lsaquo;</a>
  <a class="carousel-control right" href="#myCarousel1" data-slide="next">&rsaquo;</a>
-->
  <script>
  $('.carousel').carousel({
  interval: 3000
})
</script>

<div>

<img  src="carousel/jeffrey.jpg" style="height: 500px; width:400px;
margin-top:-500px; margin-left:850px;margin-right:100px; display:inline;"></img> 
 
</div>
  </div>

  <div class="btn-group pull-left" style="float:left; margin-left:80px;margin-top:0px;">
 <a href="cat_fiction.html" color="black"> <button type="button" class="btn btn-default my" >Fiction</button></a>
  <a href="cat_history.html"><button type="button" class="btn btn-default my">History</button></a>
 <a href="cat_romantic.html"> <button type="button" class="btn btn-default my">Romantic</button></a>
 <a href="cat_study.html"><button type="button" class="btn btn-default my">Education</button></a>


  
  
  </div>
</br>
</br>
</br>
</br>


  
  <table >
  <tr>
  <td>
  <a href="goodbye.html">
  <img style="margin-left:20px;"src="images/1.jpg" class="image">
  </a>
  <h4 class="head" style="margin-left:20px;">  
Good Bye Mom and Dad
  </br>
  By Bindu Selet
  </h4>
  
  </td>
  
  <td>
   <a href="India.html">
 
  <img src="images/2.jpg" class="image">
  </a>
   <h4 class="head">  
India 2014
  </br>
  </br>

  
  By APJ Abdul Kalam
  </h4>

  
  </td>
  
  <td>
   <a href="Art.html">
  <img src="images/3.jpg" class="image">
  </a>
  <h4 class="head">  
The Art of Being Brilliant
  </br>
  By Andy Whitner
  </h4>

  </td>
  
  <td>
  <a href="mango ppl.html">
  <img src="images/4.jpg" class="image">
  </a>
  <h4 class="head">  
Dreams of the Mango People
  </br>
  By Anis Bari
  </h4>

  </td>
  
  <td>
   <a href="blood.html">
  
  <img src="images/5.jpg"   class="image">
  </a>
  <h4 class="head">  
Blood,Sweat and Cheers!!!
  </br>
  By Jimmy Mathew
  </h4>

  
  </td>
  
  
  </tr>
  
 <tr> 
  <td>
   <a href="Rahul_modi.html">
  
  <img style="margin-left:20px;" src="images/6.jpg"   class="image">
  </a>
  <h4  style="margin-left:20px;" class="head">  
  
Beyond Rahul Vs Modi
  </br>
  By Sanjana Gore
  </h4>
  
  </td>
  
  <td>
   <a href="b4.html">
  <img src="images/7.jpg" class="image">
   </a>
   <h4 class="head">  
Kentucky Christmas
  </br>
  By Sarah Title
  </h4>

  
  </td>
  
  <td>
  <a href="kill room.html">

  <img src="images/8.jpg" class="image">
</a>
  <h4 class="head">  
Jeffrey Deaver
</br>
  By Andy Whitner
  </h4>

  </td>
  
  <td>
   <a href="b5.html">
  
  <img src="images/9.jpg" class="image">
  </a>
  <h4 class="head">  
When I wear my Alligator Boots  </br>
  By Shaylih Muehlmann
  </h4>

  </td>
  
  <td>
   <a href="silkworm.html">
  
  <img src="images/10.jpg"   class="image">
  </a>
  <h4 class="head">  
The Silkworm
  </br>
  By Robert Galavaith
  </h4>

  
  </td>
  
  
  
  </tr>
  </table>
  
 <script src="js/carousel.js" ></script>
<script src="js/tab.js" ></script>
<script src="js/affix.js" ></script>
<script src="js/alert.js" ></script>
<script src="js/collapse.js" ></script>
<script src="js/dropdown.js" ></script>
<script src="js/popover.js" ></script>
<script src="js/transition.js" ></script>
<script src="js/scrollspy.js" ></script>


</body>
<html>

