<%@page import="org.expc.setting.Constant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
	<title>大连理工大学软件学院实验中心</title>
	<meta charset="utf-8">
	<link rel="stylesheet" href="/css/bootstrap.css">
	<link rel="stylesheet" href="/css/index.css">
	<link rel="stylesheet" href="/css/style.css">
</head>
<body class="myBody">
  <jsp:include page="/header.jsp" flush="true"></jsp:include>
  <!-- 主要内容 -->
  <div class="myContainer">
  	   
         <div class="content">
           <div class="con-first con">
               <!--<div class="container">-->
                   <div class="row">
                       <div class="col-md-5">
                           <video src="images/zxjj.mp4" autoplay="autoplay" controls="controls">
                           </video>
                       </div>
                       <div class="col-md-5" id="news-list">
                       </div>
                       <div class="col-md-2">
                       <div>
                               <div class="title"><a href="">登录</a></div>
                              <form class="asyncForm" >
                                <input type="text" class="form-control username" placeholder="Username" name="username" required>
                                <input type="password" class="form-control password" placeholder="Password" name="password" required>     
                               
                                <label><input class="select" type="radio" name="role" value="teacher" required>&nbsp;教师</label>
                                <label><input type="radio" name="role" value="student" required>&nbsp;学生</label>
                                <label><input type="radio" name="role" value="admin" required>&nbsp;管理员</label>
 	                              <br>    
                                           
                                <button type="button" onclick="asy($('.asyncForm'))">登录</button>
                             </form> 
                           </div>
                           
                       </div>
                   </div>
               <!--</div>-->
           </div>

           <div class="con-sec con">
               <!--<div class="container">-->
                   <div class="row">
                       
                       <div class="col-md-5">
                           <div>
                               <div class="title"><a>中心简介</a><a href="/010100.htm" class='more'>more&nbsp;&raquo;</a></div>
                               <div class="intro" limit="175">&nbsp;&nbsp;
                               </div>
                               
                           </div>
                       </div>

                       <div class="col-md-5">
                           <div>
                               <div class="title"><a >实验课程</a><a href="/030401.htm" class='more'>more&nbsp;&raquo;</a></div>
                               <p><a href="/030401.htm">网络综合实验</a><a style="float:right;" href="/030401.htm">网络综合实验</a></p>
                               <p><a href="/030401.htm">网络信息安全实验</a><a style="float:right;" href="/030401.htm">网络信息安全</a></p>
                               <p><a href="/030401.htm">计算机组成原理实验</a><a style="float:right;" href="/030401.htm">计算机组成原理</a></p>
                               <p><a href="/030402.htm">数字与模拟电路</a><a style="float:right;" href="/030401.htm">大学物理</a></p>
                               <p><a href="/030402.htm">大学物理</a><a style="float:right;" href="/030401.htm">网络综合实验</a></p>
                               <p><a href="/030402.htm">嵌入式综合实验</a><a style="float:right;" href="/030401.htm">网络综合实验</a></p>
                               
                           </div>
                       </div>

                       <div class="col-md-2">
                           <div>
                             <div class="fastR">
                              <a href="">虚拟实验平台</a>
                             </div>
                             
                             <div class="fastR">
                              <a href="">开放实验室预约</a>
                             </div>
                             
                             <br>
                             <h5>联系我们</h5>
                               <img src="/images/two.png" >
                           </div>
                       </div>
                   </div>
               <!--</div>-->
           </div>

           <div class="con-thir con">
               <!--<div class="container">-->
                   <div class="row">
                       <div class="col-md-12 ">
                            <div id="demo">
                            <div class="demo">
                             	<div id="demo1">
                             		<a href="/news/2.htm"><img src="/images/img1.png"></a>
                             		<a href="/news/3.htm"><img src="/images/img2.png"></a>
                                <a href="/news/4.htm"><img src="/images/img3.png"></a>
                                <a href="/news/5.htm"><img src="/images/img4.png"></a>
                                <a href="/news/6.htm"><img src="/images/img1.png"></a>

                             	</div>
                             	
                            <div id="demo2"></div>
                           </div>
                            </div>
                       </div>
                       
                   </div>
               <!--</div>-->
           </div>

           <div class="con-fif">
                <div class="row">
                    <div class="con-fif-picture"><div>
                     <a href="http://sei.dlut.edu.cn/"> <img src="/images/lg2.png"></a>
                     <a href="http://drise.dlut.edu.cn/"><img src="/images/link1.png"></a>
                     <a href="http://www.lib.dlut.edu.cn/"><img src="/images/lg3.png"></a>
                     <a href="http://www.dlut.edu.cn/"><img src="/images/lg4.png"></a>
                     <a href="http://ssdut.dlut.edu.cn/index.htm"><img src="/images/lg5.png"></a>
                    </div></div>
                    
                </div>
           </div>


      </div>
  </div>
	<jsp:include page="/footer.jsp" flush="true"></jsp:include>
    <script type="text/javascript" src="/js/jquery-2.2.2.min.js"></script>
	<script type="text/javascript" src="/js/bootstrap.min.js"></script>
	<script type="text/javascript" src="/js/common.js"></script>
	 <script type="text/javascript" src="/js/index.js"></script>
</body>
</html> 