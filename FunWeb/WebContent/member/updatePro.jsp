<%@page import="member.MemberDAO"%>
<%@page import="member.MemberBean"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
request.setCharacterEncoding("utf8");

MemberBean mb = new MemberBean();

String id = (String)session.getAttribute("id");
String pass = request.getParameter("pass");
mb.setId(id);
mb.setPass(request.getParameter("pass2"));
mb.setName(request.getParameter("name"));
mb.setEmail(request.getParameter("email"));
mb.setPost(request.getParameter("post"));
mb.setAddress(request.getParameter("address"));
mb.setAddress1(request.getParameter("address1"));
mb.setPhone(request.getParameter("phone"));
mb.setMobile(request.getParameter("mobile"));

MemberDAO mdao = new MemberDAO();
int ch = mdao.setUpdate(id, pass, mb);

if(ch==1){
		%>
		<script>
		alert("회원정보 수정되었습니다.")
		location.href="../main/main.jsp";
		</script>
		<%
} else if(ch==2) {
		%>
		<script>
		alert("비밀번호가 틀렸습니다.")
		location.href="update.jsp";
		</script>
		<%
	} 
%>
</body>
</html>