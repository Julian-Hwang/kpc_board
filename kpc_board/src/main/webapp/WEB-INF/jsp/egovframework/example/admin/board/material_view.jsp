<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="../../_inc/admintitle_view.jsp" %>
<body>
<div id="wrap">
<%@ include file="../../_inc/adminmenu.jsp" %>
<div id="container">
	<div id="left">
	<ul class="left_menu">

		<li>
			<a>자료실관리</a>		
			<ul class="depth">
				<li><a href="/admin/board/material_list.php">자료관리</a></li>
			</ul>
			<ul class="depth">
				<li><a href="/admin/board/cardnews_list.php">카드뉴스관리</a></li>
			</ul>
			<ul class="depth">
				<li><a href="/admin/board/video_list.php">교육영상관리</a></li>
			</ul>
			<ul class="depth">
				<li><a href="/admin/board/faq_list.php">자주묻는질문관리</a></li>
			</ul>

		</li>

	</ul>
</div>
	<div id="contents">
		<ol class="loca">
			<li><img class="mt5 mr5" src="/admin/_img/comn/home_img.png" alt="나의설정"/>홈페이지 관리</li>
			<li>자료실관리</li>
			<li>자료관리</li>
		</ol>
			<h2>자료관리</h2>
			<div class="ta_cont mt20">
				<table class="bbs_write" >
					<colgroup> <col width="160px"> <col width=""> </colgroup>
					<tbody>
					<!--tr>
						<th>분류<span class="star">*</span></th>
						<td>일반</td>
					</tr-->
															<tr>
						<th>제목<span class="star">*</span></th>
						<td>[리더십] 리더십개발</td>
					</tr>
					<tr>
						<th id="cont">내용<span class="star">*</span></th>
						<td>리더십개발 교육 자료입니다.<p></p></td>
					</tr>
					<tr>
						<th>첨부 파일</th>
						<td>
						<a href='/_include/download_file.php?FILE_INFO=material|210915398.docx|2021_리더십_리더십개발_교육자료.docx'>2021_리더십_리더십개발_교육자료.docx</a>						</td>
					</tr>
					<tr>
						<th>썸네일 이미지</th>
						<td>
						<p class="img">
                                                    <img src="/admin/_upload/material/210915581.jpg" style="background: no-repeat 50% 50% / cover" width="200px" heigth="200px">
                        </p>
						
						<br/><a href='/_include/download_file.php?FILE_INFO=material|210915581.jpg|list_img09.jpg'>[list_img09.jpg]</a>						</td>
					</tr>
					<tr>
						<th>사용여부<span class="star">*</span></th>
						<td>미사용</td>
					</tr>
					<tr>
						<th>등록일시</th>
						<td>2021.09.15</td>
					</tr>
				</tbody>
			</table>
		</div>
		<p class="c mt20">
			<a id="gBtn1" href="material_list.php?page=&sch_field=&sch_word=&sch_use_yn=&size=10" class="b_btn_big">목록으로</a>
			<a href="material_write.php?idx=33&SubmitMode=modify&sch_field=&sch_word=&sch_use_yn=&size=10&page=" id="gBtn1" class="r_btn_big"><span>수정하기</span></a>
		</p>
		</div>
	</div>
</div>
<%@ include file="../../_inc/adminfooter.jsp" %>
</body>
</html>

