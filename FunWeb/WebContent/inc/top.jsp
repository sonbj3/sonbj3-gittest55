<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- 헤더파일들어가는 곳 -->
<header>
	<%
		String id = (String) session.getAttribute("id");
	%>
	<%
		if (id == null) {
	%>
	<div id="login">
		<a href="../member/login.jsp">로그인</a> | <a href="../member/join.jsp">회원가입</a>
	</div>
	<div class="clear"></div>
	<%
		} else {
	%>
	<div id="login"><%=id%>님이 로그인 했습니다 <input type="button"
			value="마이페이지" onclick="location.href='../member/member.jsp'">
		| <input type="button" value="로그아웃"
			onclick="location.href='../member/logout.jsp'">
	</div>
	<%
		}
	%>
	<!-- 로고들어가는 곳 -->
	<div id="logo">
	<a href ="#">
		<img src="../images/LOGO.jpg" width="265" height="62" alt="Fun Web" ></a>
	</div>
	<!-- 로고들어가는 곳 -->
	<nav id="top_menu">
		<ul>
			<li><a href="../main/main.jsp">HOME</a></li>
			<li><a href="../company/welcome.jsp">철도소개</a></li>
			<li><a href="#">문화관광</a></li>
			<li><a href="../center/notice.jsp">고객참여</a></li>
			<li><a href="#">안전/기술/건설</a></li>
		</ul>
	</nav>
</header>
<!-- 헤더파일들어가는 곳 -->
