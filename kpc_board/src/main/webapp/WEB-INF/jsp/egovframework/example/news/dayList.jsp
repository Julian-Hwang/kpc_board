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
			<h3 class="one"><a href="#none">ESG <span> 뉴스 스크랩</span></a></h3>
			<h2>ESG 뉴스 스크랩</h2>
			<ul class="navi">
				<li class="home">홈</li>
				<li>ESG 뉴스 스크랩</li>
			</ul>
		</div>
	</div><!-- //sub_top -->
	<div class="sub_content">
	<div class="left_menu">
	<ul>

	</ul>
</div>		<div class="right list news_list news">
			<div class="card_list list">
				<p class="news_tit blue"><span>일자별</span> ESG 뉴스 스크랩</p>
			<div class="list_top">
					<p>총 게시물 <span style="padding-right:3px"></span>, 페이지 <span style="padding-right:3px">1</span>/1</p>
					<!--div class="filter">
						<select>
							<option disabled selected hidden>분류</option>
							<option>전체</option>
							<option>내용</option>
						</select>
						<p class="search">
							<input type="text" placeholder="검색어를 입력하세요">
							<button>검색</button>
						</p>
					</div-->
				</div><!-- //list_top -->

				<!-- 카드리스트 -->
				<ul class="card_list">							
					<c:forEach var="i" items="${list}">
						<li>
							<a href="${i.url}">
								<span class="img_box"><img src="/kpc_board/news_img/${i.img}" style="background:url('/admin/_upload/cardnews/211102931.png') 50% 50% /cover"/></span> 
								<p class="tit">
									<span class="t01 ell"><c:out value="${i.title}"></c:out></span>
								</p>
							</a>
						</li>
					</c:forEach>					
				</ul>
				<!-- // 카드리스트 // -->
			</div>
- 			<p class="pagination" style="margin-top:20px">
				<a href="./dayList.php?sch_field=&sch_word=&sch_use_yn=&size=10&page=1" alt="처음페이지로 이동" class="prev end">처음</a>
				<a href="./dayList.php?sch_field=&sch_word=&sch_use_yn=&size=10&page=0" alt="이전페이지로 이동" class="prev">이전</a>
								<a href="./dayList.php?sch_field=&sch_word=&sch_use_yn=&size=10&page=2" alt="다음페이지로 이동" class="next">다음</a>
				<a href="./dayList.php?sch_field=&sch_word=&sch_use_yn=&size=10&page=0" alt="끝페이지로 이동" class="next end">마지막</a>
			</p>
			<p class="btn_area"><a href="/news/newsList.php">목록으로</a></p>

		</div><!-- //right -->
	</div><!-- //sub_content -->

	<footer>
		<%@ include file="../_inc/footer.jsp" %>
 </footer></body>
</html>
