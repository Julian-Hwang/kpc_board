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
			<a>교육관리</a>		
			<ul class="depth">
				<li><a href="/admin/board/edu_list.php">교육과정관리</a></li>
			</ul>
			<ul class="depth">
				<li><a href="/admin/board/qna_list.php">교육문의관리</a></li>
			</ul>

		</li>

	</ul>
</div>
	<div id="contents">
		<ol class="loca">
			<li><img class="mt5 mr5" src="/admin/_img/comn/home_img.png" alt="나의설정"/> 홈</li>
			<li>교육과정관리</li>
							<li>교육과정등록</li>
					</ol>

			<h2>교육과정관리</h2>
			<div class="ta_cont mt20">
				<!--<form name="frm" id="frm" method="post" action="edu_proc.php" enctype="multipart/form-data"> -->
					<input type="hidden" name="SubmitMode" id="SubmitMode" value="new"/>
					<input type="hidden" name="code" value="1">
					<input type="hidden" name="idx" value="">
					<input type="hidden" name="page" value="1">
					<input type="hidden" name="size" value="10">
					<input type="hidden" name="sch_field" value="">
					<input type="hidden" name="sch_word" value="">
					<input type="hidden" name="sch_use_yn" value="">
					<input type="hidden" name="sch_main_yn" value="">
					<input type="hidden" name="board_div" value="edu">
					<input type="hidden" name="noti_yn" value="0">

					<table class="bbs_write">
						<colgroup><col width="160px"><col width=""></colgroup>
						<tbody>
                       								
						<tr>
							<th>환급/비환급<span class="star">*</span></th>
							<td>
								<input type="radio" name="edu_type" id="edu_type" value="Y" /> <label>환급</label>
								<input type="radio" name="edu_type" id="edu_type" value="N"/> <label>비환급</label>	
							</td>
						</tr>
						<tr>
							<th>제목<span class="star">*</span></th>
							<td>
								<input class="nor" type="text" name="subject" id="subject" value="" style="width:1200px" msg="제목을"/>
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
							<th>교육과정링크<span class="star">*</span></th>
							<td>
								<select name="link_type" id="link_type">
									<option value="_blank" >새창</option>
									<option value="_self" >현재창</option>								
								</select>
								<input class="nor" type="text" name="link_url" id="link_url" placeholder="https://www.naver.com" value="" style="width:1200px" msg="제목을"/>
								<p class="img_size">*https:// 또는 http:// 를 포함한 url 등록</p>
							</td>
						</tr>
						<tr>
							<th>메인노출기간<span class="star">*</span></th>
							<td>
								<input class="nor datepicker" type="text" name="board_sdate" id="board_sdate" value="" style="width:100px" msg="제목을"/>
								~
								<input class="nor datepicker" type="text" name="board_edate" id="board_edate" value="" style="width:100px" msg="제목을"/>
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
				<a id="gBtn1" href="/kpc_board/edu_list.do" class="b_btn_big">목록으로</a>
				<a href="/kpc_board/edu_list.do" onclick="fnsubmit();" class="y_btn_big">등록하기</a>			
			</p>

			</div>
		</div>

	</div>
<%@ include file="../../_inc/adminfooter.jsp" %>
</body>
<script type="text/javascript">
function fnsubmit(){
	var edu_type=$("#edu_type").val();
	var subject=$("#subject").val();
	var img_1=$("#img_1").val();
	var link_type=$("#link_type").val();
	var board_sdate=$("#board_sdate").val();
	var board_edate=$("#board_edate").val();
	var use_yn=$("#use_yn").val();
	var content=$("#content").val();
	
	$.ajax({
		type:"POST",
		data:{
			edutype:edu_type,
			title:subject,
			image:img_1,
			url:link_type,
			statedate1:board_sdate,
			statedate2:board_edate,
			useyn:use_yn,
			createddate:content
		},
		url:"edu_processwrite.do",
		dataType:"text",
		
		success: function(data){
			if(data=="success"){
				alert("Success!");
				location.href="/kpc_board/qnaOk.do";
			}
		}
	});
}

</script>
</html>


