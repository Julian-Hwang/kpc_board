<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
 <head>
  <%@ include file="../_inc/title.jsp" %> 
  <script>
  function copy(board_idx){
			var target = 'http://kpcesg2.pms.or.kr/archive/esgdataView.php?idx='+ board_idx;
			var t = document.createElement("textarea");			 
			 document.body.appendChild(t);
			 t.value = target;
			 t.select();
			 document.execCommand('copy');
			 document.body.removeChild(t); 
	 
			 alert("URL이 클립보드에 복사되었습니다"); 
	}
  </script>
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

	<div class="all_wrap">
		<div class="vis_wrap">
			<div class="visual_pc visual" style="background:url('./_img/pc/main/visual.jpg')no-repeat 50% 50%/cover;">
				<div class="v_tt">
					<p>기업·기관 맞춤형 커리큘럼,</p>
					<h2>전문가가 설계한 ESG 교육</h2>
				</div>
			</div>
			<div class="visual_ta01 visual" style="background:url('./_img/ta/main/visual.jpg')no-repeat 50% 0%/cover;">
				<div class="v_tt">
					<p>기업·기관 맞춤형 커리큘럼,</p>
					<h2>전문가가 설계한 ESG 교육</h2>
				</div>
			</div>
			<div class="visual_ta02 visual" style="background:url('./_img/ta/main/visual.jpg')no-repeat 50% 50%/cover;">
				<div class="v_tt">
					<p>기업·기관 맞춤형 커리큘럼,</p>
					<h2>전문가가 설계한 ESG 교육</h2>
				</div>
			</div>
			<div class="visual_mo visual" style="background:url('./_img/mo/main/visual.jpg')no-repeat 95% 0%/cover;">
				<div class="v_tt">
					<p>기업·기관 맞춤형 커리큘럼,</p>
					<h2>전문가가 설계한 ESG 교육</h2>
				</div>
			</div>
			<div class="v_down_conts">
				<div class="notice">
					<div class="title"><h3>공지사항</h3><p class="p_btn"><a href="/notice/noticeList.php"></a></p></div>
					<ul class="v_list">
												
								<li class="no_cont">등록(검색)된 결과가 없습니다.</li>
																		
					</ul>
				</div>
				<div class="news">
					<div class="title"><h3>ESG 뉴스 스크랩</h3><p class="p_btn"><a href="/news/newsList.php"></a></p></div>
					<ul class="v_list">
												
								<li class="no_cont">등록(검색)된 결과가 없습니다.</li>
													
					</ul>
				</div>
			</div>
		</div>
		<div class="contents">

			<div class="edu_course">
				<div class="title">
				<h3>모집중인 ESG 교육과정</h3>
				<p class="p_btn"><a href="/program/courseList.php"></a></p>
				</div>
				<div class="slick">	
											<div onclick="window.open('https://www.kpc.or.kr/education/CourseInformation.asp?YY=2021&CourseSeq=36614&UMEduTheme=49050009&Serl=115157&UMEduType=49049003')" class="slick_li">
							<p class="edu_hover"><img src="./_img/pc/main/c_thumb.png" style="background: url('/admin/_upload/edu/211104827.jpg')no-repeat 50% 50%/cover;" alt="교육과정 썸네일"></p>
							<p class="p_tts"><span>[온앤오프](11월) ESG, 지속가능경영보고서 작성실무</span></p>				
						</div>
												
															
				</div>
			</div>

			<div class="esg_cardnews">
				<div class="title"><h3>ESG 카드뉴스</h3><p class="p_btn"><a href="/archive/cardnewsList.php"></a></p></div>
				<ul class="slick slide">
											<li onclick="location.href='/archive/cardnewsView.php?idx=69'">
							<p class="img_p"><img src="./_img/pc/main/news_thumb00.png" style="background:url('/admin/_upload/cardnews/211102931.png')no-repeat 50% 50% /cover;" alt="ESG 뉴스 썸네일"></p>
							<div><p>그린슈머</p></div>
						</li>
												
											<li onclick="location.href='/archive/cardnewsView.php?idx=68'">
							<p class="img_p"><img src="./_img/pc/main/news_thumb00.png" style="background:url('/admin/_upload/cardnews/211102489.png')no-repeat 50% 50% /cover;" alt="ESG 뉴스 썸네일"></p>
							<div><p>탈석탄 금융</p></div>
						</li>
												
											<li onclick="location.href='/archive/cardnewsView.php?idx=67'">
							<p class="img_p"><img src="./_img/pc/main/news_thumb00.png" style="background:url('/admin/_upload/cardnews/211102808.png')no-repeat 50% 50% /cover;" alt="ESG 뉴스 썸네일"></p>
							<div><p>그린워싱</p></div>
						</li>
												
											<li onclick="location.href='/archive/cardnewsView.php?idx=66'">
							<p class="img_p"><img src="./_img/pc/main/news_thumb00.png" style="background:url('/admin/_upload/cardnews/211102611.png')no-repeat 50% 50% /cover;" alt="ESG 뉴스 썸네일"></p>
							<div><p>RE100</p></div>
						</li>
												
											<li onclick="location.href='/archive/cardnewsView.php?idx=65'">
							<p class="img_p"><img src="./_img/pc/main/news_thumb00.png" style="background:url('/admin/_upload/cardnews/211102234.png')no-repeat 50% 50% /cover;" alt="ESG 뉴스 썸네일"></p>
							<div><p>화이트 바이오</p></div>
						</li>
												
									</ul>				
			</div>
		</div>

			<div class="edu_vids">
				<div class="title"><h3>ESG 교육영상</h3><p class="p_btn"><a href="/archive/videoList.php"></a></p></div>				
				<ul class="slick slide">
											<li onclick="location.href='/archive/videoView.php?idx=81'">
							<p class="vid_play">
							<img src="./_img/pc/main/c_thumb.png" style="background: url('/admin/_upload/video/211122411.jpg')no-repeat 50% 50%/cover;" alt="교육영상 썸네일"></p>
							<p class="vid_tt">[]ESG 컨설턴트가 본 중소기업 현실과 미래</p>
						</li>
												
											<li onclick="location.href='/archive/videoView.php?idx=80'">
							<p class="vid_play">
							<img src="./_img/pc/main/c_thumb.png" style="background: url('/admin/_upload/video/211122459.jpg')no-repeat 50% 50%/cover;" alt="교육영상 썸네일"></p>
							<p class="vid_tt">[]중소기업 ESG 정보공시에 대한 이해</p>
						</li>
												
											<li onclick="location.href='/archive/videoView.php?idx=79'">
							<p class="vid_play">
							<img src="./_img/pc/main/c_thumb.png" style="background: url('/admin/_upload/video/211122956.jpg')no-repeat 50% 50%/cover;" alt="교육영상 썸네일"></p>
							<p class="vid_tt">[]업종별 ESG 이슈 이해</p>
						</li>
												
											<li onclick="location.href='/archive/videoView.php?idx=78'">
							<p class="vid_play">
							<img src="./_img/pc/main/c_thumb.png" style="background: url('/admin/_upload/video/211122709.jpg')no-repeat 50% 50%/cover;" alt="교육영상 썸네일"></p>
							<p class="vid_tt">[]중소기업 ESG 우수사례 소개</p>
						</li>
												
											<li onclick="location.href='/archive/videoView.php?idx=77'">
							<p class="vid_play">
							<img src="./_img/pc/main/c_thumb.png" style="background: url('/admin/_upload/video/211122551.jpg')no-repeat 50% 50%/cover;" alt="교육영상 썸네일"></p>
							<p class="vid_tt">[]수출중소기업의 ESG 대응사례</p>
						</li>
												
									</ul>
			</div>

			<div class="esg_data">
				<div class="title"><h3>ESG 자료</h3><p class="p_btn"><a href="/archive/esgdataList.php"></a></p></div>				
				<ul class="slick slide">
											
							<li class="no_cont03">등록(검색)된 결과가 없습니다.</li>
									</ul>
			</div>

			
	</div>
	<footer>
	<%@ include file="../_inc/footer.jsp" %>
 </footer>	<script>
	$(".slick").slick({	
	infinite : true, 	//무한 반복 옵션	 
	slidesToShow : 4,		// 한 화면에 보여질 컨텐츠 개수
	slidesToScroll : 1,		//스크롤 한번에 움직일 컨텐츠 개수
	autoplay : true,			// 자동 스크롤 사용 여부
	autoplaySpeed : 5000, 		// 자동 스크롤 시 다음으로 넘어가는데 걸리는 시간 (ms)
	variableWidth: true,
	responsive: [
	{ 
		breakpoint: 1389, // 반응형 ~ 1389 
		settings: { 
			slidesToShow: 3, 
			slidesToScroll: 1
			}
		},
		{
			breakpoint: 959,// 반응형 ~ 959
			settings: { 
				slidesToShow: 3, 
				slidesToScroll: 1
				}
			},
			{
				breakpoint: 639,// 반응형 ~ 639
				settings: { 
					slidesToShow: 2, 
					slidesToScroll: 1 
					} 
				}
			] 
		});



	</script>

 </body>
</html>