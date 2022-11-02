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
			<h3><a href="#none">ESG <span> 자료실</span></a></h3>
			<h2>ESG 카드뉴스</h2>
			<ul class="navi">
				<li class="home">홈</li>
				<li>ESG 자료실</li>
				<li>ESG 카드뉴스</li>
			</ul>
		</div>
	</div><!-- //sub_top -->
	<div class="sub_content">
	<div class="left_menu">
	<ul>
		<li>
			<a class="on" href="/kpc_board/cardnewsList.do">ESG 카드뉴스</a>
		</li>
		<li>
			<a  href="/kpc_board/videoList.do">ESG 교육영상</a>
		</li>
		<li>
			<a  href="/kpc_board/esgdataList.do">ESG 자료</a>
		</li>
		<li>
			<a  href="/kpc_board/faq.do">자주 묻는 질문 보기</a>
		</li>
	</ul>
</div>		<div class="right">

			<div class="card_list list">
				<form action="/archive/cardnewsList.php" method="get" name="searchFrm" id="searchFrm">
					<div class="list_top">
						<p>총 게시물 <span style="padding-right:3px">10</span>, 페이지 <span style="padding-right:3px">1</span>/1</p>
						<div class="filter">
							<select name="sch_field" id="sch_field">
								<option value="">전체</option>
								<option value="board_gubun" >분류</option>
								<option value="subject" >제목</option>
								<option value="content" >내용</option>
							</select>
							<p class="search">
								<input type="text" id="sch_word" name="sch_word" value="" placeholder="검색어를 입력하세요">
								<button>검색</button>
							</p>
						</div>
					</div><!-- //list_top -->
				</form>
				<ul class="card_list">
				
					<c:forEach var="i" items="${list}">
						<li>
							<a href="/kpc_board/cardnewsView.do?id=${i.card_idx}">
								<span class="img_box"><img src="/kpc_board/card_img/${i.img}" style="background:url('/admin/_upload/cardnews/211102931.png') 50% 50% /cover"/></span> 
								<p class="tit">
									<span class="t01 ell"><c:out value="${i.title}"></c:out></span>
								</p>
							</a>
						</li>
					</c:forEach>	
													
				</ul>
			</div>
			<p class="pagination" style="margin-top:20px">
				<a href="./cardnewsList.php?sch_field=&sch_word=&sch_use_yn=&size=12&page=1" alt="처음페이지로 이동" class="prev end">처음</a>
				<a href="./cardnewsList.php?sch_field=&sch_word=&sch_use_yn=&size=12&page=0" alt="이전페이지로 이동" class="prev">이전</a>
				<a href='#' class='on'>1</a>&nbsp;				<a href="./cardnewsList.php?sch_field=&sch_word=&sch_use_yn=&size=12&page=2" alt="다음페이지로 이동" class="next">다음</a>
				<a href="./cardnewsList.php?sch_field=&sch_word=&sch_use_yn=&size=12&page=1" alt="끝페이지로 이동" class="next end">마지막</a>
			</p>
		</div><!-- //right -->
	</div><!-- //sub_content -->

	<footer>
		<%@ include file="../_inc/footer.jsp" %>
 </footer> </body>
</html>