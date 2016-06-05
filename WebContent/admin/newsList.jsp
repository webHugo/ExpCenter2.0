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
	<a href="/newsForm.fm" class="op">添加</a>
	<a class="op" onclick="del.submit()">删除选中条目</a>

    <br><br>
	<form action="/news/delete" method="post" class="asyn-form" id="del">
	<table>
		<tr><th>内容</th><th>标题</th><th>发布人</th><th>发布时间</th></tr>
		<c:forEach  var="ele" items="${pb.data }">

			<tr>
			<td>${ele.content}</td>
			<td>${ele.title}</td>
			<td>${ele.publisher }</td>
			<td>${ele.time }</td>
			<td><input type="checkbox" name="id" value="${ele.id }"></td>
			<td><a href="/news/newsForm/${ele.id }.fm">编辑</a></td>
			
	
			</tr>

		</c:forEach>
	</table>
	
	</form>
</body>
</html>