<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
<script type="text/javascript">
$(document).ready(function(){
	$("#btnDelete").on("click", function() {
		if (confirm("삭제하시겠습니까?")) {
			document.form.action = "${path}/board/delete";
			document.form.submit();
		}
	});
	
	$("#btnUpdate").on("click", function() {
		var title = $("#title").val();
		var content = $("#content").val();
		var writer = $("#username").val();
		
		if (title == "") {
			alert("제목을 입력하세요");
			document.form.title.focus();
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
<h1>게시글 보기</h1>
<form name="form" action="update">
<div>
작성 일자 : <fmt:formatDate value="${dto.regdate }" pattern="yyyy-MM-dd HH:mm:ss"/>
</div>
<div>
조회수 : ${dto.viewcnt }
</div>
<div>
제목 : <input name="title" id="title" size="80" value="${dto.title }" placeholder="제목을 입력하세요.">
</div>
<div>
내용 : <textarea name="content" id="content" rows="4" cols="80" placeholder="내용을 입력하세요.">${dto.content }</textarea>
</div>
<div>
이름 : <input name="username" id="username" value="${dto.username }" placeholder="이름을 입력하세요.">
</div>
<div style="width:650px; text-align:center;">
<input type="hidden" name="bno" value="${dto.bno }">
<button id="btnUpdate">수정</button>
<button id="btnDelete">삭제</button>
</div>
</form>

</body>

</html>