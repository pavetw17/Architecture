<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<script type="text/javascript">
function clearText(field)
{
    if (field.defaultValue == field.value) field.value = '';
    else if (field.value == '') field.value = field.defaultValue;
}
</script>
	
<div class="row-1">
	<div class="main">
		<div class="container_12">
			<div class="grid_12">
				<nav>
					<ul class="menu">
						<li>
							<a href="<%=request.getContextPath()%>"> Trang chủ </a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/muc/gioi-thieu"> Giới thiệu </a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/muc/cong-trinh"> Công trình </a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/muc/dich-vu"> Dịch vụ </a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/muc/tu-van"> Tư vấn </a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/muc/gioi-thieu"> Tin tức </a>
						</li>
						<li>
							<a href="<%=request.getContextPath()%>/muc/lien-he"> Liên hệ </a>
						</li>
					</ul>
				</nav>
			</div>
		</div>
		<div class="clear"></div>
	</div>
</div>

<div class="row-2"> 
	<div class="main">
		<div class="container_12">
			<div class="grid_9">
				<h1>
					<a class="logo" href="<%=request.getContextPath()%>">Int<strong>e</strong>rior</a>
					<span>Design</span>
				</h1>
			</div>
			<div class="grid_3">
                    	<form id="search-form" method="post" enctype="multipart/form-data">
                            <fieldset>	
                                <div class="search-field">
                                    <input name="search" type="text" onfocus="clearText(this)" onblur="clearText(this)" value="Nhập giá trị cần tìm...">
                                    <a class="search-button" href="#" ><span>search</span></a>	
                                </div>						
                            </fieldset>
                        </form>
               </div>
               <div class="clear"></div>
		</div>
	</div>
</div>