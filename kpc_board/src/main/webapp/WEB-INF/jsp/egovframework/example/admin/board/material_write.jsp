<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form"   uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="ui"     uri="http://egovframework.gov/ctl/ui"%>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ include file="../../_inc/admintitle_write.jsp" %>
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
			<li><img class="mt5 mr5" src="/admin/_img/comn/home_img.png" alt="나의설정"/> 홈</li>
			<li>자료관리</li>
							<li>자료등록</li>
					</ol>

			<h2>자료관리</h2>
			<div class="ta_cont mt20">
				<form name="frm" id="frm" method="post" action="material_proc.php" enctype="multipart/form-data"> 
					<input type="hidden" name="SubmitMode" id="SubmitMode" value="new"/>
					<input type="hidden" name="code" value="1">
					<input type="hidden" name="idx" value="">
					<input type="hidden" name="page" value="1">
					<input type="hidden" name="size" value="10">
					<input type="hidden" name="sch_field" value="">
					<input type="hidden" name="sch_word" value="">
					<input type="hidden" name="sch_use_yn" value="">
					<input type="hidden" name="sch_main_yn" value="">
					<input type="hidden" name="board_div" value="material">
					<input type="hidden" name="noti_yn" value="0">

					<table class="bbs_write">
						<colgroup><col width="160px"><col width=""></colgroup>
						<tbody>
                       	<!--tr>
							<th>공지<span class="star">*</span></th>
							<td>
								<label><input type="radio" name="noti_yn" id="noti_yn" value="1" /> 중요</label>
								<label><input type="radio" name="noti_yn" id="noti_yn" value="0"/> 일반</label>	
							</td>
						</tr-->
																		<tr>
							<th>제목<span class="star">*</span></th>
							<td>
								<input class="nor" type="text" name="subject" id="subject" value="" style="width:1200px" msg="제목을"/>
							</td>
						</tr>
						<tr>
							<th>내용<span class="star">*</span></th>
							<td>
								<textarea id="content" name="content"></textarea>
							</td>
						</tr>
						<tr>
							<th>썸네일 이미지</th>
							<td>
								<p><input type='file'  name='img_1' style='height:25px;padding:0 0 0 0;' /></p>
								<p class="img_size">썸네일 권장사이즈 (270px*360px), 최대 5MB</p>
							</td>
						</tr>
						<tr>
							<th>첨부파일 업로드</th>
							<td>
								<p><input type='file'  name='file_1' style='height:25px;padding:0 0 0 0;' /></p>
								<p class="img_size">최대 2GB</p>
							</td>
						</tr>
						<tr>
							<th>사용여부<span class="star">*</span></th>
							<td>
								<select name="use_yn" id="use_yn" >
									<option value='Y' >사용</option>
									<option value='N' >미사용</option>
								</select>
							</td>
						</tr>
						<!--tr>
							<th>메인 등록여부<span class="star">*</span></th>
							<td>
								<select name="main_yn" id="main_yn" >
									<option value='Y' >사용</option>
									<option value='N' >미사용</option>
								</select>
							</td>
						</tr-->
					</tbody>
				</table>				
			</div>

			<p class="c mt20">
				<a id="gBtn1" href="material_list.php" class="b_btn_big">목록으로</a>
				<a href="javascript:void(0);" onclick="fn_submit();" class="y_btn_big">등록하기</a>
			</p>

			</div>
		</div>

	</div>
<%@ include file="../../_inc/adminfooter.jsp" %>
</body>

</html>


