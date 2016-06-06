<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<link rel="stylesheet" type="text/css" href="/css/nIList.css">
<title></title>
</head>
<body>
	<a href="/studentForm.fm" class="op">添加</a>
	<a class="op" onclick="del.submit()">删除选中条目</a>

    <br><br>
	<form action="/student/delete" method="post" class="asyn-form" id="del">
	<table>
		<tr><th>用户名</th><th>名字</th><th>邮箱</th><th></th><th></th></tr>
		<c:forEach  var="ele" items="${pb.data }">
		<%-- <c:if test="${empty ele.reqUrl }"> --%>
			<tr>
			<td>${ele.username}</td>
			<td>${ele.name}</td>
			<td>${ele.email }</td>
			<%-- <td>${ele.name }</td> --%>
			<%-- <td><a href="/nI/nIForm/${ele.id }.fm">编辑</a></td> --%>
			<td><input type="checkbox" name="id" value="${ele.username}"></td>
			<td><a href="/student/studentForm/${ele.username }.fm">编辑</a></td>
			<%-- <td><a href="/nI/download/${ele.id }">下载</a> --%>
			</tr>
		<%-- </c:if> --%>
		</c:forEach>
	</table>
	
	</form>
</body>
</html>