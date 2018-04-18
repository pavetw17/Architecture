<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.ArrayList"%>
<%@page import="Interface.Itbl_banner_Entity"%>
<%@page import="BusinessLogic.tbl_banner_EntityBean"%>
<%@page language="java" import="javax.annotation.Resource"%>
<%@page language="java" import="javax.sql.DataSource"%>	
<div id="divInt">
	<div class="gallery_2 p4">
		<div class="wrapper indent-bot">
			<!-- Jssor Slider Begin -->
			<div id="themvao2">
				<div id="slider1_container"
					style="position: relative; top: 0px; left: 0px; width: 960px; height: 403px; background: #FFFFFF; overflow: hidden;">

					<!-- Loading Screen -->
					<div u="loading" style="position: absolute; top: 0px; left: 0px;">
						<div
							style="filter: alpha(opacity = 70); opacity: 0.7; position: absolute; display: block; background-color: #000000; top: 0px; left: 0px; width: 100%; height: 403px;">
						</div>
						<div
							style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center; top: 0px; left: 0px; width: 100%;">
						</div>
					</div>

					<!-- Slides Container -->
					<div u="slides"	style="cursor: move; position: absolute; left: 240px; top: 0px; width: 690px; height: 403px; overflow: hidden;">
						<%!@Resource(name = "NoiThatDB")
							private DataSource ds;%>
						
						<%
							StringBuffer sb = new StringBuffer();
							Itbl_banner_Entity Itbl_Entity = new tbl_banner_EntityBean(ds);
							ArrayList<String> list= Itbl_Entity.Home_getContentMain_accordingToProduct(2,10);  //1: interior
							for(int i=1; i < list.size(); i++){
								String[] arr = list.get(i).split(" --split-- ");
								/* System.out.println(arr[0]);  // thumb
								System.out.println(arr[1]); */  // gallery
								sb.append("<div><img u='image' src='"+ arr[1] +"' />");
								sb.append("<img u='thumb' src='"+ arr[0] +"' alt='' /></div>");
							}
							out.print(sb.toString());
						%>
						
						
						<!-- <div>
							<img u="image" src="images/gallery-img1.jpg" /> <img u="thumb"
								src="images/thumb-1.jpg" />
						</div> -->
					</div>


					<!--  Thumbnail Navigator Skin 02 Begin -->
					<div u="thumbnavigator" class="jssort02"
						style="position: absolute; width: 240px; height: 480px; left: 0px; bottom: 0px; top: 0;">

						<!-- Thumbnail Item Skin Begin -->

						<div u="slides" style="cursor: move;">
							<div u="prototype" class="p"
								style="position: absolute; width: 99px; height: 66px; top: 0; left: 0;">
								<div class=w>
									<thumbnailtemplate
										style=" width: 100%; height: 100%; border: none;position:absolute; top: 0; left: 0;"></thumbnailtemplate>
								</div>
								<div class=c></div>
							</div>
						</div>
						<!-- Thumbnail Item Skin End -->
					</div>
				</div>
			</div>
			<!-- them vao 1 -->
			<!-- Jssor Slider End -->
		</div>
		<div class="inner">
			<div class="wrapper">
				<span class="title img-indent3"> <a href="2"
					class="link_home_interior" style="text-decoration: none;">Nội
						thất</a></span>
				<div class="extra-wrap indent-top2">
					<div id="productDisplay2">
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
</div>
<!-- dong div divInt -->