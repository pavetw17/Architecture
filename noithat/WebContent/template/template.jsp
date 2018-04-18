<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><%--Title--%> <tiles:insertAttribute name="title" />
</title>
	<link rel="stylesheet" href="css/grid.css" type="text/css" />
	<link rel="stylesheet" href="css/reset.css" type="text/css" />
	<link rel="stylesheet" href="css/style.css" type="text/css" />
 	<script type='text/javascript' src='js/jquery-1.10.2.js'></script>
 	<script type='text/javascript' src='js/jquery.opacityrollover.js'></script>
	<script type='text/javascript' src='js/jquery.galleriffic.js'></script> 
	
	<script type="text/javascript" src="js/jssor.core.js"></script>
    <script type="text/javascript" src="js/jssor.utils.js"></script>
    <script type="text/javascript" src="js/jssor.slider.js"></script> 
    
    
    <!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="js/jquery.mousewheel-3.0.6.pack.js"></script>
    <!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="sourcefancy/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="sourcefancy/jquery.fancybox.css?v=2.1.5" media="screen" />
    
    
</head>

<body>
		<!--Header Start-->
		<div class="header">
			<tiles:insertAttribute name="header" />
		</div>
		<!--Header End-->
		
		<!-- <div class="ic"></div> -->
		
		<!-- Content Start -->
		<div id="content">
				<tiles:insertAttribute name="content" />
		</div>
		<!-- Content End -->
	
		<!-- Footer Start -->
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
		<!-- Footer End -->
		
	
		
</body>
</html>