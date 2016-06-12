<%@page import="org.expc.setting.Constant"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
	
	<form action ='/news/${(empty action)?"add":"modify"}' method="post"  role="form" 
	class="form-horizontal asyn-form" >
		<c:if test="${!(empty action) }">
			<input name="id" type="hidden" value="${ele.id }">
			<%-- <input name="time" type="hidden" value="${ele.time }"> --%>
			<input name="publisher" type="hidden" value="${ele.publisher }">
		</c:if>
		<label >标题</label>
		<input name="title"  class="form-control"  value="${ele.title }">
		<label >副标题</label>
		<input name="subTitle"  class="form-control"  value="${ele.subTitle }">	
		<label >种类</label>
		<input name="cate"  class="form-control"  value="${ele.cate }">	
		<label >来源</label>
		<input name="refSource"  class="form-control"  value="${ele.refSource }">	
		<label >关键词</label>
		<input name="keyWords"  class="form-control"  value="${ele.keyWords }">	
		<label >备注</label>
		<input name="remark"  class="form-control"  value="${ele.remark }">
		<label >摘要</label>
		<input name="summary"  class="form-control"  value="${ele.summary }">
		<label>置顶级别</label>	
		<select name="stickieLevel" >
			<option >1</option>
			<option>2</option>
		</select>
		<label>滚动级别</label>
		<select name="rollLevel" >
			<option >1</option>
		</select>
		<br><br><label>内容</label><br><br>
			<textarea name="content" id="content" >${ele.content }</textarea>
		<br>
		<input name="imgUri" class="form-control" placeholder="请选择缩略图路径" id="newspic" value="${ele.imgUri }"required >
        <input type="button" value="选择图片" onclick="BrowseServer('newspic');"/>
		
		<button type="submit" class="btn btn-default" style="float:none">提交</button>
		
	</form>
	<script type="text/javascript">
	var editor=CKEDITOR.replace( 'content', {
 	    filebrowserBrowseUrl: '/ckfinder/ckfinder.html',
 	    filebrowserImageBrowseUrl: '/ckfinder/ckfinder.html?Type=Images',
 	    filebrowserFlashBrowseUrl: '/ckfinder/ckfinder.html?Type=Flash',
 	    filebrowserUploadUrl: '/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Files',
 	    filebrowserImageUploadUrl: '/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Images',
 	    filebrowserFlashUploadUrl: '/ckfinder/core/connector/java/connector.java?command=QuickUpload&type=Flash'
 	});
	var myid;
	 function BrowseServer(id)
     {
     	// You can use the "CKFinder" class to render CKFinder in a page:
     	var finder = new CKFinder();
     	//finder.basePath = '.';	// The path for the installation of CKFinder (default = "/ckfinder/").
     	myid=id;
     	finder.selectActionFunction = SetFileField;
     	finder.popup();

     	// It can also be done in a single line, calling the "static"
     	// popup( basePath, width, height, selectFunction ) function:
     	// CKFinder.popup( '../', null, null, SetFileField ) ;
     	//
     	// The "popup" function can also accept an object as the only argument.
     	// CKFinder.popup( { basePath : '../', selectActionFunction : SetFileField } ) ;
     }

     function SetFileField( fileUrl)
     {
     	document.getElementById(myid).value = fileUrl;
     }
     var msg = '${msg}';
     if(msg!='') alert(msg);
	</script>
</body>
</html>