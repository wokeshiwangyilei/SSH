<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<% 
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ request.getContextPath() + "/";
%>

<!DOCTYPE HTML>
<html>
<head>
<base href="<%=basePath%>">

<jsp:include page="link.jsp"></jsp:include>

</head>
<body>
<jsp:include page="head.jsp"></jsp:include>

<jsp:include page="sider.jsp"></jsp:include>

<jsp:include page="center.jsp"></jsp:include>
</body>
</html>