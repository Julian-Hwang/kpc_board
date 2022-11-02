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
			<h3 class="one"><a href="#none">공지사항</a></h3>
			<h2>공지사항</h2>
			<ul class="navi">
				<li class="home">홈</li>
				<li>공지사항</li>
			</ul>
		</div>
	</div><!-- //sub_top -->
	<div class="sub_content">
	<div class="left_menu">
	<ul>

	</ul>
</div>		<div class="right list notice">
			<div class="bbs_list">
				<form action="/notice/noticeList.php" method="get" name="searchFrm" id="searchFrm">
					<div class="list_top">
						<p>총 게시물 <span style="padding-right:3px">0</span>, 페이지 <span style="padding-right:3px">1</span>/1</p>
						<div class="filter">
							<select name="sch_field" id="sch_field">
								<option value="">전체</option>
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
				<!-- 일반 게시판 리스트 bbs_list -->
				<ul>
					<c:forEach var="i" items="${list}">
					<li class="cate">	
						<p class="num">${i.noticeIdx}</p>
						<p class="tit">${i.title}</p>
						<p class="name">${i.tname}</p>
						<p class="date">${i.createdDate}</p>
						<p class="views">22</p>
					</li>	
					</c:forEach>									
				</ul>
				<!-- // 일반 게시판 리스트 bbs_list // -->
			</div>
		</div><!-- //right -->
	</div><!-- //sub_content -->

	<footer>
		<%@ include file="../_inc/footer.jsp" %>
 </footer></body>
</html>