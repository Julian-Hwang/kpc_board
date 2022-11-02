<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
			<h3><a href="#none">ESG <span>교육 프로그램</span></a></h3>
			<h2>ESG 교육 문의하기</h2>
			<ul class="navi">
				<li class="home">홈</li>
				<li>ESG 교육 프로그램</li>
				<li>ESG 교육 문의하기</li>
			</ul>
		</div>
	</div><!-- //sub_top -->
	<div class="sub_content ok">
	<div class="left_menu">
	<ul>
		<li>
			<a  href="/kpc_board/eduSystem.do">ESG 교육 체계도</a>
		</li>
		<li>
			<a  href="/kpc_board/courseList.do">ESG 교육 과정</a>
		</li>
		<li>
			<a class="on" href="/kpc_board/qnaWrite.do">ESG 교육 문의하기</a>
		</li>
	</ul>
</div>		<div class="right">
			<div class="qna_ok">
				<p>문의하신 내용이 <span>접수완료</span>되었습니다.</p>
				<p class="ok_btn"><a href="/kpc_board/index.do" class="home">메인으로</a><a href="/kpc_board/qnaWrite.do">이전으로</a></p>
			</div>
		</div><!-- //right -->
	</div><!-- //sub_content -->

	<footer>
		<%@ include file="../_inc/footer.jsp" %>
 </footer> </body>
</html>
