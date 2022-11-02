<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">



<style>
table.bbs_write .star					{margin-left:3px; color:#005eb7;}
</style>

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



<script src="/kpc_board/admin/_js/edu.js" language="JavaScript" type="text/javascript"></script>
<script>
$(document).ready(function(){
	submitMode = 'modify'
	mem_pwd_sec = true;
	Glo_mem_idx = "56";


});

function opencheckid(){
	var admin_id = document.all.admin_id.value;
	if(admin_id){
        url = "check.php?admin_id="+admin_id;
            window.open(url,"chkid","width=700,height=400,menubar=no,toolbar=no")
    }else{
            alert("ID를 입력해주세요")
    }
}
function chkForm(){
	if(mode=="new"){
		var checkid=document.all.checkid.value;
		if(checkid==0){
			alert("ID 중복체크를 하세요!");
			return false;
		}
		return true;
	}
}


function frmSumit(){
	//가입모드 이거나 , 비밀번호 란에 입력값이 있으면.
	if(submitMode == "new" ){
		/*if(check_input( "admin_id", "아이디를 입력해주세요." ) == false){
			return;
		}*/	
		var checkid=document.all.checkid.value;
		if(checkid==0){
			alert("ID 중복체크를 하세요!");
			return false;
		}
		
	}
	if(submitMode == "new" || $("#admin_pwd").val() != ""){

		/*if(check_input( "admin_pwd", "비밀번호를 입력해주세요." ) == false){
			return;
		}*/	

		if($("#admin_pwd").val() != $("#admin_pwd_check").val()){
			alert("암호가 일치하지 않습니다.");
			$("#admin_pwd_check").focus();
			return;
		}
	}	
	if($("#admin_pwd").val()==""){
		alert("비밀번호를 입력하세요.");
		$("#admin_pwd").focus();
		return;
	}
	if($("#admin_nm").val()==""){
		alert("이름을 입력하세요.");
		$("#admin_nm").focus();
		return;
	}	
	if($("#admin_email_head").val()==""){
		alert("이메일 앞자리를 입력하세요.");
		$("#admin_email_head").focus();
		return;
	}
	if($("#admin_email_tail").val()==""){
		alert("이메일 뒷자리를 입력하세요.");
		$("#admin_email_head").focus();
		return;
	}

	$("#frm").submit();
}



function set_email_tail_admin(){
	 document.frm.admin_email_tail.value = document.frm.admin_email3.options[document.frm.admin_email3.selectedIndex].value;
	
}



</script>
</head>