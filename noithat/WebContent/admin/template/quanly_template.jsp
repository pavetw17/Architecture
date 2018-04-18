<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty sessionScope.tbl_qt.user_admin}">
 	<jsp:forward page="../../403.jsp"></jsp:forward>
 </c:if>  
<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>


<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/template/css/960.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/template/css/reset.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/template/css/text.css" />
<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/admin/template/css/blue.css" />
</head>

<body>
	<!-- WRAPPER START -->
	<div class="container_16" id="wrapper">	
	    <!--LOGO-->
		<div class="grid_8" id="logo"> Website Administration</div>
	    <div class="grid_8">
	<!-- USER TOOLS START -->      
	      <div id="user_tools"><span> Welcome ${sessionScope.tbl_qt.user_admin}   |    <a href="thoat">Logout</a></span></div>
	    </div>
	<div class="grid_16" id="header">
	<!-- MENU START -->
	<div id="menu">
		<ul class="group" id="menu_group_main">
			<li class="item first" id="one"><a href="showMenu?action=home" class="main"><span class="outer"><span class="inner dashboard">Home</span></span></a></li>
	        <li class="item last" id="two"><a href="showMenu?action=content" class="main "><span class="outer"><span class="inner content">Content</span></span></a></li>
			<!-- <li class="item last" id="five"><a href="#" class="main"><span class="outer"><span class="inner media_library">Media Library</span></span></a></li> -->        
			<!-- <li class="item middle" id="seven"><a href="#" class="main current"><span class="outer"><span class="inner newsletter">Newsletter</span></span></a></li>        
			<li class="item last" id="eight"><a href="#" class="main"><span class="outer"><span class="inner settings">Settings</span></span></a></li>         -->
	    </ul>
	</div>
	<!-- MENU END -->
	</div>
	<div class="grid_16">
	<!-- TABS START -->
	    <div id="tabs">
	         <div class="container">
	         
	         		<tiles:insertAttribute name="menu" />
	           <!--  <ul>
	                      <li><a href="dashboard.html"><span>Dashboard elements</span></a></li>
	                      <li><a href="#" class="current"><span>Content Editing</span></a></li>
	                      <li><a href="#"><span>Submenu Link 3</span></a></li>
	                      <li><a href="#"><span>Submenu Link 4</span></a></li>
	                      <li><a href="#"><span>Submenu Link 5</span></a></li>
	                      <li><a href="#"><span>Submenu Link 6</span></a></li>
	                      <li><a href="#" class="more"><span>More Submenus</span></a></li>            
	           </ul> -->
	        </div>
	    </div>
	<!-- TABS END -->    
	</div>
	
	<!-- CONTENT START -->
	    <div class="grid_16" id="content">
	   <!-- CONTENT TITLE -->
	   <!--  <div class="grid_9">
	    <h1 class="content_edit">Content Editing and Tables</h1>
	    </div> -->
	    <!-- CONTENT TITLE RIGHT BOX -->
	    <!--  <div class="grid_15"> -->
	    		 <tiles:insertAttribute name="content" />
	  <!--   </div> -->
	    <div class="clear"> </div>
	<!-- END CONTENT-->    
	  	</div>
	
	
	<div class="clear"> </div>
	
	</div>
	<!-- WRAPPER END -->
</body>



</html>
