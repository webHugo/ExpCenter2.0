<%@page import="org.expc.entity.NavItem"%>
<%@page import="org.expc.setting.Constant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<title><%=Constant.projectTitle %></title>
	<link rel="stylesheet" href="/css/bootstrap.css">
	<script type="text/javascript" src="/js/jquery-2.2.2.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<link rel="stylesheet" href="/css/index.css">
	<link rel="stylesheet" href="/css/style.css">
  <link rel="stylesheet" href="/css/style1.css">
</head>
<body class="myBody">
	
	<jsp:include page="/header.jsp" flush="true"></jsp:include>
    <div class="content"> 
      <jsp:include page="/zxdt.jsp"></jsp:include>
		<div class="right le-right1">
			<div class="position">
				<span>当前位置-</span><a href="/board/1/0.htm">中心动态 ></a><a href="">中心新闻</a>
			</div>
			<hr></hr>
			<h1>${ele.title }</h1>
			<div>
				<span><fmt:formatDate value="${ele.time }" pattern="yyyy年MM月dd日"/></span>&nbsp;&nbsp;&nbsp;
				<span>${ele.publisher }</span>
			</div>
			${ele.content }
		</div>
	</div>
	<jsp:include page="/footer.jsp" flush="true"></jsp:include>
</body>
</html>