<%@page import="board.BoardBean"%>
<%@page import="board.BoardDAO"%>
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
<jsp:include page="../inc/top.jsp" />
<!-- 헤더들어가는 곳 -->
<!-- 본문들어가는 곳 -->
<!-- 메인이미지 -->
<div id="sub_img_center"></div>
<!-- 메인이미지 -->
<!-- 왼쪽메뉴 -->
<nav id="sub_menu">
<ul>
<li><a href="../center/notice.jsp">칭찬 게시판</a></li>
<li><a href="#">불친절 게시판</a></li>
<li><a href="../center/fnotice.jsp">자료실 게시판</a></li>
</ul>
</nav>
<!-- 왼쪽메뉴 -->
<%
// String id = 세션값 가져오기
String id=(String)session.getAttribute("id");
// 세션값 없으면 login.jsp 이동
if(id==null){
	response.sendRedirect("../member/login.jsp");
}
//num , pageNum 파라미터 가져오기
int num=Integer.parseInt(request.getParameter("num"));
String pageNum=request.getParameter("pageNum");
//BoardDAO bdao 객체생성
BoardDAO bdao=new BoardDAO();
//BoardBean bb  =  getBoard(num) 메서드호출
BoardBean bb=bdao.getBoard(num);
%>
<!-- 게시판 -->
<article>
<h1>글 수정</h1>
<form action="updatePro.jsp?pageNum=<%=pageNum %>" method="post" name="fr">
<input type="hidden" name="num" value="<%=num%>">
<table id="notice">
<tr><td class="twrite">글쓴이</td>
   <td class="ttitle">
   <input type="text" name="name" value="<%=id%>" readonly></td></tr>
<tr><td class="twrite">비밀번호</td>
    <td class="ttitle"><input type="password" name="pass"></td></tr>
<tr><td class="twrite">제목</td>
    <td class="ttitle"><input type="text" name="subject" value="<%=bb.getSubject()%>"></td></tr>
<tr><td class="twrite">글내용</td>
    <td class="ttitle"><textarea name="content" rows="10" cols="20"><%=bb.getContent()%></textarea></td></tr>
</table>
<div id="table_search">
<input type="submit" value="글수정" class="btn">
</div>
</form>
<div class="clear"></div>
<div id="page_control">
</div>
</article>
<!-- 게시판 -->
<!-- 본문들어가는 곳 -->
<div class="clear"></div>
<!-- 푸터들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp" />
<!-- 푸터들어가는 곳 -->
</div>
</body>
</html>