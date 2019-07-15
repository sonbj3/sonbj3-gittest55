<%@page import="java.text.SimpleDateFormat"%>
<%@page import="board.BoardDAO"%>
<%@page import="board.BoardBean"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link href="../css/default.css" rel="stylesheet" type="text/css">
<link href="../css/front.css" rel="stylesheet" type="text/css">
</head>
<body background="../images/sub2.jpg">
<div id="wrap">
<!-- 헤더파일들어가는 곳 -->
<jsp:include page="../inc/top.jsp" />
<!-- 헤더파일들어가는 곳 -->
<!-- 메인이미지 들어가는곳 -->
<div class="clear"></div>
<div id="main_img"><img src="../images/sub.jpg"
 width="971" height="282"></div>
<!-- 메인이미지 들어가는곳 -->
<!-- 메인 콘텐츠 들어가는 곳 -->
<article id="front">
<div id="solution">
<div id="hosting">
<h3>Web Hosting Solution</h3>
<p>Lorem impsun Lorem impsunLorem impsunLorem
 impsunLorem impsunLorem impsunLorem impsunLorem
  impsunLorem impsunLorem impsun....</p>
</div>
<div id="security">
<h3>Web Security Solution</h3>
<p>Lorem impsun Lorem impsunLorem impsunLorem
 impsunLorem impsunLorem impsunLorem impsunLorem
  impsunLorem impsunLorem impsun....</p>
</div>
<div id="payment">
<h3>Web Payment Solution</h3>
<p>Lorem impsun Lorem impsunLorem impsunLorem
 impsunLorem impsunLorem impsunLorem impsunLorem
  impsunLorem impsunLorem impsun....</p>
</div>
</div>
<div class="clear"></div>
<div id="sec_news">
<h3><span class="orange">Security</span> News</h3>
<dl>
<dt><a href="https://www.humetro.busan.kr/homepage/default/board/view.do?board_no=1907O9FJ5T&conf_no=80&menu_no=1001040101&c_page=1&geulmeori=&search_key=&keyword=">노동조합 파업에 따른 열차 운행시각 알림</a></dt>
<dd>노동조합 파업(2019.7.10.예고) 대비 열차 운행시각을 알려드리니 도시철도 이용에 참고하시길 바라며, 많은 양해 바랍니다.</dd>
</dl>
<dl>
<dt><a href="http://localhost:8080/FunWeb/center/content.jsp?num=30&pageNum=1">부산교통공사 신평체육관 장기이용 모집 재공고</a></dt>
<dd>지역주민의 체육복지 향상을 위하여 부산교통공사 신평체육관의 개방시간을 확대하고자 하오니 장기이용을 희망하는 배드민턴 클럽은 아래 내용을 참고하여 신청바랍니다.</dd>
</dl>
</div>
<div id="news_notice">
<h3 class="brown">News &amp; Notice</h3>
<table>
<%
// BoardDAO bdao 객체생성
BoardDAO bdao=new BoardDAO();
// int count=getBoardCount() 메서드호출 
int count=bdao.getBoardCount();
int pageSize=5;
int startRow=1;
SimpleDateFormat sdf=new SimpleDateFormat("yyyy.MM.dd");
List<BoardBean> boardList =null;
// 게시판 글있으면
//boardList = getBoardList(시작행,가져올 글개수)
if(count!=0){
	boardList=bdao.getBoardList(startRow, pageSize);
	for(int i=0;i<boardList.size();i++){
		BoardBean bb=boardList.get(i);
		%>
	<tr><td class="contxt"><a href="#"><%=bb.getSubject() %></a></td>
    <td><%=sdf.format(bb.getDate()) %></td></tr>	
		<%
	}
}
%>
</table>
</div>
</article>
<!-- 메인 콘텐츠 들어가는 곳 -->
<div class="clear"></div>
<!-- 푸터 들어가는 곳 -->
<jsp:include page="../inc/bottom.jsp" />
<!-- 푸터 들어가는 곳 -->
</div>
</body>
</html>