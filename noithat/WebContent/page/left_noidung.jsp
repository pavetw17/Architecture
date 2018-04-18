<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
	
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/styles_left.css" type="text/css" />
<script type="text/javascript" src="<%=request.getContextPath()%>/js/easyResponsiveTabs.js"></script>
<script type='text/javascript' src='<%=request.getContextPath()%>/js/script_left.js'></script>
<link rel="stylesheet" href="<%=request.getContextPath()%>/css/easy-responsive-tabs.css" type="text/css" /> 
<script type="text/javascript">

$(document).ready(function () {
 $('#horizontalTab').easyResponsiveTabs({
            type: 'default', //Types: default, vertical, accordion           
            width: 'auto', //auto or any width like 600px
            fit: true,   // 100% fit in a container
            closed: 'accordion', // Start closed if in accordion view
            activate: function(event) { // Callback function if tab is switched
                var $tab = $(this);
                var $info = $('#tabInfo');
                var $name = $('span', $info);

                $name.text($tab.text());

                $info.show();
            }
        });
});
</script>

<div id='cssmenu'>
<ul>
   <li class='active'></li>
   <li class='has-sub'><a href='#'><span>Products</span></a>
      <ul>
         <li><a href='#'><span>Product 1</span></a></li>
         <li><a href='#'><span>Product 2</span></a></li>
         <li class='last'><a href='#'><span>Product 3</span></a></li>
      </ul>
   </li>
   <li class='has-sub'><a href='#'><span>About</span></a>
      <ul>
         <li><a href='#'><span>Company</span></a></li>
         <li class='last'><a href='#'><span>Contact</span></a></li>
      </ul>
   </li>
   <li class='last'><a href='#'><span>Contact</span></a></li>
</ul>
</div>

<div class="wrapper"></div>
<br> <br>
<div class="widget">
<div id="horizontalTab">
            <ul class="resp-tabs-list">
                <li>Bài nổi bật</li>
                <li>Bài mới</li>
            </ul> 
            <div class="resp-tabs-container" >
                <div> <!-- div 1 start-->
					<div class="tabbed_content">
						<ul class="blog_posts_widget">
							<li class="blog_post"><a
								href="#">
									<img class="alignleft"
									src="=1"
									alt="Tư vấn thiết kế nhà 2 tầng đẹp hợp phong thủy"
									title="Tư vấn thiết kế nhà 2 tầng đẹp hợp phong thủy" />
							</a>
								<p>
									<a
										href="tu-van-thiet-ke/tu-van-thiet-ke-nha-2-tang-dep-hop-phong-thuy/index.html">Tư
										vấn thiết kế nhà 2 tầng đẹp hợp phong thủy</a>
								</p> <span class="pw_time">January 19, 2014</span></li>
						</ul>
					</div>
		</div> <!-- div 1 end -->
                <div>
                   <div class="tabbed_content">
						<ul class="blog_posts_widget">
							<li class="blog_post"><a
								href="#">
									<img class="alignleft"
									src="=1"
									alt="Tư vấn thiết kế nhà 2 tầng đẹp hợp phong thủy"
									title="Tư vấn thiết kế nhà 2 tầng đẹp hợp phong thủy" />
							</a>
								<p>
									<a
										href="tu-van-thiet-ke/tu-van-thiet-ke-nha-2-tang-dep-hop-phong-thuy/index.html">Tư
										vấn thiết kế nhà 2 tầng đẹp hợp phong thủy</a>
								</p> <span class="pw_time">January 19, 2014</span></li>
						</ul>
					</div>
				 <div id="Pagination" class="pagination"></div>	
						
                </div>
            </div>
        </div> 
</div>