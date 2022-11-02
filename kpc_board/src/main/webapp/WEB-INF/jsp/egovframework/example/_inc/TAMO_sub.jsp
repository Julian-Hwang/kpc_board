<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script>

//TA,MO 서브메뉴
$(document).ready(function(){
	//햄버거
	var burger = $('.btn_nav');

	burger.each(function(index){
	  var $this = $(this);
	  
	  $this.on('click', function(e){
		e.preventDefault();
		$(this).toggleClass('active');
		$('#header_w .modal').show();
		$('.nav_m').addClass('show');
	  })

	});

        $('.btn_close').click(function(){
			$(this).toggleClass("on");
 				$('#header_w .modal').hide();
				$('.nav_m').removeClass('show');
        });


		//서브메뉴 조작
	$("ul.m_menu > li > a").click(function(){
		$(this).css("display","block");
		if($(this).is(".open")){
			$(this).removeClass("open");
			$(this).next(".ms_menu").slideUp();
		}else{
			$("ul.m_menu > li > a").removeClass("open");
			$(this).addClass("open");
			$(".ms_menu").slideUp();
			$(this).next(".ms_menu").slideToggle();
		}
		e.preventDefault();
	});

	//오픈메뉴
	$("ul.menu li").mouseover(function(){
		$(this).stop().children("div.openMenu").show();
	})
	$("ul.menu li").mouseleave(function(){
		$(this).children("div.openMenu").hide();
	})


});
</script>