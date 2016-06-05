<%@page import="org.expc.setting.Constant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=Constant.projectTitle %></title>
<script type="text/javascript" src="/js/jquery-2.2.2.min.js"></script>

<script src="/ckeditor/ckeditor.js"></script>
<script src="/ckfinder/ckfinder.js"></script>
<link rel="stylesheet" type="text/css" href="/css/nIList.css">
</head>
<body>
	
	<form action ='/teacher/${(empty action)?"add":"modify"}' method="post"  role="form" 
	class="form-horizontal asyn-form">
		
			<label >用户名</label>
			<input name="username"  class="form-control" value="${ele.username}" required>&nbsp;&nbsp;
		
		
			<label >名字</label>
			<input name="name"  class="form-control" value="${ele.username }" required>&nbsp;&nbsp;
		
		
			<label >邮箱</label>
			<input name="email"  class="form-control"  value="${ele.email }">
		<br>
		<br>
			<label >密码</label>&nbsp;&nbsp;
			<input name="password"  class="form-control"  value="${ele.password }">
			<label >信息</label>&nbsp;&nbsp;
			<input name="intro"  class="form-control"  value="${ele.intro }">
		
		&nbsp;&nbsp;&nbsp;&nbsp;<button type="submit" class="btn btn-default" style="float:none;">提交</button>
		
	</form>
</body>
</html>