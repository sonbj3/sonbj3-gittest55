<%@page import="board2.BoardDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	request.setCharacterEncoding("utf8");
	int num = Integer.parseInt(request.getParameter("num"));
	String pass = request.getParameter("pass");

	BoardDAO bdao = new BoardDAO();
	
	int ch=bdao.deletePro(num, pass);
	
	if(ch==1){
			%>
			<script>
				alert("글이 삭제되었습니다!");
				location.href="fnotice.jsp";
			</script>	
			<%
		}else if (ch==2){
			%>
			<script>
				alert("비밀번호가 일치하지 않습니다!");
				history.back();
			</script>
			<%
		}else {
			%>
			<script>
			alert("글이 존재하지 않습니다!");
			history.back();
		</script>
		<% 
	}
%>
</body>
</html>