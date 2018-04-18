<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:if test="${empty sessionScope.tbl_qt.user_admin}">
	<jsp:forward page="../403.jsp"></jsp:forward>
</c:if>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
	<title>Quản lý sản phẩm</title>
</head>
<body>

</body>
</html>