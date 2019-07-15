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
		<!-- 헤더가 들어가는 곳 -->
		<jsp:include page="../inc/top.jsp" />
		<!-- 헤더가 들어가는 곳 -->
		<!-- 본문 들어가는 곳 -->
		<!-- 서브페이지 메인이미지 -->
		<div id="sub_img"></div>
		<!-- 서브페이지 메인이미지 -->
		<!-- 왼쪽메뉴 -->
		<nav id="sub_menu">
			<ul>
				<li><a href="welcome.jsp">CEO 인사말</a></li>
				<li><a href="map.jsp">찾아오시는 길</a></li>
				<li><a href="#">채용정보</a></li>
			</ul>
		</nav>
		<!-- 왼쪽메뉴 -->
		<!-- 내용 -->
		<article>
			<h1>찾아오시는 길</h1>
			<div id="map" style="width: 100%; height: 500px;"></div>
			<!-- 	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d7d6dbcbf82ac99a9d807915835e4d22"></script> -->
			<script type="text/javascript"
				src="//dapi.kakao.com/v2/maps/sdk.js?appkey=d7d6dbcbf82ac99a9d807915835e4d22&libraries=services,clusterer,drawing"></script>
			<script>
				var container = document.getElementById('map');
				var options = {
					center : new kakao.maps.LatLng(35.149667, 129.060486),
					level : 3
				};
				var map = new kakao.maps.Map(container, options);
				var markerPosition = new kakao.maps.LatLng(35.149667,
						129.060486);

				var marker = new kakao.maps.Marker({
					position : markerPosition
				});
				var infowindow = new kakao.maps.InfoWindow(
						{
							content : '<div style="width:150px;text-align:center;padding:6px 0;">부 산 교 통 공 사</div>'
						});
				infowindow.open(map, marker);
				marker.setMap(map);
			</script>
			● 위치
			<table border="1" width="100%">
				<tr>
					<th>주소</th>
					<th>부산광역시 부산진구 중앙대로644번길 20 (범천동) (우)47353</th>
				</tr>
			</table>
			<br>
			● 찾아오시는 방법
			<table border="1" width="100%">
				<tr>
					<th>도시철도</th>
					<th>범내골역 8번 출구 → 도보 10분</th>
				</tr>
				<tr>
					<th>버스</th>
					<th>bus1 : 23, 68, 83, 167, 108-1, 63, 81, 138, 83-1, 심야1004<br>
						bus2 : 17, 82, 103, 38, 86, 29-1, 88(A), 88(B)<br>
						bus3 : 5, 43, 63, 83, 52, 129, 43, 57, 81, 99
					</th>
				</tr>
			</table>
		</article>
		<!-- 내용 -->
		<!-- 본문 들어가는 곳 -->
		<div class="clear"></div>
		<!-- 푸터 들어가는 곳 -->
		<jsp:include page="../inc/bottom.jsp" />
		<!-- 푸터 들어가는 곳 -->
	</div>
</body>
</html>




