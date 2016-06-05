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
                              <form action="/login">
                                <input type="text" class="form-control username" placeholder="Username" name="username">
                                <input type="password" class="form-control password" placeholder="Password" name="password">     
                               
                                <label><input class="select" type="radio" name="role" value="teacher"/>&nbsp;教师</label>
                                <label><input type="radio" name="role" value="student"/>&nbsp;学生</label>
                                <label><input type="radio" name="role" value="admin"/>&nbsp;管理员</label>
 	                              <br>    
                                           
                                <button><a>登录</a></button>
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
                               <div class="title"><a href="">中心简介</a></div>
                               <p><a href="">&nbsp;&nbsp;大连理工大学实验中心成立于2016年1月，由原来的软件学院信</a></p>
                               <p><a href="">息中心和软件机房合并而成。2013年获辽宁升级实验教学中心示</a></p>
                               <p><a href="">息中心和软件机房合并而成。2013年获辽宁升级实验教学中心示</a></p>
                               <p><a href="">息中心和软件机房合并而成。2013年获辽宁升级实验教学中心示</a></p>
                               <p><a href="">息中心和软件机房合并而成。2013年获辽宁升级实验教学中心示</a></p>
                               <p><a href="">息中心和软件机房合并而成。2013年获辽宁升级实……<span>[详细]</span></a></p>
                           </div>
                       </div>

                       <div class="col-md-5">
                           <div>
                               <div class="title"><a href="">实验课程</a></div>
                               <p><a href="">第十三届科技文化节启动通知……</a><span>[2016/03/05]</span></a></p>
                               <p><a href="">第十三届科技文化节启动通知……</a><span>[2016/03/05]</span></a></p>
                               <p><a href="">第十三届科技文化节启动通知……</a><span>[2016/03/05]</span></a></p>
                               <p><a href="">第十三届科技文化节启动通知……</a><span>[2016/03/05]</span></a></p>
                               <p><a href="">第十三届科技文化节启动通知……</a><span>[2016/03/05]</span></a></p>
                               <p><a href="">第十三届科技文化节启动通知……</a><span>[2016/03/05]</span></a></p>
                               
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
                             		<a href=""><img src="/images/img1.png"></a>
                             		<a href=""><img src="/images/img2.png"></a>
                                <a href=""><img src="/images/img3.png"></a>
                                <a href=""><img src="/images/img4.png"></a>
                                <a href=""><img src="/images/img1.png"></a>

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
                      <img src="/images/link1.png">
                      <img src="/images/link1.png">
                      <img src="/images/link1.png">
                      <img src="/images/link1.png">
                      <img src="/images/link1.png">
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