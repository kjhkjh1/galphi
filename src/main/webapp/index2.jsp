<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Galphi</title>
<link rel="stylesheet"
	href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
<script
	src="https://cdn.jsdelivr.net/npm/jquery@3.7.1/dist/jquery.slim.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>
<link href="./css/index2.css" rel="stylesheet" type="text/css">
</head>
<body>
	<header>
		<div class="wrapper">
			<div class="header">
				<div class="logo">
					<img src="./images/logo.jpeg" style="width: 230px; height: 120px;">
				</div>
				<form action="list.jsp" method="post" class="search-requirement">
					<div class="search">
						<select name="category">
							<option>제목</option>
							<option>저자</option>
							<option>제목 또는 저자</option>
						</select> <input id="search_text" type="text" placeholder="검색어를 입력하세요"
							name="item"> <input type="hidden" name="list"
							value="Search" /> <input id="search_button" type="submit"
							value="검색" />
					</div>
				</form>
				<div class="login">
					<button type="button" onclick="location.href='login'">로그인
						| 회원가입</button>
				</div>
			</div>
			<div class="main">
				<div class="Category">
					<button type="button" class="cate_list" onclick="cate_list(this);">카테고리</button>
					<div class="category">
						<li><a href="list.jsp?list=Novel">소설</a></li>
						<li><a href="list.jsp?list=Develop">자기개발</a></li>
						<li><a href="list.jsp?list=It">IT/컴퓨터</a></li>
						<li><a href="list.jsp?list=Child">아동</a></li>
						<li><a href="list.jsp?list=History">역사</a></li>
					</div>
					<script>
	               function cate_list(element) {
	                  var before = document.getElementsByClassName("active")[0] // 기존에 활성화된 버튼
	                  if (before
	                        && document.getElementsByClassName("active")[0] != element) { // 자신 이외에 이미 활성화된 버튼이 있으면
	                     before.nextElementSibling.style.maxHeight = null; // 기존에 펼쳐진 내용 접고
	                     before.classList.remove("active"); // 버튼 비활성화
	                  }
	                  element.classList.toggle("active"); // 활성화 여부 toggle
	
	                  var content = element.nextElementSibling;
	                  if (content.style.maxHeight != 0) { // 버튼 다음 요소가 펼쳐져 있으면
	                     content.style.maxHeight = null; // 접기
	                  } else {
	                     content.style.maxHeight = content.scrollHeight
	                           + "px"; // 접혀있는 경우 펼치기
	                  }
	               }
	            </script>
				</div>
			</div>
		</div>
	</header>
	<br />
	<br />
	<div class="rolling_book">
		<table>
			<tr>
				<th>Best</th>
				<th>
					<form action="./list.jsp" method="post">
						<input type="hidden" name="list" value="Best">
						<button type="submit">+</button>
					</form>
				</th>
			</tr>
			<tr>
				<td colspan='2'>
					<div class="carousel slide" data-bs-ride="carousel">
						<!-- The slideshow/carousel -->
						<div class="carousel-inner">
							<div class="carousel-item active">
								<a href="selectByISBN.jsp?ISBN=${vo.ISBN}">
									&nbsp;&nbsp;${vo.title}<%-- (${vo.commentCount}) --%> <br>&nbsp;&nbsp;${vo.author}
									&nbsp;&nbsp;•&nbsp;&nbsp;${vo.publisher}
								</a>
								<div class="carousel-caption"></div>
							</div>
							<div class="carousel-item">
								<a href="selectByISBN.jsp?ISBN=${vo.ISBN}">
									&nbsp;&nbsp;${vo.title}<%-- (${vo.commentCount}) --%> <br>&nbsp;&nbsp;${vo.author}
									&nbsp;&nbsp;•&nbsp;&nbsp;${vo.publisher}
								</a>
								<div class="carousel-caption"></div>
							</div>
							<div class="carousel-item">
								<a href="selectByISBN.jsp?ISBN=${vo.ISBN}">
									&nbsp;&nbsp;${vo.title}<%-- (${vo.commentCount}) --%> <br>&nbsp;&nbsp;${vo.author}
									&nbsp;&nbsp;•&nbsp;&nbsp;${vo.publisher}
								</a>
								<div class="carousel-caption"></div>
							</div>
						</div>

						<!-- Left and right controls/icons -->
						<button class="carousel-control-prev" type="button"
							data-bs-target="#demo" data-bs-slide="prev">
							<span class="carousel-control-prev-icon"></span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#demo" data-bs-slide="next">
							<span class="carousel-control-next-icon"></span>
						</button>
					</div>
				</td>
			</tr>
			<tr>
				<th>오늘의 추천 도서</th>
				<th>
					<form action="./list.jsp" method="post">
						<input type="hidden" name="list" value="Daily">
						<button type="submit">+</button>
					</form>
				</th>
			</tr>
			<tr>
				<td colspan='2'>
					<div class="carousel slide" data-bs-ride="carousel">
						<!-- The slideshow/carousel -->
						<div class="carousel-inner">
							<div class="carousel-item active">
								<a href="selectByISBN.jsp?ISBN=${vo.ISBN}">
									&nbsp;&nbsp;${vo.title}<%-- (${vo.commentCount}) --%> <br>&nbsp;&nbsp;${vo.author}
									&nbsp;&nbsp;•&nbsp;&nbsp;${vo.publisher}
								</a>
								<div class="carousel-caption"></div>
							</div>
							<div class="carousel-item">
								<a href="selectByISBN.jsp?ISBN=${vo.ISBN}">
									&nbsp;&nbsp;${vo.title}<%-- (${vo.commentCount}) --%> <br>&nbsp;&nbsp;${vo.author}
									&nbsp;&nbsp;•&nbsp;&nbsp;${vo.publisher}
								</a>
								<div class="carousel-caption"></div>
							</div>
							<div class="carousel-item">
								<a href="selectByISBN.jsp?ISBN=${vo.ISBN}">
									&nbsp;&nbsp;${vo.title}<%-- (${vo.commentCount}) --%> <br>&nbsp;&nbsp;${vo.author}
									&nbsp;&nbsp;•&nbsp;&nbsp;${vo.publisher}
								</a>
								<div class="carousel-caption"></div>
							</div>
						</div>

						<!-- Left and right controls/icons -->
						<button class="carousel-control-prev" type="button"
							data-bs-target="#demo" data-bs-slide="prev">
							<span class="carousel-control-prev-icon"></span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#demo" data-bs-slide="next">
							<span class="carousel-control-next-icon"></span>
						</button>
					</div>
				</td>
			</tr>
			<tr>
				<th>new</th>
				<th>
					<form action="./list.jsp" method="post">
						<input type="hidden" name="list" value="New">
						<button type="submit">+</button>
					</form>
				</th>
			</tr>
			<tr>
				<td colspan='2'>
					<div class="carousel slide" data-bs-ride="carousel">
						<!-- The slideshow/carousel -->
						<div class="carousel-inner">
							<div class="carousel-item active">
								<a href="selectByISBN.jsp?ISBN=${vo.ISBN}">
									&nbsp;&nbsp;${vo.title}<%-- (${vo.commentCount}) --%> <br>&nbsp;&nbsp;${vo.author}
									&nbsp;&nbsp;•&nbsp;&nbsp;${vo.publisher}
								</a>
								<div class="carousel-caption"></div>
							</div>
							<div class="carousel-item">
								<a href="selectByISBN.jsp?ISBN=${vo.ISBN}">
									&nbsp;&nbsp;${vo.title}<%-- (${vo.commentCount}) --%> <br>&nbsp;&nbsp;${vo.author}
									&nbsp;&nbsp;•&nbsp;&nbsp;${vo.publisher}
								</a>
								<div class="carousel-caption"></div>
							</div>
							<div class="carousel-item">
								<a href="selectByISBN.jsp?ISBN=${vo.ISBN}">
									&nbsp;&nbsp;${vo.title}<%-- (${vo.commentCount}) --%> <br>&nbsp;&nbsp;${vo.author}
									&nbsp;&nbsp;•&nbsp;&nbsp;${vo.publisher}
								</a>
								<div class="carousel-caption"></div>
							</div>
						</div>

						<!-- Left and right controls/icons -->
						<button class="carousel-control-prev" type="button"
							data-bs-target="#demo" data-bs-slide="prev">
							<span class="carousel-control-prev-icon"></span>
						</button>
						<button class="carousel-control-next" type="button"
							data-bs-target="#demo" data-bs-slide="next">
							<span class="carousel-control-next-icon"></span>
						</button>
					</div>
				</td>
			</tr>
		</table>
	</div>
</body>
</html>