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
	
	<form action ='/news/${(empty action)?"add":"modify"}' method="post"  role="form" 
	class="form-horizontal asyn-form" >
		
			<label >id</label>
			<input name="id"  class="form-control" value="${ ele.id}" required>&nbsp;&nbsp;
		
		
			<label >发布人</label>
			<input name="publisher"  class="form-control" value="${ele.publisher }" required>&nbsp;&nbsp;
		
		
			<label >备注</label>
			<input name="remark"  class="form-control"  value="${ele.remark }">
		
		<br><br>内容</label><br><br>
			<textarea name="content" id="content" >${ele.content }</textarea>
		<br>
		
		
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
	})
	</script>
</body>
</html>