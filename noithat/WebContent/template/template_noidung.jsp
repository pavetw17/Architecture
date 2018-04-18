<%@taglib prefix="tiles" uri="http://tiles.apache.org/tags-tiles"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/grid.css" type="text/css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/reset.css" type="text/css" />
	<link rel="stylesheet" href="<%=request.getContextPath()%>/css/style.css" type="text/css" />
 	<script type='text/javascript' src='<%=request.getContextPath()%>/js/jquery-1.10.2.js'></script>
    
    <!-- Add mousewheel plugin (this is optional) -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/js/jquery.mousewheel-3.0.6.pack.js"></script>
    <!-- Add fancyBox main JS and CSS files -->
	<script type="text/javascript" src="<%=request.getContextPath()%>/sourcefancy/jquery.fancybox.js?v=2.1.5"></script>
	<link rel="stylesheet" type="text/css" href="<%=request.getContextPath()%>/sourcefancy/jquery.fancybox.css?v=2.1.5" media="screen" />
    
    
</head>

<body>
		<!--Header Start-->
		<div class="header">
			<tiles:insertAttribute name="header" />
		</div>
		<!--Header End-->
		
		<!-- <div class="ic"></div> -->
		
		<!-- Content Start -->
		  <div class="bg-top">
		<div class="bg-top-2">
			<div class="bg">
				<div class="bg-top-shadow">
					<div class="main">
						<div id="content">
							<div class="box p3">
								<div class="padding">
									<div class="container_12">
										<div class="wrapper">
											<div class="grid_12">
												<div class="wrapper">
													<article class="grid_4 alpha">
													<div class="indent" style=" padding-left: 0px;">
														<tiles:insertAttribute name="left" />
													</div>
													</article>
													<article class="grid_8 omega">
													<div class="indent-right" style="padding-right: 0px;">
														<tiles:insertAttribute name="content" />
													</div>
													</article>
												</div>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>


	</div>
		<!-- Content End -->
	
		<!-- Footer Start -->
		<div id="footer">
			<tiles:insertAttribute name="footer" />
		</div>
		<!-- Footer End -->
		
	
		
</body>
</html>