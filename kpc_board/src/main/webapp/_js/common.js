$(document).ready(function(){
//퀵메뉴

		$(".quick p.close").click(function ()	{		
			$(".quick").css({"right":"-183px", "transition":"all 0.5s ease 0s"});
			$("p.open a").css({"display": "block"});
			$("p.open").css({"left":"-87px"});
			$("p.close").removeClass("on").css({"display":"none"});
			$("p.open").toggleClass("on").css({"display":"block"});
		});
		$(".quick p.open").click(function ()	{		
			$(".quick").css({"right":"0", "transition":"all 0.5s ease 0s"});
			$("p.close").removeClass("on")
			$("p.close").toggleClass("off").css({"display":"block"});
			$("p.open").removeClass("on")
			$("p.open a").css({"display": "none"});
		});
	

});

