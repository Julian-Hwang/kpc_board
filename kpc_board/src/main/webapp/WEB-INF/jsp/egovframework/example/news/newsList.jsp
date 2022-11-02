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
</div>		<div class="right list news">
			<div class="bbs_list">
				<p class="news_tit"><span>오늘의</span> ESG 뉴스 스크랩<a href="/kpc_board/todayList.do" class="more">더보기</a></p>
				<!-- 일반 게시판 리스트 bbs_list -->
				<ul>
				<c:forEach var="i" items="${todaylist}">
					<li onclick="location.href='${i.url}'">	
						<p class="num">${i.todayIdx}</p>
						<p class="tit"><a href="${i.url}" target="_blank">${i.title}</a></p>							
						<p class="date">${i.createdDate}</p>
					</li>
				</c:forEach>
				</ul>
				<!-- // 일반 게시판 리스트 bbs_list // -->
			</div>
			
			<div class="card_list list">
				<p class="news_tit"><span>일자별</span> ESG 뉴스 스크랩<a href="/kpc_board/dayList.do" class="more">더보기</a></p>
				<ul class="card_list">
					<c:forEach var="i" items="${daylist}">
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
			</div>

		</div><!-- //right -->
	</div><!-- //sub_content -->

	<footer>
		<%@ include file="../_inc/footer.jsp" %>
 </footer> </body>
</html>
