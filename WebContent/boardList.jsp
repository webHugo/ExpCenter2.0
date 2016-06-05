<%@page import="org.expc.setting.Constant"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%> 
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
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
		<div class="right le-right1">-
			<div class="position">
				<span>当前位置-</span><a href="/board/1/0.htm">中心动态 ></a><a href="">中心新闻</a>
			</div>
			<hr></hr>
			<div>
			<c:forEach var="ele" items="${pb.data }" > 
			<p>
			<a href="/news/${ele.id }.htm">${ele.title }</a>
			<span><fmt:formatDate value="${ele.time }" pattern="[yyyy/MM/dd]"/></span>
			</p>
			</c:forEach>
			</div>
			<a href="/news/1/0.htm">第一页</a>
			<a href="/news/${pb.prePage }/0.htm">前一页</a>
			<span>${pb.pageIndex }/${pb.mxIndex }</span>
			<a href="/news/${pb.nextPage }/0.htm">后一页</a>
			<a href="/news/${pb.mxIndex }/0.htm">最后一页</a>
		</div>
	</div>
</body>
</html>