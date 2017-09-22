<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://" + request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<base href="<%=basePath%>">

<link rel="icon" type="image/png" href=" img/favicon/favicon-96x96.png" sizes="96x96" />
<link rel="icon" type="image/png" href=" img/favicon/favicon-32x32.png" sizes="32x32" />
<link rel="icon" type="image/png" href=" img/favicon/favicon-16x16.png" sizes="16x16" />

<link rel="stylesheet" id="dv-css" href="static/css/styles.css" type="text/css" media="all">
<script type='text/javascript' src='static/js/functions.min.js' ></script>
