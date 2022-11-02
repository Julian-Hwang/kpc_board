<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../_inc/admintitle.jsp" %>

<body>
	<div id="wrap">
		<%@ include file="../../_inc/adminmenu.jsp" %>

		<div id="container">

			<div id="left">
	<ul class="left_menu">

		<li>
			<a>구분 관리</a>
		</li>

	</ul>
</div>			<div id="contents">
				<ol class="loca">
					<li><img class="mt5 mr5" src="/admin/_img/comn/home_img.png" alt="나의설정"/>구분관리</li>
				</ol>

				<h2>구분관리</h2>
				<form name="frm" id="frm" method="get" action="./category_list.php">
					<input type="hidden"	name="SubmitMode"	id="SubmitMode"	value=""/>
					<input type="hidden"	name="idx"		id="idx"	value=""/>
					<input type="hidden"	name="code"		id="board_code"	value="3"/>


				
				<div class="ta_cont mt10">
					<table class="table01">
						<colgroup><col width="15%"><col width="35%"><col width="20%"><col width="25%"></colgroup>
						<thead>
							<tr>
								<th class="c">No</th>
								<th class="c">게시판</th>
								<th class="c">사용여부</th>
								<th class="c">관리</th>
							<tr>
						</thead>
						<tbody>
							<tr>
								<td class="c">4</td>
								<td class="tit"><a href="./code_list.php?bbsdiv=video">영상</a></td>
								<td class="c">미사용</td>
								<td class="c">
																			<a class="r_btn" onclick="state_ajax('4','Y')"><span>사용</span></a>
																
									<a href="./code_list.php?bbsdiv=video" class="y_btn" style="width: 70px;"><span>구분수정</span></a>
								</td>
							</tr>
						
						</tbody>
					</table>
				</div>
				
				<!-- p class="r mt20"><a href="category_write.php?SubmitMode=new&sch_field=&sch_word=&sch_use_yn=&size=10&page=1"  class="r_btn_big"><span>글쓰기</span></a> </p-->
			</div>
		</div>

	</div>
<%@ include file="../../_inc/adminfooter.jsp" %>
</body>

</html>
