<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>

<html>
<head>
<title>공지사항</title>
<link rel="shortcut icon" href="favicon.ico">
	<link href="https://fonts.googleapis.com/css?family=Raleway:200,300,400,700" rel="stylesheet">

	<link rel="stylesheet" href="<c:url value="/assets/css/V3animate.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3icomoon.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3bootstrap.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3flexslider.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3owl.carousel.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3owl.theme.default.min.css"/>" />
	<link rel="stylesheet" href="<c:url value="/assets/css/V3style.css"/>" /> 
	<link rel="stylesheet" href="<c:url value="/assets/css/notice.css"/>" /> 

            <script src="<c:url value="/assets/js/V3modernizr-2.6.2.min.js"/>"></script>


</head>
<body>
		<jsp:include page="../../inc/headerV3.jsp" />
				<div id="main-wrapper">
	<div id="board">
		<div id="titleList">
			<div id="category">공지사항</div>
			<div id="titleName">크리스마스 관련 공지입니다</div>
			<div class="titleDetail">운영자</div>
			<div class="titleDetail">2020-11-21</div>
			<hr>
			<div class="OutTextBox">
				<div>
					<div>
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Modi incidunt porro adipisci nam voluptatibus ab ducimus dolorem numquam amet maiores atque consequatur iure sunt doloribus deserunt itaque corrupti. Eum obcaecati!
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Voluptate expedita explicabo doloribus sapiente eveniet vero ea asperiores voluptates repudiandae modi laudantium dolor sint voluptatem harum minima ipsum officiis quo vitae?
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Quam harum facere nobis laboriosam laborum sapiente non numquam esse ratione rerum perspiciatis pariatur explicabo corporis iure consequuntur accusantium id ducimus debitis.
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Possimus iusto obcaecati quae! Perspiciatis illo libero cum eius deserunt voluptatum repudiandae nobis vel dignissimos mollitia magni eos aperiam facere in quo!
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Eaque vel perferendis amet fuga laudantium magnam quos animi necessitatibus maxime optio est nisi earum consectetur unde quae quibusdam magni deleniti accusantium.
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Repellendus omnis obcaecati provident minima ut tempora at magnam eaque iusto harum error molestiae odit cum quaerat fugit aut tenetur! Corporis odit.
					Lorem ipsum dolor sit amet, consectetur adipisicing elit. Vero amet consectetur magni iure eos sint neque quisquam tenetur natus iste odit voluptatem nobis necessitatibus ea quasi beatae adipisci? Pariatur quam.
					</div>
				</div>
			</div>
			<div class="bottomB">
				<button type="button" class="btn btn-sm btn-primary" id="btnList"
				onclick="location.href='00.notice.jsp'">목록</button>
			</div>
		</div>
	</div>
		</div>


	<jsp:include page="../../inc/footerV3.jsp" />

<script src="<c:url value="/assets/js/V3jquery.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.easing.1.3.js"/>"></script>
	<script src="<c:url value="/assets/js/V3bootstrap.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.waypoints.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3owl.carousel.min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3jquery.flexslider-min.js"/>"></script>
	<script src="<c:url value="/assets/js/V3main.js"/>"></script>
</body>
</html>