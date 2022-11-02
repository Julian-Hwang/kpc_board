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
</div>		<div class="right list">
			<div class="bbs_list">
				<div class="list_top">
					<p>총 게시물 <span style="padding-right:3px">31</span>, 페이지 <span>2</span>/20</p>
					<div class="filter">
						<select>
							<option disabled selected hidden>분류</option>
							<option>전체</option>
							<option>내용</option>
						</select>
						<p class="search">
							<input type="text" placeholder="검색어를 입력하세요">
							<button>검색</button>
						</p>
					</div>
				</div><!-- //list_top -->

				<!-- 일반 게시판 리스트 bbs_list -->
				<ul>
					<li class="cate">	
						<p class="num">번호</p>
						<p class="state">상태</p>
						<p class="tit">제목</p>
						<p class="name">작성자</p>
						<p class="date">작성일</p>
						<p class="views">조회수</p>
					</li>
					<!--  리스트는 10개씩 노출 -->
					<c:forEach var="item" items="${list}">
					<li onclick="location.href='/kpc_board/qnaView.do?qnalistIdx=${item.qnalistIdx}'">
						<p class="num">${item.qnalistIdx}</span>
						<p class="state"><span class="st01">미답변</span></p>
						<p class="tit">${item.title}</p>
						<p class="name">${item.name}</p>
						<p class="date">${item.createdDate}</p>
						<p class="views">25</p>
					</li>
					</c:forEach>
				</ul>
				<!-- // 일반 게시판 리스트 bbs_list // -->
				<p class="btn_area"><a href="qnaWrite.php">문의하기</a></p>
			</div>
			<p class="pagination">
				<a href="#" alt="처음페이지로 이동" class="prev end">처음</a>
				<a href="#" alt="이전페이지로 이동" class="prev">이전</a>
				<a href="#" class="on">1</a>
				<a href="#">2</a>
				<a href="#">3</a>
				<a href="#">4</a>
				<a href="#">5</a>
				<a href="#" alt="다음페이지로 이동" class="next">다음</a>
				<a href="#" alt="끝페이지로 이동" class="next end">끝</a>
			</p>

		</div><!-- //right -->
	</div><!-- //sub_content -->

	<footer>
		<%@ include file="../_inc/footer.jsp" %>
 </footer> </body>
</html>
