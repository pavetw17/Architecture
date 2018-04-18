<%@page import="java.util.ArrayList"%>
<%@page import="Interface.Itbl_banner_Entity"%>
<%@page import="BusinessLogic.tbl_banner_EntityBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page language="java" import="javax.annotation.Resource"%>
<%@page language="java" import="javax.sql.DataSource"%>	

<div class="gallery p3" >
	<div class="wrapper indent-bot">
		<div id="themvao3">
			<div id="gallery" class="content">
				<div class="wrapper">
					<div class="slideshow-container">
						<div id="slideshow1" class="slideshow"></div>
					</div>
				</div>
			</div>
			<div id="thumbs1" class="navigation">
				<ul class="thumbs noscript">
					<%!@Resource(name = "NoiThatDB")
						private DataSource ds;%>
					<%
						StringBuffer sb = new StringBuffer();
						Itbl_banner_Entity Itbl_Entity = new tbl_banner_EntityBean(ds);
						ArrayList<String> list= Itbl_Entity.Home_getContentMain_accordingToProduct(3,6);  //1: architecture
						for(int i=1; i < list.size(); i++){
							String[] arr = list.get(i).split(" --split-- ");
							/* System.out.println(arr[0]);  // thumb
							System.out.println(arr[1]); */  // gallery
							sb.append("<li><a class='thumb' href='"+ arr[1] +"' title=''>");
							sb.append("<img src='"+ arr[0] +"' alt='' /><span></span></a></li>");
						}
						out.print(sb.toString());
					%>
					<!-- <li><a class="thumb" href="images/gallery-img6.jpg" title="">
							<img src="images/thumb-6.jpg" alt="" /> <span></span>
					</a></li> -->
				</ul>
			</div>
		</div>
		<!-- them vao -->
	</div>
	<div class="inner">
		<div class="wrapper">
			<span class="title img-indent3"><a href="1"
				class="link_home_construction" style="text-decoration: none;">Thi công</a></span>
			<div class="extra-wrap indent-top2">
				<div id="productDisplay3">
					<%
							sb.setLength(0);
							sb.append(list.get(0));
							out.print(sb.toString());
					%>
				</div>
			</div>
		</div>
	</div>
</div>