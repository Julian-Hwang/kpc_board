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



<script src='/kpc_board/admin/_js/edu.js'></script>
<script src="../daumeditor/js/editor_loader.js" type="text/javascript" charset="utf-8"></script>	
<script language="javascript" type="text/javascript">
var board_code = "1";
var boardVal = "";
var boardArr = boardVal.split('|');
$(document).ready(function(){ 
	$("#board_view_9").hide();
	$("#board_view_10").hide();
	var div = 'notice' ;
	if( div == 1 ){
		$("#link1").prop("checked", true);
		$("#cont").text("내용");
		$("#board_view_10").hide();
		$("#board_view_9").hide();
		$("#board_view_2").show();
		
	}else{
		$("#link2").prop("checked", true);
		$("#cont").text("요약내용");
		$("#board_view_10").show();
		$("#board_view_9").show();
		$("#board_view_2").hide();
	}

	$("#link1").click(function() 
    {	
		$("#cont").text("내용");
		$("#link_url").val('');
		$("#link_name").val('');
		$("#board_view_9").hide();
		$("#board_view_10").hide();
		$("#board_view_2").show();
    }) 

	$("#link2").click(function() 
    {	
		$("#cont").text("요약내용");
		$("#board_view_10").show();
		$("#board_view_9").show();
		$("#board_view_2").hide();
    }) 


	/* 기능 사용 유무 체크 */
	for(var i=1; i<=boardArr.length; i++){
		if(boardArr[i] == 0){
			$("#board_view_"+i).remove();
		}
	}

	if(board_code == 1 || board_code == 2){
		$(".board_html").remove();
	}
	
//	if (board_code == 3){
//		$("#board_view_grade").show();
//	} else {
//		$("#board_view_grade").hide();
//	}
	$("#board_view_grade").hide();

	console.log(boardArr.length);
	/* 동영상 첨부 방식 */
	if(boardArr[4] == 1 && boardArr[6] == 1){
		video_type(1);
	}else{
		video_type(0);
	}

	$("input[name=video_type]").change(function(){
		video_type(1);
	});

});	

function fn_submit(){
	if(!$('input:radio[name=noti_yn]').is(':checked')){
		alert("공지를 선택하세요.");
		return 0;
	}
	
	if($('#subject').val() == ""){
		alert("제목을 입력하세요.");
		return 0;
	}

	if($('#content').val() == ""){
		alert("내용을 입력하세요.");
		return 0;
	}
	//console.log(Editor.getContent());
	if(checkForm("frm")){
		if(checkFileForm()){
			//$("#frm").submit();
			Editor.save();
		}
	}
}

function validForm(editor) {
        // Place your validation logic here
 
        // sample : validate that content exists
        var validator = new Trex.Validator();
        var content = editor.getContent();
        if (!validator.exists(content)) {
            alert('내용을 입력하세요');
            return false;
        }
 
        return true;
    }

    function setForm(editor) {
        var i, input;
        var form = editor.getForm();
        var content = editor.getContent();
 
 console.log("@@");

 console.log( editor.getContent());

        // 본문 내용을 필드를 생성하여 값을 할당하는 부분
        var textarea = document.createElement('textarea');
        textarea.name = 'content';
        textarea.value = content;
        form.createField(textarea);
 
        /* 아래의 코드는 첨부된 데이터를 필드를 생성하여 값을 할당하는 부분으로 상황에 맞게 수정하여 사용한다.
         첨부된 데이터 중에 주어진 종류(image,file..)에 해당하는 것만 배열로 넘겨준다. */
        var images = editor.getAttachments('image');
        for (i = 0; i < images.length; i++) {
            // existStage는 현재 본문에 존재하는지 여부
            if (images[i].existStage) {
                // data는 팝업에서 execAttach 등을 통해 넘긴 데이터
                //alert('attachment information - image[' + i + '] \r\n' + JSON.stringify(images[i].data));
                input = document.createElement('input');
                input.type = 'hidden';
                input.name = 'attach_image';
                input.value = images[i].data.imageurl;  // 예에서는 이미지경로만 받아서 사용
                form.createField(input);
            }
        }
 
        var files = editor.getAttachments('file');
        for (i = 0; i < files.length; i++) {
            input = document.createElement('input');
            input.type = 'hidden';
            input.name = 'attach_file';
            input.value = files[i].data.attachurl;
            form.createField(input);
        }

		 
        return true;
    }
function video_type(yn){
	if(yn == 0){
		$("#video_type").remove();
	}else if(yn == 1){
		if($("input:radio[id='video_type_u']").is(":checked") == true){
			$("#board_view_4").show();
			$("#board_view_6").hide();
			$("#board_view_2").show();
		}else if($("input:radio[id='video_type_f']").is(":checked") == true){
			$("#board_view_6").show();
			$("#board_view_4").hide();
			$("#board_view_2").hide();
		}
	}
}

function checkFileForm(){
	var code		= "1";
	var mode		= "new";
	var img_srv		= "img_srv";
	var img_del		= "img_1_del";
	var file_srv	= "file_1";
	var file_del	= "file_1_del";

	/*if( (mode == "new") || (mode == "modify" && $("input:checkbox[name='"+img_del+"']").is(":checked") == true) ){	// 등록 or (수정 and 파일삭제 체크)
		if($("input[name='"+img_srv+"']").val() == ""){
			alert("이미지를 첨부해주세요.");
			return false;
		}
	}*/
	if(code != 1 && code != 3){
		if( (mode == "new") || (mode == "modify" && $("input:checkbox[name='"+file_del+"']").is(":checked") == true) ){	// 등록 or (수정 and 파일삭제 체크)
			if($("input[name='"+file_srv+"']").val() == ""){
				alert("파일을 첨부해주세요.");
				return false;
			}
		}
	}
	return true;
}


</script>
</head>