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
			<a>교육관리</a>		
			<ul class="depth">
				<li><a href="./edu_list.do">교육과정관리</a></li>
			</ul>
			<ul class="depth">
				<li><a href="./qna_list.do">교육문의관리</a></li>
			</ul>

		</li>

	</ul>
</div>
	<div id="contents">
		<ol class="loca">
			<li><img class="mt5 mr5" src="/kpc_board/admin/_img/comn/home_img.png" alt="나의설정"/>홈페이지 관리</li>
			<li>자료실관리</li>
			<li>교육영상관리</li>
		</ol>
			<h2>교육영상관리</h2>
			<div class="ta_cont mt20">
				<table class="bbs_write" >
					<colgroup> <col width="160px"> <col width=""> </colgroup>
					<tbody>
															<tr>
						<th>분류<span class="star">*</span></th>
						<td>${map.edutype}</td>
					</tr>
					<tr>
						<th>제목<span class="star">*</span></th>
						<td>${map.title}</td>
					</tr>			
					<tr>
						<th>썸네일 이미지</th>
						<td>
						<p class="img">
                        	<img src="/kpc_board/admin/_upload/edu/${map.image}" style="background: no-repeat 50% 50% / cover" width="200px" heigth="200px">
                        </p>
						
						<br/><a href='/_include/download_file.php?FILE_INFO=edu|211104221.jpg|지식콘서트_ESG.JPG'>[지식콘서트_ESG.JPG]</a>						</td>
					</tr>
					<tr>
						<th>교육과정링크</th>
						<td>${map.url}</td>
					</tr>
					<tr>
						<th>메인게시일시</th>
						<td>${map.statedate1}~${map.statedate2}</td>
					</tr>
					<tr>
						<th>사용여부<span class="star">*</span></th>
						<td>${map.useyn}</td>
					</tr>
					<tr>
						<th>등록일시</th>
						<td>${map.createddate}</td>
					</tr>
				</tbody>
			</table>
		</div>
		<p class="c mt20">
			<a id="gBtn1" href="/kpc_board/edu_list.do" class="b_btn_big">목록으로</a>
			<a href="/kpc_board/edu_update.do?eduidx=${map.eduidx}" id="gBtn1" class="r_btn_big"><span>수정하기</span></a>
		</p>
		</div>
	</div>
</div>
<%@ include file="../../_inc/adminfooter.jsp" %>
</body>
</html>

