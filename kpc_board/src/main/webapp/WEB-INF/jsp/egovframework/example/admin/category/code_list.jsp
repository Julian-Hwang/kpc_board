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
						<colgroup><col width="15%"><col width="25%"><col width="15%"><col width="10%"><col width="35%"></colgroup>
						<thead>
							<tr>
								<th class="c">No</th>
								<th class="c">구분</th>
								<th class="c">구분값</th>
								<th class="c">사용여부</th>
								<th class="c">관리</th>
							<tr>
						</thead>
						
						<tr>
							<td colspan="8" class="last" style="height:32px;">등록된 게시물이 없습니다.</td>
						</tr>
						
						</tbody>
					</table>
				</div>
				
				<p class="r mt20"><a href="code_write.php?SubmitMode=new&bbsdiv=video"  class="r_btn_big"><span>신규등록</span></a> </p>
			</div>
		</div>

	</div>
<%@ include file="../../_inc/adminfooter.jsp" %>
</body>

</html>
