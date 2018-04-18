<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<html>
<head>
<title>${tintuc.name_tintuc}</title>

</head>

<body>
	<div class="chitiet_tintuc">
		<h1><div class="tieude_tintuc">${tintuc.name_tintuc}</div></h1>
		<h2><div class="tomtat_tintuc">${tintuc.summary_tintuc}</div></h2>
		<div class="noidung_tintuc">${tintuc.content_tintuc}</div>
		<br> <br>
		<div id="fb-root"></div>
		<script>
			(function(d, s, id) {
				var js, fjs = d.getElementsByTagName(s)[0];
				if (d.getElementById(id))
					return;
				js = d.createElement(s);
				js.id = id;
				js.src = "//connect.facebook.net/en_US/sdk.js#xfbml=1&version=v2.0";
				fjs.parentNode.insertBefore(js, fjs);
			}(document, 'script', 'facebook-jssdk'));
		</script>
		<div class="fb-like" data-href="http://bvtv.com.vn/eventweb/"
			data-layout="button_count" data-action="like" data-show-faces="true"
			data-share="true"></div>
		<br><br>
		<div class="fb-comments" data-href="http://bvtv.com.vn/eventweb/"
			data-numposts="5" data-colorscheme="light"></div>
	</div>
</body>
</html>