<%@page import="org.expc.setting.Constant"%>
<%@page import="java.net.URLEncoder"%>
<%@page import="org.expc.util.FileUtil"%>
<%@page import="java.io.File"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><%=Constant.projectTitle %></title>
<style type="text/css">
	.mylink{
	display :block;
	}
</style>
<script type="text/javascript" src="/js/jquery-2.2.2.min.js"></script>
<script type="text/javascript">
  var $input="<input type='text' name='name'/>";
  var $submit="<input type='submit' value='确定'/>";
  var flag=false;
$(function(){
  $(".createFile").click(function(){
	  
	  if(flag==false){
    $(".formCreate").append($input);
    $(".formCreate").append($submit);
	  }
    flag=true;
  })
});
</script>
</head>
<body>
<a class="op" onclick="del.submit()">删除选中条目</a>
<form action="/file/delete" id="del">
<input type="hidden" name="servletPath" value="${servletPath}"/>

	<%
	File[] files=(File[])request.getAttribute("files");

	if(files!=null) for(File f:files){
	%>
	<%if(f.isDirectory()) {%>
		<a href='<%=request.getContextPath()%>/file/list?servletPath=${servletPath}/<%=f.getName() %>' class="dir mylink" ><%=f.getName() %></a>
		<input type="checkbox" name="fileNames" value="<%=f.getName() %>">
	<%}else if(FileUtil.isVideo(f)){%>
		<a href='<%=request.getContextPath()%>/player.jsp?playsrc=courseFile/${servletPath}/<%=f.getName() %>' class="video mylink" ><%=f.getName() %></a>
	<a href="<%=request.getContextPath()%>/file/download?servletPath=/${servletPath}/<%=f.getName() %>">下载</a>
	<input type="checkbox" name="fileNames" value="<%=f.getName() %>">
	<%}else if(FileUtil.isPdf(f)){%>
	
	<a href='<%=request.getContextPath()%>/courseFile/${servletPath}/<%=f.getName() %>' class="pdf mylink"><%=f.getName() %></a>
	<a href="<%=request.getContextPath()%>/file/download?servletPath=/${servletPath}/<%=f.getName() %>">下载</a>
	<input type="checkbox" name="fileNames" value="<%=f.getName() %>">
	<%}else{%>
	<a href='<%=request.getContextPath()%>/file/download?servletPath=${servletPath }/<%=f.getName() %>' class="download mylink"><%=f.getName() %></a>
	<a href="<%=request.getContextPath()%>/file/download?servletPath=/${servletPath}/<%=f.getName() %>">下载</a>
	<input type="checkbox" name="fileNames" value="<%=f.getName() %>">
	<%}} %>
</form>
	<button class="createFile">点击新建文件夹</button>
	<form action="/file/createFile" class="formCreate">
		<input type="hidden" value="${servletPath}" name="servletPath">
	</form>
	<form action="/file/preFile">
		<input type="hidden" value="${servletPath}" name="servletPath">
		<input type="submit" value="返回上一级">
	</form>
	
	<form action="/file/upload.do" method="post" enctype="multipart/form-data">
	<input type="hidden" value="${servletPath}" name="servletPath">
<input type="file" name="file1" /> 
<input type="submit" value="Submit" />
</form>
</body>

</html>