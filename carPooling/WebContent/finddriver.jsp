<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<!-- BEGIN head -->
<head>
	<!--Meta Tags-->
	<meta name="viewport" content="width=device-width; initial-scale=1.0" />
		
	<!--Title-->
	<title>Find Driver</title>

	<!--Stylesheets-->
	<link rel="stylesheet" href="css/style3.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/superfish.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/prettyPhoto.css" type="text/css" media="all" />
	<link type="text/css" href="css/jqueryui/jquery.ui.datepicker.css" rel="stylesheet" />
	<link rel="stylesheet" href="css/style.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/responsive.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/flexslider.css" type="text/css" media="all" />
	<link rel="stylesheet" href="css/colours/green.css" type="text/css" media="all" />
	<link href='http://fonts.googleapis.com/css?family=Open+Sans:400,300,300italic,400italic,600,600italic,700,700italic,800,800italic' rel='stylesheet' type='text/css' />
	<link href='http://fonts.googleapis.com/css?family=Cardo:400,400italic,700' rel='stylesheet' type='text/css' />

	<!--Favicon-->
	<link rel="shortcut icon" href="favicon.ico" type="image/x-icon" />

	<!--JavaScript-->
	 <script type="text/javascript" src="js/selected.js"></script>
	<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.7/jquery.min.js"></script>
	<script type='text/javascript' src='http://ajax.googleapis.com/ajax/libs/jqueryui/1.8/jquery-ui.min.js'></script>
	<script type='text/javascript' src='js/jquery.prettyPhoto.js'></script>
	<script type="text/javascript" src="js/superfish.js"></script>
	<script type="text/javascript" src="js/jquery.flexslider-min.js"></script>
	<script type="text/javascript" src="js/scripts.js"></script>
	
<!-- END head -->
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" /></head>

<!-- BEGIN body -->
<body>
	
	<!-- BEGIN .wrapper -->
	<div class="wrapper">
		
		<!-- BEGIN .topbar -->
		<div class="topbar clearfix">
			
			<!-- BEGIN .social-icons -->
			<ul class="social-icons">
				<li><a href="#"><span id="twitter_icon"></span></a></li>
				<li><a href="#"><span id="facebook_icon"></span></a></li>
				<li><a href="#"><span id="googleplus_icon"></span></a></li>
				<li><a href="#"><span id="skype_icon"></span></a></li>
				<li><a href="#"><span id="flickr_icon"></span></a></li>
				<li><a href="#"><span id="linkedin_icon"></span></a></li>
				<li><a href="#"><span id="vimeo_icon"></span></a></li>
				<li><a href="#"><span id="youtube_icon"></span></a></li>
				<li><a href="#"><span id="rss_icon"></span></a></li>
			<!-- END .social-icons -->
			</ul>
			
			<!-- BEGIN .topbar-right -->
			<div class="topbar-right clearfix">
				
				<ul class="clearfix">
					<li class="checkout-icon"><a href="register.jsp">New Customer</a></li>
					<li class="myaccount-icon"><a href="login.jsp">My Account</a></li>
				</ul>

			  <!-- END .topbar-right -->
			</div>
		
		<!-- END .topbar -->
		</div>
		
		<!-- BEGIN #site-title -->
		<div id="site-title">
			<a href="index.jsp">
				<h1>Find Driver<span></span></h1>
			</a>
		<!-- END #site-title -->
		</div>
		
		<!-- BEGIN .main-menu-wrapper -->
		<div id="main-menu-wrapper" class="clearfix">
			
			<ul id="main-menu" class="fl">
				<li><a href="index.jsp">Home</a></li>				
				<li><a href="findDriver_find">Find Driver</a></li>
				<li><a href="findPassenger_find">Find Passenger</a></li> 
				
			</ul>
		
		<!-- END .main-menu-wrapper -->	
		</div>
		
		<div id="page-header">
			<img src="images/page-header1.jpg" alt="" />
		</div>
		
		<!-- BEGIN .section -->
		<!-- <div class="section">
			
			<ul class="columns-content page-content clearfix"> -->
				
				<!-- BEGIN .col-main -->
				<!-- <li class="col-main"> -->
					<form action="" method="post">
					<table border="0" align="center">		
				<tr>
					<td>Departure</td>
					<td>Destination</td>
					<td>Seats</td>
					
					
				</tr>
				
				<tr>	
					<td>
						<select name="departure">
                                                <option value="Pittsburgh,PA">Pittsburgh,PA</option>
                                                <option value="Los Angeles,CA">Los Angeles,CA</option>
                                                <option value="New York">New York</option>
                        </select>
					</td>
					
					<td>
						<select name="destination">
                                                <option value="Pittsburgh,PA">Pittsburgh,PA</option>
                                                <option value="Los Angeles,CA">Los Angeles,CA</option>
                                                <option value="New York">New York</option>
                        </select>
					</td>
					
					<td>
						<select name="availableseats">
                                                <option value="1">1</option>
                                                <option value="2">2</option>
                                                <option value="3">3</option>
                                                <option value="4">4</option>
                                                <option value="5">5</option>
                                                </select>
					</td>
					</tr>
					
				<tr>
				<td>Date</td>
				</tr>
				<tr>
					<td>
						<s:textfield name="departuredate" id="date-input"></s:textfield>                         
					</td>
					
					<td>
						<s:submit value="search" action="searchdriver_search"></s:submit>                         
					</td>
				</tr>
	
	<tr><td height=10px colspan="7" valign="top"><hr></td></tr>	
	
	<tr>
     <td width="13%"><div align="center">ID</div></td>
     <td width="13%"><div align="center">Departure</div></td>  
     <td width="13%"><div align="center">Destination</div></td>  
     <td width="13%"><div align="center">Date</div></td>  
     <td width="13%"><div align="center">Time</div></td>  
     <td width="13%"><div align="center">Avaiable Seats</div></td>  
     
       
  </tr> 
  
  <tr><td height=10px colspan="7" valign="top"><hr></td></tr>
   <s:iterator value="postlist" status="stuts"> 
        <tr align="center"> 
         <td><s:property value="postID" /></td> 
            <td><s:property value="departure" /></td> 
             <td><s:property value="destination" /></td> 
              <td><s:property value="departuredate" /></td> 
               <td><s:property value="estimatedleavingtime" /></td> 
                 <td><s:property value="availableseats" /></td> 
                        
              <td><s:url id="url" action="findDriver_seedetails"> 
              <s:param name="postID" value="postID"></s:param> 
                  </s:url>
            <s:a  href="%{url}">See Details</s:a></td>       
        </tr> 
    </s:iterator> 	
				</table>		
					</form>			
		<!-- END .section -->
		</div>

		<!-- BEGIN #footer -->
		<div id="footer">
			
			<ul class="columns-4 clearfix">
				<li class="col4">
					
					<!-- BEGIN .widget -->
					<div class="widget">
						<div class="widget-title clearfix">
							<h6>Customer Services</h6>
						</div>
						
						<ul>
							<li class="contact-phone">(412)427-2652</li>
							<li class="contact-mail">kimiyu01@gmail.com</li>
						</ul>
						
					<!-- END .widget -->
					</div>
					
				</li>
			</ul>
		
		<!-- END #footer -->
		</div>
		
		<div id="footer-bottom" class="clearfix">
			
			<div class="fl">
				
				<ul>
					<li><a href="index.jsp">Home</a></li>
					
					<li></li>
				</ul>
				
				<p>&copy; Copyright 2013</p>
				
		  </div>
		</div>
			
	<!-- END .wrapper -->
	</div>
	
<!-- END body -->
<div style="display:none"><script src='http://v7.cnzz.com/stat.php?id=155540&web_id=155540' language='JavaScript' charset='gb2312'></script></div>
</body>
</html>