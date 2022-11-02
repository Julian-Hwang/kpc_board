<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<html lang="utf-8">
	<head>
		<title>KPCESG - 관리자 </title>
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="generator" content="editplus">
<meta name="author" content="">
<meta name="keywords" content="">
<meta name="description" content="">
<link rel="stylesheet" type="text/css" href="/kpc_board/admin/_css/default.css">
<link rel="shortcut icon" href="http://esgedu.kpc.or.kr/_img/favicon.ico">
<script type="text/javascript" src="//code.jquery.com/jquery-3.2.1.min.js"></script>
<script type="text/javascript" src="/kpc_board/admin/_js/pop_layer.js"></script>
<script type="text/javascirpt" src="/kpc_board/admin/_js/common.js"></script>
<script src="/kpc_board/admin/_js/jquery-1.8.3.min.js" language="JavaScript" type="text/javascript"></script>
<script src="/kpc_board/admin/_js/common.js" language="JavaScript" type="text/javascript"></script>
<script src="/kpc_board/admin/_js/frmCheck.js" language="javascript" ></script>
<script src="/kpc_board/admin/_js/navigation.js" language="JavaScript" type="text/javascript"></script>

<link  href="/kpc_board/admin/_js/jquery.ui/jquery-ui.css" type="text/css" rel="stylesheet"  media="screen" />
<script src="/kpc_board/admin/_js/jquery.ui/jquery.ui.datepicker.js" language="JavaScript" type="text/javascript"></script>
<script src="/kpc_board/admin/_js/jquery.ui/jquery-ui.js" language="JavaScript" type="text/javascript"></script>



	</head>
<script>

//문서 객체가 모두 로드된 다음 실행될 코드들
$(document).ready(function(){
	/* 기능 사용 유무 체크 */
	var boardVal = "";

	//boardval을 | 기준으로 끊어서 저장
	var boardArr = boardVal.split('|');
	for(var i=1; i<=2; i++){
		if(boardArr[i] == 0){
			$(".board_view_"+i).remove();
		}
	}
});


/*	삭제	*/
function del_row(){

	var submitFlag = false;
	var idx = "0 ";
	if(arguments.length > 0){
		$(arguments).each(function (key, value){
			idx +=  ", "+value;
		})
		submitFlag = true;
	}else{
		var $Checked = $("input[type=checkbox].chk:not([disabled]):checked");
		if($Checked.length > 0){
			
			$("input[type=checkbox].chk:not([disabled]):checked").each(function (){
				idx +=  ", "+$(this).val();
			});
			submitFlag = true;
		}
	}
	if(submitFlag == false){
		return;
	}
	
	if(confirm("삭제 하시겠습니까?")){
		$("#SubmitMode").val("ajax_del");
		$("#idx").val(idx);
		$("#frm").attr("method" , "post").attr("action" , "./category_proc.php").submit();
	}

}


function state_ajax(idx, use_yn){
	$.ajax({
		type:"post",
		url:"category_proc.php",
		data: {
			SubmitMode		: "ajax_state",
			idx				: idx,
			use_yn			: use_yn,
		},
		success:function(data){	
			alert("수정되었습니다.");
			if($.trim(data) == "fail"){
				alert("잠시후 다시 시도해주세요.");
			}			
			location.reload();
		},
		error: function(e){}
	});
}

function delete_ajax(idx){
	if(confirm("삭제 하시겠습니까?")){
		$.ajax({
			type:"post",
			url:"category_proc.php",
			data: {
				SubmitMode		: "del_state",
				idx				: idx
			},
			success:function(data){	
				alert("삭제되었습니다.");
				if($.trim(data) == "fail"){
					alert("잠시후 다시 시도해주세요.");
				}			
				location.reload();
			},
			error: function(e){}
		});
	}
}

</script>