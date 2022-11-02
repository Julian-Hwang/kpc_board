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
			<h2>ESG 자료</h2>
			<ul class="navi">
				<li class="home">홈</li>
				<li>ESG 자료실</li>
				<li>ESG 자료</li>
			</ul>
		</div>
	</div><!-- //sub_top -->
	<div class="sub_content">
	<div class="left_menu">
	<ul>
		<li>
			<a  href="/kpc_board/cardnewsList.do">ESG 카드뉴스</a>
		</li>
		<li>
			<a  href="/kpc_board/videoList.do">ESG 교육영상</a>
		</li>
		<li>
			<a class="on" href="/kpc_board/esgdataList.do">ESG 자료</a>
		</li>
		<li>
			<a  href="/kpc_board/faq.do">자주 묻는 질문 보기</a>
		</li>
	</ul>
</div>		<div class="right list">
			<div class="expl_div">
				<h4>ESG 자료란</h4>
				<p>국내외 유수 대기업 및 기관 ESG 컨설팅을 담당하는 한국생산성본부 ESG 전담 조직에서 작성하는 자료이며,
				기업 및 기관의 ESG 총괄 책임자, 실무진이라면 꼭 알아야 하는 최신 ESG 트랜드 이슈를 쉽게 정리해드립니다.</p>
			</div>
			
			<div class="card_list list">
				<form action="/kpc_board/esgdataList.do" method="get" name="searchFrm" id="searchFrm">
					<div class="list_top">
						<p>총 게시물 <span style="padding-right:3px">0</span>, 페이지 <span style="padding-right:3px">1</span>/1</p>
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
							<a href="/kpc_board/esgdataView.do?id=${i.esg_idx}">
								<span class="img_box"><img src="/kpc_board/esg_img/${i.img}" style="background:url('/admin/_upload/cardnews/211102931.png') 50% 50% /cover"/></span> 
								<p class="tit">
									<span class="t01 ell"><c:out value="${i.title}"></c:out></span>
								</p>
							</a>
						</li>
					</c:forEach>	
									
				</ul>
			</div>
		</div><!-- //right -->
	</div><!-- //sub_content -->

	<footer>
		<%@ include file="../_inc/footer.jsp" %>
 </footer> </body>
</html>