<%@page import="java.util.ArrayList"%>
<%@page import="Interface.Itbl_banner_Entity"%>
<%@page import="BusinessLogic.tbl_banner_EntityBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page language="java" import="javax.annotation.Resource"%>
<%@page language="java" import="javax.sql.DataSource"%>	
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<meta name="keywords" content="Kiến trúc, nội thất, thi công, Kien " />
<meta name="description" content="kien truc" />


<script src="js/ajax_truyen.js"></script>  	
<script>
	jQuery(document).ready(function($) {
		call_bannerHome_interior();
		/* ------------------------------------------------------------- */
		  $(document).on('click', '.link_architecture', function(e){
			  e.preventDefault(); 
			  $.post("/noithat/Home_GetImageAccordingToLink", {
					txt_link : $(this).attr('href'),
				
			  }, function(j){
				  
				   var parsed   = j.split('ChiaDoi');
			       var v1     	= parsed[0];
			       var v2  		= parsed[1];
				  
				  $("#productDisplay1").fadeOut("200", function(){
				  		$("#productDisplay1").replaceWith('<div >'+ v1 +'</div>');
				  }); 
				  
				  $('#themvao1').css('height','403px');
				  $('#themvao1').css('overflowY', 'auto'); 
				  $('#themvao1').css('overflowX', 'hidden'); 
				  $('#themvao1').html(v2);
			  });
			});
		  
		  $(document).on('click', '.link_interior', function(e){
			  e.preventDefault(); 
			  $.post("/noithat/Home_GetImageAccordingToLink", {
					txt_link : $(this).attr('href'),
				
			  }, function(j){
				  
				   var parsed   = j.split('ChiaDoi');
			       var v1     	= parsed[0];
			       var v2  		= parsed[1];
				  
				  $("#productDisplay2").fadeOut("200", function(){
				  		$("#productDisplay2").replaceWith('<div >'+ v1 +'</div>');
				  }); 
				  
				  $('#themvao2').css('height','403px');
				  $('#themvao2').css('overflowY', 'auto'); 
				  $('#themvao2').css('overflowX', 'hidden'); 
				  $('#themvao2').html(v2);
			  });
			});
		  
		  $(document).on('click', '.link_construction', function(e){
			  e.preventDefault(); 
			  $.post("/noithat/Home_GetImageAccordingToLink", {
					txt_link : $(this).attr('href'),
				
			  }, function(j){
				  
				   var parsed   = j.split('ChiaDoi');
			       var v1     	= parsed[0];
			       var v2  		= parsed[1];
				  
				  $("#productDisplay3").fadeOut("200", function(){
				  		$("#productDisplay3").replaceWith('<div >'+ v1 +'</div>');
				  }); 
				  
				  $('#themvao3').css('height','403px');
				  $('#themvao3').css('overflowY', 'auto'); 
				  $('#themvao3').css('overflowX', 'hidden'); 
				  $('#themvao3').html(v2);
			  });
			});
		  
		  
		  $(document).on('click','.link_home_architecture', function(e){
			  e.preventDefault();
			 	var http = new getXMLHttpRequestObject();
			   	var url = "<c:out value="${pageContext.request.contextPath}"/>/module/page_ajax/load_banner_architecture.jsp";
			   	http.open("GET", url, true);
	 			http.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	 			http.timeout = 1000;
	 				http.onreadystatechange = function() {
	 				if (http.readyState == 4) {
	 					if (http.status == 200) {
	 						var temp= http.responseText;
	 						document.getElementById("divArc").innerHTML = temp;
	 						call_bannerHome(0); //thumbs0
	 					}
	 				}
	 			};
	 			http.send(null); 
		  });
		  
		  $(document).on('click','.link_home_interior', function(e){
			  e.preventDefault();
			 	var http = new getXMLHttpRequestObject();
			   	var url = "<c:out value="${pageContext.request.contextPath}"/>/module/page_ajax/load_banner_interior.jsp";
			   	http.open("GET", url, true);
	 			http.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	 			http.timeout = 1000;
	 				http.onreadystatechange = function() {
	 				if (http.readyState == 4) {
	 					if (http.status == 200) {
	 						var temp= http.responseText;
	 						document.getElementById("divInt").innerHTML = temp;
	 						fadeIn(document.getElementById("divInt"),"inline-block"); 
	 						call_bannerHome_interior();
	 					}
	 				}
	 			};
	 			http.send(null); 
		  });
		  
		  $(document).on('click','.link_home_construction', function(e){
			  e.preventDefault();
			 	var http = new getXMLHttpRequestObject();
			   	var url = "<c:out value="${pageContext.request.contextPath}"/>/module/page_ajax/load_banner_construction.jsp";
			   	http.open("GET", url, true);
	 			http.setRequestHeader("Content-Type","application/x-www-form-urlencoded");
	 			http.timeout = 1000;
	 				http.onreadystatechange = function() {
	 				if (http.readyState == 4) {
	 					if (http.status == 200) {
	 						var temp= http.responseText;
	 						document.getElementById("divCons").innerHTML = temp;
	 						//call_bannerHome_construction();
	 						call_bannerHome(1);  //thumbs1
	 					}
	 				}
	 			};
	 			http.send(null); 
		  });
	});
</script>	

<script type="text/javascript">
function fadeIn(el, display){
	  el.style.opacity = 0.5;
	  el.style.display = display || "block";

	  (function fade() {
	    var val = parseFloat(el.style.opacity);
	    if (!((val += .1) > 1)) {
	      el.style.opacity = val;
	      requestAnimationFrame(fade);
	    }
	  })();
	}

	function call_bannerHome_interior(){
		var _SlideshowTransitions = [
		                     		//Rotate HFork in
		                     		{
		                     		} ];

		                     		var options = {
		                     			$AutoPlay : true, 
		                     			$AutoPlayInterval : 3000, 
		                     			$PauseOnHover : 1, 
		                     			$SlideDuration : 600, 
		                     			$SlideshowOptions : { 
		                     				$Class : $JssorSlideshowRunner$, 
		                     				$Transitions : _SlideshowTransitions,
		                     				$TransitionsOrder : 1, 
		                     				$ShowLink : true
		                     			},

		                     			$ThumbnailNavigatorOptions : { 
		                     				$Class : $JssorThumbnailNavigator$, 
		                     				$ChanceToShow : 2, 
		                     				$Lanes : 2, 
		                     				$SpacingX : 14, 
		                     				$SpacingY : 12, 
		                     			    $DisableDrag: true,  
		                     				$DisplayPieces : 6, 
		                     				$ParkingPosition : 156, 
		                     				$Orientation : 2
		                     			}
		                     		};

		 var jssor_slider1 = new $JssorSlider$("slider1_container", options);
	}

	function call_bannerHome(id_product){
		$('div.navigation').css({
			'width' : '320px',
			'float' : 'right'
		});
		$('div.content').css('display', 'block');

			// Initially set opacity on thumbs and add
			// additional styling for hover effect on thumbs
			var onMouseOutOpacity = 0.5;
			$('#thumbs'+ id_product +' ul.thumbs li span').opacityrollover({
				mouseOutOpacity : onMouseOutOpacity,
				mouseOverOpacity : 0.0,
				fadeSpeed : 'fast',
				exemptionSelector : '.selected'
			});

			// Initialize Advanced Galleriffic Gallery
			var gallery = $('#thumbs'+ id_product ).galleriffic({
				delay : 7000,
				numThumbs : 12,
				preloadAhead : 6,
				enableTopPager : false,
				enableBottomPager : false,
				imageContainerSel : '#slideshow' + id_product ,
				controlsContainerSel : '',
				captionContainerSel : '',
				loadingContainerSel : '',
				renderSSControls : true,
				renderNavControls : true,
				playLinkText : 'Play Slideshow',
				pauseLinkText : 'Pause Slideshow',
				prevLinkText : 'Prev',
				nextLinkText : 'Next',
				nextPageLinkText : 'Next',
				prevPageLinkText : 'Prev',
				enableHistory : true,
				autoStart : 7000,
				syncTransitions : true,
				defaultTransitionDuration : 900,
				onSlideChange : function(prevIndex, nextIndex) {
					// 'this' refers to the gallery, which is an extension of $('#thumbs')
					this.find('ul.thumbs li span').css({
						opacity : 0.5
					});
				},
			 	onPageTransitionOut : function(callback) {
					this.find('ul.thumbs li span').css({
						display : 'block'
					});
				},
				onPageTransitionIn : function() {
					this.find('ul.thumbs li span').css({
						display : 'none'
					});
				} 
			});
	}
</script>

<style>
.jssort02 .w {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 100%;
	height: 100%;
}

.jssort02 .c {
	position: absolute;
	top: 0px;
	left: 0px;
	width: 95px;
	height: 62px;
	border: #FFF 2px solid;
}

.jssort02 .p:hover .c,.jssort02 .pav:hover .c,.jssort02 .pav .c {
	/* background: url(../img/t01.png) center center; */
	border: #DB0909 2px solid;
	/*  top: 2px;
                    left: 2px; */
	width: 95px;
	height: 62px;
}

.jssort02 .p:hover .c,.jssort02 .pav:hover .c {
	/*  top: 0px;
                    left: 0px; */
	width: 95px;
	height: 62px;
	border: #58CE21 2px solid;
}

.hidden {
 	display: none;   
}
</style>

<div class="bg-top">
	<div class="bg-top-2">
		<div class="bg">
			<div class="bg-top-shadow">
				<div class="main">

					<div class="centerDiv">
						<div class="div1">
							<div class="css-vertical-text-left"> 
								<a href="van-phong_1" class="link_architecture"  style="color: rgb(136, 34, 12);   text-decoration: none;">
									Văn Phòng
								</a >
								||| <a href="khach-san_2" class="link_architecture"  style="color: rgb(136, 34, 12);   text-decoration: none;">Khách Sạn</a >
								||| <a href="biet-thu_3" class="link_architecture"  style="color: rgb(136, 34, 12);   text-decoration: none;">Biệt Thự</a >
								||| <a href="nha-pho_4" class="link_architecture"  style="color: rgb(136, 34, 12);   text-decoration: none;">Nhà Phố</a >
							
							</div>
						
						</div>
						<div class="div2" >
									
							<div class="each-gallery" id="divArc" >
								<div class="gallery p3" >
									<div class="wrapper indent-bot">
							<div id="themvao1">
										<div id="gallery" class="content">
											<div class="wrapper">
												<div class="slideshow-container">
													<div id="slideshow0" class="slideshow"></div>
												</div>
											</div>
										</div>
										<div id="thumbs0" class="navigation">
											<ul class="thumbs noscript">
						<%!@Resource(name = "NoiThatDB")
							private DataSource ds;%>
						<%
								StringBuffer sb = new StringBuffer();
								Itbl_banner_Entity Itbl_Entity = new tbl_banner_EntityBean(ds);
								ArrayList<String> list= Itbl_Entity.Home_getContentMain_accordingToProduct(1,6);  //1: architecture
								for(int i=1; i < list.size(); i++){
									String[] arr = list.get(i).split(" --split-- ");
									/* System.out.println(arr[0]);  // thumb
									System.out.println(arr[1]); */  // gallery
									sb.append("<li><a class='thumb' href='"+ arr[1] +"' title=''>");
									sb.append("<img src='"+ arr[0] +"' alt='' /><span></span></a></li>");
								}
								out.print(sb.toString());
						%>
											</ul>
										</div>
							</div> <!-- them vao 1 -->
									</div>
									<div class="inner">
										<div class="wrapper">
											<span class="title img-indent3"><a href="1" class="link_home_architecture"  style="text-decoration: none;">Kiến trúc</a></span>
											<div class="extra-wrap indent-top2">
												<div id="productDisplay1">
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
						</div>
						<div class="div3">
							<div class="css-vertical-text-right">cascsacasc cascasc
								ascas</div>
						</div>
					</div>

	<div class="centerDiv">
					<div class="div1">
						<div class="css-vertical-text-left"><a href="1" class="link_interior"  style="color: rgb(136, 34, 12);   text-decoration: none;"> Nhà hàng </a></div>
					</div>
					<div class="div2">
					   <div id="divInt">
				 	 	<div class="gallery_2 p4">
							<div class="wrapper indent-bot">
								<!-- Jssor Slider Begin -->
						  <div id="themvao2"> 			
								<div id="slider1_container"
									style="position: relative; top: 0px; left: 0px; width: 960px; height: 403px; background: #FFFFFF; overflow: hidden;">
	
									<!-- Loading Screen -->
									<div u="loading"
										style="position: absolute; top: 0px; left: 0px;">
										<div
											style="filter: alpha(opacity = 70); opacity: 0.7; position: absolute; display: block; background-color: #000000; top: 0px; left: 0px; width: 100%; height: 403px;">
										</div>
										<div
											style="position: absolute; display: block; background: url(../img/loading.gif) no-repeat center center; top: 0px; left: 0px; width: 100%;">
										</div>
									</div>
	
									<!-- Slides Container -->
									<div u="slides" style="cursor: move; position: absolute; left: 240px; top: 0px; width: 690px; height: 403px; overflow: hidden;">
								<%
									sb.setLength(0);
								 	list= Itbl_Entity.Home_getContentMain_accordingToProduct(2,10);  //1: interior
									for(int i=1; i < list.size(); i++){
										String[] arr = list.get(i).split(" --split-- ");
										/* System.out.println(arr[0]);  // thumb
										System.out.println(arr[1]); */  // gallery
										sb.append("<div><img u='image' src='"+ arr[1] +"' />");
										sb.append("<img u='thumb' src='"+ arr[0] +"' alt='' /></div>");
									}
									out.print(sb.toString());
								%>
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
			</div> <!-- them vao 2 -->
								<!-- Jssor Slider End -->
							</div>
							<div class="inner">
								<div class="wrapper">
									<span class="title img-indent3"> <a href="2" class="link_home_interior" style="text-decoration: none;">Nội thất</a></span>
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
 					</div> <!-- dong div divInt -->
 					</div>
 					
					<div class="div3">
							<div class="css-vertical-text-right">cascsacasc cascasc
								ascas</div>
						</div>
		</div>


					<div class="centerDiv">
						<div class="div1">
							<div class="css-vertical-text-left"> <a href="1" class="link_construction"  style="color: rgb(136, 34, 12);   text-decoration: none;">Văn Phòng</a ></div>
						</div>
						<div class="div2" >
									
							<div class="each-gallery" id="divCons" >
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
												<%
													sb.setLength(0);
													list= Itbl_Entity.Home_getContentMain_accordingToProduct(3,6);  //1: architecture
													for(int i=1; i < list.size(); i++){
														String[] arr = list.get(i).split(" --split-- ");
														/* System.out.println(arr[0]);  // thumb
														System.out.println(arr[1]); */  // gallery
														sb.append("<li><a class='thumb' href='"+ arr[1] +"' title=''>");
														sb.append("<img src='"+ arr[0] +"' alt='' /><span></span></a></li>");
													}
													out.print(sb.toString());
												%>
											</ul>
										</div>
							</div> <!-- them vao 1 -->
									</div>
									<div class="inner">
										<div class="wrapper">
											<span class="title img-indent3"><a href="1" class="link_home_construction"  style="text-decoration: none;">Thi công</a></span>
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
							</div>
						</div>
						<div class="div3">
							<div class="css-vertical-text-right">cascsacasc cascasc
								ascas</div>
						</div>
					</div>



		<div class="container_12" style="padding-left:30px; color: khaki;" >
	<div class="wrapper">
				<div class="introduce_company">
						<div style="width: 100%;float: left;">
						<div id="contact_header">LIÊN HỆ <a name="lien-he"></a> 
						<div class="spaceline"></div>
						</div>
					</div>	
							<div style="width: 413px;float: left; height: 120px;line-height: 27px;padding-left: 10px">
						                                                                                           <span style="text-transform: uppercase;"><strong>Công ty tư vấn thiết kế xây dựng Tín Đức</strong></span> <br>
Trụ sở: 943/22 Quang Trung - P.14- Gò Vấp- TP. HCM<br>
Vpđd: 915/27/13 Lê Văn Lương, x. Phước Kiển, h. Nhà Bè, TP. HCM<br>
Tel:  083. 37 84 00 84 - Fax: 083. 37 84 00 84<br>
Email:   <a href="mailto:contact@tda.vn">contact@tda.vn</a><div class="spaceline"></div>

					</div>
							</div>
							
							<div class="contact_company" style="margin-left: 40px;">
							
							<div style="width: 444px; float: left; line-height: 27px; padding: 0 16px 0 10px;">
								<br>
								<form action="" method="post" enctype="multipart/form-data">
									<input type="hidden" value="" id="mess">
									<div class="linecontact"></div>
									<div class="linecontact">
										<label>Họ và tên</label> <input name="txtfullname" value="">
										<label style="text-align: right; width: 83px;">Năm
											sinh</label> <input name="txtnamsinh"
											style="float: right; width: 135px;" value="">
									</div>
									<div class="linecontact">
										<label>Email</label> <input name="txtemail" value="">
										<label style="text-align: right; width: 83px;">Điện
											thoại</label> <input name="txtphone"
											style="float: right; width: 135px;" value="">
									</div>
									<div class="linecontact">
										<label>Địa chỉ</label> <input style="width: 366px"
											name="txtdiachi" value="">
									</div>
									<div class="linecontact">
										<label>Hướng</label> <select
											style="height: 22px; float: left; margin-left: 5px; padding: 1px;"
											name="txthuong">
											<option style="padding: 1px;" value="-">(Hướng nhà)</option>
											<option style="padding: 1px;" value="Nam">Nam</option>
											<option style="padding: 1px;" value="Tây Nam">Tây
												Nam</option>
											<option style="padding: 1px;" value="Tây">Tây</option>
											<option style="padding: 1px;" value="Tây Bắc">Tây
												Bắc</option>
											<option style="padding: 1px;" value="Bắc">Bắc</option>
											<option style="padding: 1px;" value="Đông Bắc">Đông
												Bắc</option>
											<option style="padding: 1px;" value="Đông">Đông</option>
											<option style="padding: 1px;" value="Đông Nam">Đông
												Nam</option>
										</select>
										<!--
							<input style="width: 60px" name="txthuong" value=""/>
							-->
										<label style="text-align: right">Dài (m)</label> <input
											style="width: 50px" name="txtdai" value=""> <label
											style="text-align: right; width: 60px;">Rộng (m)</label> <input
											style="width: 60px; float: right" name="txtrong" value="">
									</div>
									<div class="linecontact">
										<label style="text-align: left">Số tầng</label> <input
											name="txtsotang" style="width: 80px; float: left" value="">
										<label style="width: 210px; text-align: right">Phòng
											ngủ</label> <input name="txtphongngu"
											style="width: 60px; float: right" value="">
									</div>
									<div class="linecontact">
										<label>Nội dung</label>
										<textarea style="margin-left: 5px; width: 364px" rows="5"
											cols="40" name="txtchitiet"></textarea>
									</div>
									<div>
										Vui lòng gửi bảng vẽ theo file đính kèm (tối đa 2.5Mb):
										<div class="spaceline"></div>
									</div>
									<div style="margin: 10px 0 10px 0" class="linecontact">
										<label>Đính kèm</label> <input size="35" type="file"
											name="dinhkem"> <input class="button"
											style="padding: 1px; margin-top: 1px; float: right; width: 50px;"
											type="submit" value="Gửi" name="txtgui">
									</div>

								</form>
							</div>
				 </div></div>
		</div>


						<div class="container_12">
		<div class="wrapper">
			<article class="grid_12">
				<h3 class="color-1">Dịch Vụ</h3>
				<div class="wrapper">
					<article class="grid_6 alpha">
						<figure class="img-indent frame">
							<img src="images/page1-img1.jpg" alt="" />
						</figure>
						<div class="extra-wrap">
							<div class="indent-top">
								<ul class="list-1">
									<li><a href="#">Trang Trí Nội Thất</a></li>
									<li class="last"><a href="#">Phối Màu Nền </a></li>
								</ul>
							</div>
						</div>
						<div class="clear"></div>
					</article>
					<article class="grid_6 omega">
						<figure class="img-indent frame">
							<img src="images/page1-img2.jpg" alt="" />
						</figure>
						<div class="extra-wrap">
							<div class="indent-top">
								<ul class="list-1">
									<li><a href="#">Tư Vấn Thiết Kế <br> Cao Cấp
									</a></li>
									<li class="last"><a href="#">Đội Ngũ Kỹ Sư <br>
											Chuyên Nghiệp
									</a></li>
								</ul>
							</div>
						</div>
						<div class="clear"></div>
					</article>
				</div>
			</article>
		</div>
	</div>
	
						</div> <!-- main end-->
					</div>  <!-- bg-top-shadow end-->
		</div>  <!-- bg end -->
	</div><!--  bg-top-2 end-->
</div> <!-- bg-top end --> 


<script type="text/javascript">
	$(window).load(function() {
		// We only want these styles applied when javascript is enabled
		$('div.navigation').css({
			'width' : '320px',
			'float' : 'right'
		});
		$('div.content').css('display', 'block');

 		$(".each-gallery").each(function(i) {
			// Initially set opacity on thumbs and add
			// additional styling for hover effect on thumbs
			var onMouseOutOpacity = 0.5;
			$('#thumbs + i + ul.thumbs li span').opacityrollover({
				mouseOutOpacity : onMouseOutOpacity,
				mouseOverOpacity : 0.0,
				fadeSpeed : 'fast',
				exemptionSelector : '.selected'
			});

			// Initialize Advanced Galleriffic Gallery
			var gallery = $('#thumbs' + i).galleriffic({
				delay : 7000,
				numThumbs : 12,
				preloadAhead : 6,
				enableTopPager : false,
				enableBottomPager : false,
				imageContainerSel : '#slideshow' + i,
				controlsContainerSel : '',
				captionContainerSel : '',
				loadingContainerSel : '',
				renderSSControls : true,
				renderNavControls : true,
				playLinkText : 'Play Slideshow',
				pauseLinkText : 'Pause Slideshow',
				prevLinkText : 'Prev',
				nextLinkText : 'Next',
				nextPageLinkText : 'Next',
				prevPageLinkText : 'Prev',
				enableHistory : true,
				autoStart : 7000,
				syncTransitions : true,
				defaultTransitionDuration : 900,
				onSlideChange : function(prevIndex, nextIndex) {
					// 'this' refers to the gallery, which is an extension of $('#thumbs')
					this.find('ul.thumbs li span').css({
						opacity : 0.5
					});
				},
			 	onPageTransitionOut : function(callback) {
					this.find('ul.thumbs li span').css({
						display : 'block'
					});
				},
				onPageTransitionIn : function() {
					this.find('ul.thumbs li span').css({
						display : 'none'
					});
				} 
			});
		}); 
	});
</script>

 <input type = "hidden" id="link_kientruc" name="link_kientruc">