<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!-- 뷰포트 -->
<meta name="viewport" content="width=device-width" initial-scale="1">
<!-- 스타일시트 참조  -->
<link rel="stylesheet" href="../css/bootstrap.css">
<title>study for 4.5</title>
</head>
<body>
	<%
		/*
			게시판 소스코드.
			게시판 글쓰기 소스코드인 write.jsp 필요
			글을 db에서 리스트화해서 가져와서 처리해야 함
			아직 게시판 내 글 링크화 안시킴
			글 링크를 누르면 로그인으로 이동하는 부분 필요
		*/
		// 로그인을 한 사람이면 userID에 아이디를 저장, 아닐 경우 null값
		String userID = null;
		if(session.getAttribute("userID") != null){
			userID=(String) session.getAttribute("userID");
		}
	%>
	<%-- 네비게이션  --%>
	<nav class="navbar navbar-default" style="background-color: #CEF6F5">
		<div class="navbar-header">
			<button type="button" class="navbar-toggle collapsed"
				data-toggle="collapse" data-target="bs-example-navbar-collapse-1"
				aria-expaned="false">
				<span class="icon-bar"></span> <span class="icon-bar"></span> <span
					class="icon-bar"></span>
			</button>
			<a class="navbar-brand" href="../main.jsp">Study for 4.5</a>
			<a class="navbar-brand" href="#" style="font-size:1.0em">자유게시판</a>
			<a class="navbar-brand" href="#" style="font-size:1.0em">팁 공유 게시판</a>
			<a class="navbar-brand" href="#" style="font-size:1.0em">질문게시판</a>
		</div>
		<%-- 우측 상단 메뉴 --%>
		<div class="collapse navbar-collapse"
			id="#bs-example-navbar-collapse-1">
			<%
				// 로그인 안된경우
				if (userID == null) {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="#" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">접속하기<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="../login.jsp">로그인</a></li>
						<li><a href="../user/sign_up.jsp">회원가입</a></li>
					</ul>
				</li>
			</ul>
			<%
				// 로그인 상태인 경우
				} else {
			%>
			<ul class="nav navbar-nav navbar-right">
				<li class="dropdown"><a href="../myPage.jsp" class="dropdown-toggle"
					data-toggle="dropdown" role="button" aria-haspopup="true"
					aria-expanded="false">마이페이지<span class="caret"></span></a>
					<ul class="dropdown-menu">
						<li><a href="logoutAction.jsp">로그아웃</a></li>
					</ul>
				</li>
			</ul>
			<%
				}
			%>
		</div>
	</nav>
	<table class="table table-hover">
		<thead>
		<tr>
			<th scope="col" class="text-center" style="background-color: #eeeeee">제목</th>
			<th scope="col" class="text-center" style="background-color: #eeeeee">글쓴이</th>
			<th scope="col" class="text-center" style="background-color: #eeeeee">작성일</th>
			<th scope="col" class="text-center" style="background-color: #eeeeee">조회수</th>
		</tr>
	</thead>
	<tbody>
		<%
			// 게시글 리스트 db에서 불러오는 부분
			// 밑의 글은 예시
		%>
		<tr>
			<td scope="col" class="text-center">제 공부 팁 공유해드립니다.</td>
			<td scope="col" class="text-center">홍길동</td>
			<td scope="col" class="text-center">2020-11-20</td>
			<td scope="col" class="text-center">3</td>
		</tr>
	</tbody>
	</table>
	<!-- 애니매이션 담당 JQUERY -->
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<!-- 부트스트랩 JS  -->
	<script src="../js/bootstrap.js"></script>
</body>
</html>