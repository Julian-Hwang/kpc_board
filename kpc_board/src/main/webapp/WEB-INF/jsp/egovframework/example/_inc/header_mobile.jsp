<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div id="header_w">
		<h1><a href="/kpc_board/index.do"></a></h1>
		<!--햄버거메뉴-->
		<button type="button" class="btn_nav"><span></span><span></span><span></span></button>
		<!--햄버거메뉴 리스트-->
		<nav class="nav_m">
			<button class="btn_close"><span></span><span></span></button>
			<ul class="m_menu">
				<li><a href="/kpc_board/noticeList.do">공지사항</a></li>
				<li><a href="/kpc_board/newsList.do">ESG 뉴스 스크랩</a></li>
				<li>
					<a class="more" href="#">ESG 교육 프로그램</a>
					<ul class="ms_menu">
						<li><a href="/kpc_board/eduSystem.do">ESG 교육 체계도</a></li>
						<li><a href="/kpc_board/courseList.do">ESG 교육 과정</a></li>
						<li><a href="/kpc_board/qnaWrite.do">ESG 교육 문의하기</a></li>
					</ul>
				</li>
				<li>
					<a class="more" href="#">ESG 자료실</a>
					<ul class="ms_menu">
						<li><a href="/kpc_board/cardnewsList.do">ESG 카드뉴스</a></li>
						<li><a href="/kpc_board/esgdataList.do">ESG 자료</a></li>
						<li><a href="/kpc_board/videoList.do">ESG 교육영상</a></li>
						<li><a href="/kpc_board/faq.do">자주 묻는 질문 보기</a></li>
					</ul>
				</li>
				<li><a href="#">KPC ESG 컨설팅</a></li>
			</ul>
		</nav>
		<div class="modal"></div>
	</div>