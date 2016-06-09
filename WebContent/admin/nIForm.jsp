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
	
	<form action ='/nI/${(empty action)?"addWithFile":"modifyWithFile"}' method="post"  role="form" 
	class="form-horizontal asyn-form" enctype="multipart/form-data"  >
		
			<label >条目标识</label>
			<input name="id"  class="form-control" value="${ ele.id}" required>&nbsp;&nbsp;
		
		
			<label >条目名称</label>
			<input name="name"  class="form-control" value="${ele.name }" required>&nbsp;&nbsp;
		
		
			<label >条目备注</label>
			<input name="remark"  class="form-control"  value="${ele.remark }">
		
		<br><br>
			<label >条目内容</label><br><br>
			<textarea name="content" id="content" >${ele.content }</textarea>
			<input name="text" type="hidden">
		<br>
		
		<a class="a-upload">
           <input type="file" name="htmlFile">点击这里上传文件
        </a>
        <span class="showFileName">文件名称</span>
		<button type="submit" class="btn btn-default">提交</button>
		
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
	$(".a-upload").on("change","input[type='file']",function(){
	    var filePath=$(this).val();
	    if(filePath.indexOf("doc")!=-1 || filePath.indexOf("html")!=-1){
	        //$(".fileerrorTip").html("").hide();
	        var arr=filePath.split('\\');
	        var fileName=arr[arr.length-1];
	        $(".showFileName").html(fileName);
	    }else{
	        $(".showFileName").html("上传错误！");
	       
	        return false 
	    }
	});
	$('.asyn-form').submit(function()
	{
		$('input[name="text"]').val(editor.document.getBody().getText());
	});
	var msg = '${msg}';
    if(msg!='') alert(msg);
	</script>
</body>
</html>