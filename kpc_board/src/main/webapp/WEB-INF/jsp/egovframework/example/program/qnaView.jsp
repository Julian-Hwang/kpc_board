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
			<h3><a href="#none">ESG <span>교육 프로그램</span></a></h3>
			<h2>ESG 교육 문의하기</h2>
			<ul class="navi">
				<li class="home">홈</li>
				<li>ESG 교육 프로그램</li>
				<li>ESG 교육 문의하기</li>
			</ul>
		</div>
	</div><!-- //sub_top -->
	<div class="sub_content">
	<div class="left_menu">
	<ul>
		<li>
			<a  href="/kpc_board/eduSystem.do">ESG 교육 체계도</a>
		</li>
		<li>
			<a  href="/kpc_board/courseList.do">ESG 교육 과정</a>
		</li>
		<li>
			<a  href="/kpc_board/qnaWrite.do">ESG 교육 문의하기</a>
		</li>
	</ul>
</div>	
	<div class="right">
			<div class="board_top">
				<p class="lock">${map.title}</p>
				<ul>
					<li>조회수 <span>113</span></li>
					
						<li>작성일 <span>${map.createdDate}</span></li>
					
					<li>작성자 <span>${map.name}</span></li>
				</ul>
			</div>
			<div class="board_file">
				<strong>첨부파일</strong>
				<p>
					<a href="#">개인정보수집이용 및 동의서</a>
					<a href="#">이력서</a>			
				</p>
			</div>
			<div class="board_cont">
				<p>${map.contents}</p>
			</div>
			<!--
			<div class="comment">
				<p class="tit">답변내용</p>
				<p class="cont">재취업지원서비스 시행지원 기업컨설팅 사업은 「고령자고용법」에 따른 재취업지원서비스 의무화 대상 기업에 적합한 안정적인 제도 안착을 지원하는 고용노동부 지원 사업으로, 한국생산성본부(KPC)는 ‘21년 사업 수행기관으로 선정되어 재취업지원서비스 의무화 대상 기업 내 퇴직예정자 재취업지원서비스 제도 도입 및 개선을 위한 컨설팅 지원 사업을 수행하고 있습니다.</p>
				<div class="board_file">
					<strong>첨부파일</strong>
					<p>
						<a href="#">개인정보수집이용 및 동의서</a>
						<a href="#">이력서</a>			
					</p>
				</div>
			</div>
			  -->
			<div class="prev_next_box">
				<p class="prev">
					<span>Prev</span>
					<a href="#">9월 대전세종충청지역본부 공개교육 일정안내</a>
				</p>
				<p class="next">
					<span>Next</span>
					다음글이 없습니다.
				</p>
			</div>
			<p class="btn_area"><a href="/kpc_board/qnaList.do">목록으로</a></p>

		</div><!-- //right -->
	</div><!-- //sub_content -->

	<footer>
		<%@ include file="../_inc/footer.jsp" %>
 </footer> </body>
</html>
