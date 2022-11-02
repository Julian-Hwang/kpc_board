<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
 <head>
 	<%@ include file="../_inc/title.jsp" %>
</head>
 <body>
	<!-- PC -->
<header class="web">
	<%@ include file="../_inc/header_web.jsp" %>
 </header>
 <!--퀵메뉴-->
	<%@ include file="../_inc/quickmenu.jsp" %>

<!-- 타블렛/모바일 -->
<header class="tablet mobile" style="display:none;">
	<%@ include file="../_inc/header_mobile.jsp" %>
 </header>

<%@ include file="../_inc/TAMO_sub.jsp" %>

	<div class="sub_top">
		<div class="h2_bg">
			<h3><a href="#none">ESG <span> 교육 프로그램</span></a></h3>
			<h2>ESG 교육 체계도</h2>
			<ul class="navi">
				<li class="home">홈</li>
				<li>ESG 교육 프로그램</li>
				<li>ESG 교육 체계도</li>
			</ul>
		</div>
	</div><!-- //sub_top -->
	<div class="sub_content">
	<div class="left_menu">
	<ul>
		<li>
			<a class="on" href="/kpc_board/eduSystem.do">ESG 교육 체계도</a>
		</li>
		<li>
			<a  href="/kpc_board/courseList.do">ESG 교육 과정</a>
		</li>
		<li>
			<a  href="/kpc_board/qnaWrite.do">ESG 교육 문의하기</a>
		</li>
	</ul>
</div>		<div class="right system_right">
			<div class="expl_div">
				<h4>ESG 교육 프로그램</h4>
				<p>업종별 ESG 이슈 테마를 중심으로 한 강의를 기반으로, 대상, 직무별 역량개발 프로그램과 연계하여<br>현업 적용성을 강화할 수 있는 맞춤형 교육프로그램을 설계, 제안하여 드립니다.</p>
			</div>
			<p class="guide">※이미지를 스크롤하시면 나머지 부분을 확인하실 수 있습니다.</p>
			<div class="table_scroll pctamo">
				<p><img src="/kpc_board/_img/pc/cont/system_table.jpg" alt="교육 프로그램"></p>				
			</div>
			<div class="table_scroll pc_ta">
				<p><img src="/kpc_board/_img/mo/cont/system_table.jpg" alt="교육 프로그램"></p>				
			</div>
		</div><!-- //right -->
	</div><!-- //sub_content -->

	<footer>
		<%@ include file="../_inc/footer.jsp" %>
 </footer> </body>
</html>