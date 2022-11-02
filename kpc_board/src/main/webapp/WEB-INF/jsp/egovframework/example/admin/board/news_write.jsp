<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../_inc/admintitle_write.jsp" %>
<body>
<div id="wrap">
<%@ include file="../../_inc/adminmenu.jsp" %>
<div id="container">
	<div id="left">
	<ul class="left_menu">

		<li>
			<a>뉴스스크랩관리</a>	
		</li>

	</ul>
</div>	<div id="contents">
		<ol class="loca">
			<li><img class="mt5 mr5" src="/admin/_img/comn/home_img.png" alt="나의설정"/> 홈</li>
			<li>뉴스스크랩관리</li>
							<li>뉴스스크랩등록</li>
					</ol>

			<h2>뉴스스크랩관리</h2>
			<div class="ta_cont mt20">
				<form name="frm" id="frm" method="post" action="news_proc.php" enctype="multipart/form-data"> 
					<input type="hidden" name="SubmitMode" id="SubmitMode" value="new"/>
					<input type="hidden" name="code" value="1">
					<input type="hidden" name="idx" value="">
					<input type="hidden" name="page" value="1">
					<input type="hidden" name="size" value="10">
					<input type="hidden" name="sch_field" value="">
					<input type="hidden" name="sch_word" value="">
					<input type="hidden" name="sch_use_yn" value="">
					<input type="hidden" name="sch_main_yn" value="">
					<input type="hidden" name="board_div" value="news">
					<input type="hidden" name="noti_yn" value="0">

					<table class="bbs_write">
						<colgroup><col width="160px"><col width=""></colgroup>
						<tbody>
						<tr>
							<th>제목<span class="star">*</span></th>
							<td>
								<input class="nor" type="text" name="subject" id="subject" value="" style="width:1200px" msg="제목을"/>
							</td>
						</tr>
						<tr>
							<th>스크랩링크<span class="star">*</span></th>
							<td>
								<select name="link_type" id="link_type">
									<option value="_blank" >새창</option>
									<option value="_self" >현재창</option>									
								</select>
								<input class="nor" type="text" name="link_url" id="link_url" value="" style="width:1200px" msg="제목을"/>
								<p class="img_size">*http:// 또는 https://를 포함한 url 등록</p>
							</td>
						</tr>
						<tr>
							<th>스크랩일자<span class="star">*</span></th>
							<td>
								<input class="nor datepicker" type="text" name="board_sdate" id="board_sdate" value="" style="width:100px" msg="제목을"/>							
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
						
					</tbody>
				</table>				
			</div>

			<p class="c mt20">
				<a id="gBtn1" href="news_list.php" class="b_btn_big">목록으로</a>
									<a href="javascript:void(0);" onclick="fn_submit();" class="y_btn_big">등록하기</a>
				
			</p>

			</div>
		</div>

	</div>
<%@ include file="../../_inc/adminfooter.jsp" %>
</body>

</html>


