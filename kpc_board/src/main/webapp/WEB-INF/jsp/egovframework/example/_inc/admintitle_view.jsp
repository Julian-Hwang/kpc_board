<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">


<style>
table.bbs_write .star                                   {margin-left:3px; color:#005eb7;}
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
	
});

function fn_submit(){
	if(checkForm("frm")){
		if(checkFileForm()){
			//$("#frm").submit();
			Editor.save();
		}
	}
}
</script>
</head>