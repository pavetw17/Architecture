<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
<title><%--Title--%> <tiles:insertAttribute name="title" />
</title>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/grid.css" type="text/css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css" type="text/css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" type="text/css" />
	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery-1.10.2.js'></script>
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