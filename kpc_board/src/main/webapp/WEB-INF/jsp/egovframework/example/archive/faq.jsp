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
			<h3><a href="#none">ESG <span> 자료실</span></a></h3>
			<h2>자주 묻는 질문 보기</h2>
			<ul class="navi">
				<li class="home">홈</li>
				<li>ESG 자료실</li>
				<li>자주 묻는 질문 보기</li>
			</ul>
		</div>
	</div><!-- //sub_top -->
	<div class="sub_content">
	<div class="left_menu">
	<ul>
		<li>
			<a  href="/archive/cardnewsList.php">ESG 카드뉴스</a>
		</li>
		<li>
			<a  href="/archive/videoList.php">ESG 교육영상</a>
		</li>
		<li>
			<a  href="/archive/esgdataList.php">ESG 자료</a>
		</li>
		<li>
			<a class="on" href="/archive/faq.php">자주 묻는 질문 보기</a>
		</li>
	</ul>
</div>		<div class="right list">
			<div class="list_top"><p style="padding-top:0">총 게시물 <span style="padding-right:3px">4</span>, 페이지 <span style="padding-right:3px">1</span>/1</p></div><!-- //list_top -->
			<ul class="faq_list">
											<li>
									<a class="faq_tit" href="#" onclick="return false">
										<span class="eng q">Q</span><span class="tit">ESG 교육 프로그램이란?</span><span class="r_btn">답변보기<span/>
									</a>
									<div class="faq_con">
										<span class="eng a">A</span>
										<p>ESG 교육 프로그램은 대한민국 최고 HRD 기관 한국생산성본부 내 교육 및 ESG 분야별 전문가가 설계한 교육프로그램입니다. 기업 및 기관의 특성, 업종 불문 공통된 내용의 커리큘럼, 산업 및 직무에 특화된 커리큘럼은 물론, 기업 및 기관의 요청에 맞추어 맞춤형 커리큘럼 설계 운영이 가능합니다.</p>									
									</div>
								</li>
										
											<li>
									<a class="faq_tit" href="#" onclick="return false">
										<span class="eng q">Q</span><span class="tit">제가 신청했던 교육은 어디에서 확인할 수 있나요?</span><span class="r_btn">답변보기<span/>
									</a>
									<div class="faq_con">
										<span class="eng a">A</span>
										<p>한국생산성본부 홈페이지에 로그인 한 후, 마이페이지에서 확인하실 수 있습니다.</p>									
									</div>
								</li>
										
											<li>
									<a class="faq_tit" href="#" onclick="return false">
										<span class="eng q">Q</span><span class="tit">문의를 등록했는데 언제쯤 답변을 받을 수 있을까요?</span><span class="r_btn">답변보기<span/>
									</a>
									<div class="faq_con">
										<span class="eng a">A</span>
										<p>평균 1-2일 내에 관리자가 개인 연락처로 답변을 드립니다.</p>									
									</div>
								</li>
										
											<li>
									<a class="faq_tit" href="#" onclick="return false">
										<span class="eng q">Q</span><span class="tit">교육 과정은 어디에서 확인할 수 있나요?</span><span class="r_btn">답변보기<span/>
									</a>
									<div class="faq_con">
										<span class="eng a">A</span>
										<p>ESG 교육 프로그램 탭 &gt; ESG 교육 과정 에서 확인하실 수 있습니다.</p>									
									</div>
								</li>
										
				
			</ul>
			<!-- //faq_list -->	
	
			<p class="pagination" style="margin-top:20px">
				<a href="./faq.php?&page=1" alt="처음페이지로 이동" class="prev end">처음</a>
				<a href="./faq.php?&page=0" alt="이전페이지로 이동" class="prev">이전</a>
				<a href='#' class='on'>1</a>&nbsp;				<a href="./faq.php?&page=2" alt="다음페이지로 이동" class="next">다음</a>
				<a href="./faq.php?&page=1" alt="끝페이지로 이동" class="next end">마지막</a>
			</p>
		</div><!-- //right -->
	</div><!-- //sub_content -->

	<footer>
		<%@ include file="../_inc/footer.jsp" %>
 </footer> </body>
</html>


 <script type="text/javascript">

	$(document).ready(function() {
		$(".faq_con").hide(function() {});
		$(".faq_tit").click(function() {
		$(this).toggleClass("on");
		$(this).next().slideToggle('slow', function() {
		});
      });




	});

</script>