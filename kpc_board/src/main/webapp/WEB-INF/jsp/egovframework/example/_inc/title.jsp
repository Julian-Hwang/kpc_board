<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1, minimum-scale=1, maximum-scale=1, user-scalable=no">
<meta name="Author" content="KPC ESG">
<meta name="Description" content="한국생산성본부 전문가가 설계한 ESG 기업·기관 맞춤형 커리큘럼">
<meta name="Keywords" content="한국생산성본부, KPC, ESG, ESG 교육, ESG뉴스, ESG교육프로그램, ESG자료실, ESG컨설팅">
<title>KPC 한국생산성본부 ESG</title>
<link rel="stylesheet" type="text/css" href="/kpc_board/_css/default.css">
<script src="https://code.jquery.com/jquery-3.1.0.min.js"></script>
<script src="/kpc_board/_js/common.js" type="text/javascript"></script>
<script src="/kpc_board/_js/slick.js" type="text/javascript"></script>
<script src="/kpc_board/_js/slick.min.js" type="text/javascript"></script>
<link rel="stylesheet" type="text/css" href="/kpc_board/_js/slick.css">
<meta property="og:type" content="website">
<meta property="og:title" content="KPC 한국생산성본부 ESG">
<meta id="description" property="og:description" content="한국생산성본부 전문가가 설계한 ESG 기업·기관 맞춤형 커리큘럼">
<meta property="og:image" content="http://esgedu.kpc.or.kr/_img/pc/main/kpc esg_w logo.jpg">
<meta property="og:url" content="http://esgedu.kpc.or.kr/">
<link rel="shortcut icon" href="http://esgedu.kpc.or.kr/_img/favicon.ico">
<script>


    // html dom 이 다 로딩된 후 실행된다.
    $(document).ready(function(){
        // menu 클래스 바로 하위에 있는 a 태그를 클릭했을때
        $(".h2_bg h3").click(function(){
			$(this).toggleClass("on");
            var submenu = $(".left_menu");
 
            // submenu 가 화면상에 보일때는 위로 보드랍게 접고 아니면 아래로 보드랍게 펼치기
            if( submenu.is(":visible") ){
                submenu.slideUp();
            }else{
                submenu.slideDown();
            }
        });




    });


</script> 