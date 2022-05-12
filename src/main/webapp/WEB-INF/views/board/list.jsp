<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">

<!-- Mobile Metas -->
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- Site Metas -->
<title>ThewayShop - Ecommerce Bootstrap 4 HTML Template</title>
<meta name="keywords" content="">
<meta name="description" content="">
<meta name="author" content="">

<!-- Site Icons -->
<link rel="shortcut icon" href="images/favicon.ico" type="image/x-icon">
<link rel="apple-touch-icon" href="images/apple-touch-icon.png">

<!-- Bootstrap CSS -->
<link rel="stylesheet" href="css/bootstrap.min.css">
<!-- Site CSS -->
<link rel="stylesheet" href="css/style.css">
<!-- Responsive CSS -->
<link rel="stylesheet" href="css/responsive.css">
<!-- Custom CSS -->
<link rel="stylesheet" href="css/custom.css">
</head>
<body>
	<div class="col-xl-3 col-lg-3 col-sm-12 col-xs-12 sidebar-shop-left" align="left" style = "width: 200px" >
		<div class="product-categori">
			<div class="filter-sidebar-left">
				<div class="title-left">
					<h3>게시판</h3>
				</div>
				<div
					class="list-group list-group-collapse list-group-sm list-group-tree"
					id="list-group-men" data-children=".sub-men" >
					<div class="list-group-collapse sub-men">
						<a class="list-group-item list-group-item-action" href="#sub-men1"
							data-toggle="collapse" aria-expanded="true"
							aria-controls="sub-men1">게시판 <small class="text-muted">(100)</small>
						</a>
						<div class="collapse show" id="sub-men1"
							data-parent="#list-group-men">
							<div class="list-group">
								<a href="#"
									class="list-group-item list-group-item-action active">공지사항
									<small class="text-muted">(50)</small>
								</a> <a href="#" class="list-group-item list-group-item-action">자유게시판
									<small class="text-muted">(10)</small>
								</a>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>
	<div class="wishlist-box-main" style = "width:100%" align = "left" >
		<div class="container">
			<div class="row">
				<div class="col-lg-12">
					<div class="table-main table-responsive">
					<h1>공지사항</h1>
						<table class="table">
							<thead>
								<tr>
									<th>NO</th>
									<th>작성자</th>
									<th>제목</th>
									<th>작성일</th>
									<th>조회수</th>
								</tr>
							</thead>
							<c:forEach var="row" items="${list }">
								<tr>
									<td>${row.bno }</td>
									<td>${row.username }</td>
									<td><a href="${path }/board/view?bno=${row.bno }">${row.title }</a></td>
									<td><fmt:formatDate value="${row.regdate }"
											pattern="yyyy-MM-dd HH:mm:ss" /></td>
									<td>${row.viewcnt }</td>
								</tr>
							</c:forEach>
						</table>
					</div>
				</div>
			</div>
		</div>
	</div>

	<a href="write">글쓰기</a>
</body>
</html>