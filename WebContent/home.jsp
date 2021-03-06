<%@page import="java.util.Iterator"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.Vector" %>

<%
if (session.getAttribute("userid") == null) {
	response.sendRedirect("index.jsp");
}
%>

<!DOCTYPE html>
 <html>
 <head>
 	<title>SAGNAS</title>
 	<meta name="viewport" content="width=device-width, initial-scale=1.0">
 	
 	<link href="css/bootstrap.min.css" rel="stylesheet" media="screen">
 	<link href="css/bootstrap-responsive.css" rel="stylesheet" media="screen">
 	<style type="text/css">
 		footer{
 			position: fixed;
 			width: 100%;
 			bottom: 0px;
 		}
 		.header {
			height: 10%;
			width: 100%;
		}
 	</style>
 </head>
 
 <body>
 	<!-- Page Header Starts -->
 	<header>
 		<div class="hero-unit">
    		<div class="container-fluid">
        		<h1>SAGNAS</h1>
        	</div>
		</div>
		<div class="container-fluid">
			<div class="row-fluid">
				<p class="text-left"><a href="logout.jsp">Logout</a></p>
				<p class="text-right">Welcome <%=session.getAttribute("userid") %></p>
			</div>
		</div>
 	</header>
 	<!-- Page Header ends -->
 	
 	<!-- Container Section Starts -->
 	<section>
	 	<div class="container-fluid">
	 	<% if("cop".equals(session.getAttribute("user_type"))){
	 	%>
		    <div class="row-fluid">
		        <a class="span10 btn pull-left" href="" role="button">Request Assistance</a>
		    </div>
		   <%}
	 	%>
		    <div class="row-fluid">
		        <a class="span10 btn pull-right" href="gps_nav.jsp" role="button">GPS Navigation</a>
		    </div>
		    <div class="row-fluid">
		        <a class="span10 btn pull-left" href="#admin" role="button">Friendly GPS</a>
		    </div>
		    <div class="row-fluid">
		        <a class="span10 btn pull-right" href="#admin" role="button">Statistics</a>
		    </div>
		    <div class="row-fluid">
		        <a class="span10 btn pull-left" href="#user" role="button">Settings</a>
		    </div>
		    <div class="row-fluid">
		        <a class="span10 btn pull-right" href="#admin" role="button">About Us</a>
		    </div>
		</div>
	</section>
 	<!-- Container Section Ends -->
 	<!-- Page Footer Starts -->
 	 <footer>
 		<div class="container-fluid">
		    <div class="row-fluid">
		        <a class="span12 text-center">SCE-UMKC</a>
		    </div>
		</div>
 	</footer>
 	<!-- Page Footer Ends -->
    <!-- Placed at the end of the document so the pages load faster -->    
    <script src="js/jquery-2.0.2.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
 </body>
 </html>