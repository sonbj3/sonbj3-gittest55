<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/subpage.css" rel="stylesheet" type="text/css">
</head>
<body background="../images/sub2.jpg">
<div id="wrap">
<!-- 헤더들어가는 곳 -->
<header>
<div id="login"><a href="../member/login.jsp">로그인</a> | <a href="../member/join.jsp">회원가입</a></div>
<div class="clear"></div>
<!-- 로고들어가는 곳 -->
<div id="logo"><img src="../images/LOGO.jpg" width="265" height="62" alt="Fun Web"></div>
<!-- 로고들어가는 곳 -->
<nav id="top_menu">
<ul>
	<li><a href="../main/main.jsp">HOME</a></li>
	<li><a href="../company/welcome.jsp">철도소개</a></li>
	<li><a href="">문화관광</a></li>
	<li><a href="../center/notice.jsp">고객참여</a></li>
	<li><a href="">안전/기술/건설</a></li>
</ul>
</nav>
</header>
<!-- 헤더들어가는 곳 -->
<!-- 본문들어가는 곳 -->
<!-- 본문메인이미지 -->
<div id="sub_img_member"></div>
<!-- 본문메인이미지 -->
<!-- 왼쪽메뉴 -->
<nav id="sub_menu">
<ul>
<li><a href="">Join us</a></li>
<li><a href="">Privacy policy</a></li>
</ul>
</nav>
<!-- 왼쪽메뉴 -->
<!-- 본문내용 -->
<article>
<h1>Login</h1>
<form action="loginPro.jsp" id="join" method="post">
<fieldset>
<legend>Login Info</legend>
<label>아이디</label>
	<input type="text" name="id"><br>
<label>비밀번호</label>
	<input type="password" name="pass"><br>
</fieldset>
<div class="clear"></div>
<div id="buttons">
	<input type="submit" value="확인" class="submit">
	<input type="reset" value="취소" class="cancel">
</div>
</form>
</article>
<!-- 본문내용 -->
<!-- 본문들어가는 곳 -->
<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
<footer>
<hr>
<div id="copy">(47353) 부산광역시 부산진구 중앙대로644번길 20 (범천동) | 대표전화 : 1544-5005, 유실물센터 : 051-640-7339<br>
본 홈페이지에 게시된 이메일 주소 자동수집을 거부하며, 이를 위반 시 정보통신법에 의해 처벌됨을 유념하시기 바랍니다.<br>
Copyright ⓒ 2019changwon Transportation Corporation. All Rights Reserved.</div>
<div id="social"><img src="../images/facebook.gif" width="33" 
height="33" alt="Facebook">
<img src="../images/twitter.gif" width="34" height="34"
alt="Twitter"></div>
</footer>
<!-- 푸터들어가는 곳 -->
</div>
</body>
</html>