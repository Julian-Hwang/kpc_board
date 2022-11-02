<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ taglib prefix="c"      uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html lang="ko">
 <head>
	<%@ include file="../_inc/title.jsp" %>
</head>
 
 <script>
  
function fn_submit(){	
	if($('#name').val() == ""){
		alert("성함을 입력하세요.");
		return false;
	}
	if($('#email').val() == ""){
		alert("이메일을 입력하세요.");
		return false;
	}else{
		if(!email_check($('#email').val())){
			alert("이메일 형식에 맞게 입력해주세요");
			return false;
		}
	}

	if($('#phone1').val() == "" || $('#phone2').val() == "" || $('#phone3').val() == ""){
		alert("연락처를 입력하세요.");
		return false;
	}

	 var count = 0;
	 var obj = document.getElementsByName("request[]");
	 for (var i=0 ; i < obj.length ; i++) {
		if( obj[i].checked == true ){count++;}
	 }
	 if( count == 0) {
		 alert("문의 요청사항을 선택해주세요.");
		 return false;
	 }
	

	if($('#content').val() == ""){
		alert("내용을 입력하세요.");
		return false;
	}
	

	$("#frm").submit();

}
//이메일 정규식 체크
function email_check(email) {

	var reg = /^[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_\.]?[0-9a-zA-Z])*\.[a-zA-Z]{2,3}$/i;

	return reg.test(email);

}
</script>
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
			<h3><a href="#none">ESG <span>교육 프로그램</span></a></h3>
			<h2>ESG 교육 문의하기</h2>
			<ul class="navi">
				<li class="home">홈</li>
				<li>ESG 교육 프로그램</li>
				<li>ESG 교육 문의하기</li>
			</ul>
		</div>
	</div><!-- //sub_top -->
	<div class="sub_content">
	<div class="left_menu">
	<ul>
		<li>
			<a  href="/kpc_board/eduSystem.do">ESG 교육 체계도</a>
		</li>
		<li>
			<a  href="/kpc_board/courseList.do">ESG 교육 과정</a>
		</li>
		<li>
			<a class="on" href="/kpc_board/qnaWrite.do">ESG 교육 문의하기</a>
		</li>
	</ul>
</div>		<div class="right qna_write">
			<p class="guide"><span>ESG 교육 문의하기</span>를 통해 아래 내용을 작성해서 남겨주시면, 관련 부서 담당자가 빠르게 연락 드리도록 하겠습니다.</p>
			<p class="guide02"><span>*</span>은 필수 입력 항목입니다.</p>
			<!--<form name="write" id="write" method="post" action="/kpc_board/write.do" enctype="multipart/form-data">-->
				<ul class="bbs_write">
					<li>
						<div class="tit">성함<span class="star_write">*</span></div>
						<div>
							<input type="text" placeholder="" id="name" name="name">
						</div>
						<div class="tit">직함</div>
						<div>
							<input type="text" placeholder="" id="position" name="position">
						</div>
					</li>
					<li>
						<div class="tit">회사명</div>
						<div>
							<input type="text" placeholder="" id="company" name="company">
						</div>
						<div class="tit">소속부서</div>
						<div>
							<input type="text" placeholder="" id="department" name="department">
						</div>
					</li>
					
					<li>
						<div class="tit">받으실 연락처<span class="star_write">*</span></div>
						<div class="call_wrap">
							<select id="phone1" name="phone1">
								<option>010</option>
								<option>011</option>
							</select>						
							<span>-</span>
							<input type="text" id="phone2" name="phone2" maxlength="4"/>
							<span>-</span></p>
							<input type="text" id="phone3" name="phone3" maxlength="4"/>
						</div>
						<div class="tit">이메일<span class="star_write">*</span></div>
						<div>
							<input type="text" placeholder="" id="email" name="email">
						</div>
					</li> 
				</ul>
				<ul class="bbs_write02">
					<li >
						<div class="tit">ESG 교육 관련 문의 요청사항(중복 체크 가능)<span class="star_write">*</span></div>
						<div>
							<p class="basic_ck">
								<input type="checkbox" id="request" name="request" value="ESG 온라인 교육"></input><label for="bbs01">ESG 온라인 교육</label>
								<input type="checkbox" id="request" name="request" value="ESG 비대면(Zoom) 교육"></input><label for="bbs02">ESG 비대면(Zoom) 교육</label>
								<input type="checkbox" id="request" name="request" value="ESG 업종별 맞춤형 교육"></input><label for="bbs03">ESG 업종별 맞춤형 교육</label>
								<input type="checkbox" id="request" name="request" value="ESG 공통교육"></input><label for="bbs04">ESG 공통교육</label>
								<input type="checkbox" id="request" name="request" value="ESG 직무별 교육"></input><label for="bbs05">ESG 직무별 교육</label>
							</p>
						</div>
					</li>
					<li>
						<div class="tit">기타 문의 및 요청사항<span class="star_write">*</span></div>
						<div>
							<div class="textfield">
								<textarea id="content" name="content"></textarea>
								<!--p class="counter">0/300</p--> <!-- 글자수 제한 기능/ 필요 없으면 삭제  -->
							</div>
						</div>
					</li>
				</ul>
				<!-- <p class="btn_area" id="finish"><a href="javascript:void(0);" onclick="fn_submit();">문의하기</a></p> -->
				<p class="btn_area" id="finish"><a href="/kpc_board/qnaOk.do" onclick="fnsubmit()">문의하기</a></p>
			<!--</form>-->
			
		</div><!-- //right -->
	</div><!-- //sub_content -->

	<footer>
		<%@ include file="../_inc/footer.jsp" %>
 </footer> 
 </body>
<script type="text/javascript">
function fnsubmit(){
	var name=$("#name").val();
	var position=$("#position").val();
	var company=$("#company").val();
	var department=$("#department").val();
	var phone1=$("#phone1").val();
	var phone2=$("#phone2").val();
	var phone3=$("#phone3").val();
	var email=$("#email").val();
	var request=$("#request").val();
	var content=$("#content").val();
	
	$.ajax({
		type:"POST",
		data:{
			name:name,
			position:position,
			company:company,
			department:department,
			phone1:phone1,
			phone2:phone2,
			phone3:phone3,
			email:email,
			request:request,
			content:content
		},
		url:"write.do",
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
