<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
 <head>
    <meta charset="utf-8"/>
    <link rel="stylesheet" type="text/css" href="/css/admin.css">
    
 </head>
 <body>
   <header>
   	  <img src="/images/adminTit.png">
   	 <div class="loginState"><span >${user.username },你好！&nbsp;|</span><a href="/logout">&nbsp;注销</a></div>
   </header>
   <div class="content">
     <div class="left">
     	<ul>
     		<li>
     			<a href="/teacher.adm" class="menu-item" target="bottom">教师管理</a>
     		</li>
     		<li>
     			<a href="/student.adm" class="menu-item" target="bottom">学生管理</a>
     		</li>
     		<li>
     			<a href="/nI.adm" class="menu-item" target="bottom">条目管理</a>
     		</li>
     		<li>
     			<a href="/news.adm" class="menu-item" target="bottom">新闻管理</a>
     		</li>
     	</ul>
     </div>
     <div class="right" >
     	<iframe frameborder="0" scrolling="no" name="bottom" src="/teacher.adm"></iframe>
     </div>
     
   	
   </div>
   <footer>
   	  <span>@版权所有：大连理工大学软件学院</span>
   	  <br><br>
   	  <span>高思实验室</span>
   </footer>
 </body>
</html>