<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript">
$(document).ready(function(){
	
	$("#btnSave").on("click", function() {
		var title = $("#title").val();
		var content = $("#content").val();
		var username = $("#username").val();
		
		if (title == "") {
			alert("제목을 입력하세요");
			$("#title").focus();
			//document.form.title.focus();
			return;
		}
		if (content == "") {
			alert("내용을 입력하세요");
			document.form.content.focus();
			return;
		}
		if (username == "") {
			alert("이름을 입력하세요");
			document.form.username.focus();
			return;
		}
		document.form.submit();
	})	
})

</script>
</head>
<body>
<h1>게시글 작성</h1>
<form name="form" action="insert">
<div>
제목 : <input name="title" id="title" size="80" value="" placeholder="제목을 입력하세요.">
</div>
<div>
내용 : <textarea name="content" id="content" rows="4" cols="80" placeholder="내용을 입력하세요.">${dto.content }</textarea>
</div>
<div>
이름 : <input name="username" id="username" value="" placeholder="이름을 입력하세요.">
</div>
<div style="width:650px; text-align:center;">
<button id="btnSave">확인</button>
<button id="reset">취소</button>
</div>
</form>
</body>
</html>