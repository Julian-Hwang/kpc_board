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
			<a>공지 관리</a>
		</li>

	</ul>
</div>			<div id="contents">
				<ol class="loca">
					<li><img class="mt5 mr5" src="/admin/_img/comn/home_img.png" alt="나의설정"/> 공지관리</li>
				</ol>

				<h2>공지관리</h2>
				<form name="frm" id="frm" method="get" action="./notice_list.php">
					<input type="hidden"	name="SubmitMode"	id="SubmitMode"	value=""/>
					<input type="hidden"	name="idx"		id="idx"	value=""/>
					<input type="hidden"	name="code"		id="board_code"	value="3"/>
				<ul class="search_c">
					<li>
						<p class="tit">검색</p>
						<div class="search">
							<p class="f_l">
								<select class="select01" name="sch_field" id="sch_field">
									<option value="" selected=""selected >전체</option>
									<option value="subject"  >제목</option>
									<option value="content"  >내용</option>
								</select>
							</p>
							<p class="re_info">
								<input type="text" class="nor" name="sch_word" id="sch_word" value=""  placeholder="검색어를 입력해주세요" style="width:220px;">
								<a onclick="frm.submit()" class="dark_btn">검색</a>
							</p>
						</div>
					</li>

				</ul>

				<div class="tabel_t">
					<p class="re_text">총 <span>8</span>개의 게시물이 있습니다.</p>
					<div class="re_sel">
						<div class="search_list" style="width:145px; margin-right:0;">
							<select class="customSelect" style="cursor:pointer;" name="size" onchange="frm.submit()">
								<option value="10" selected=""selected>10개 출력</option>
								<option value="20" >20개 출력</option>
								<option value="30" >30개 출력</option>
								<option value="50" >50개 출력</option>
								<option value="100" >100개 출력</option>
							</select>
							<span>10개 출력</span>						</div>						
					</div>
				</div>
		
				<div class="ta_cont mt10">
					<table class="table01">
						<colgroup><col width="15%"><col width="25%"><col width="20%"><col width="25%"><col width="25%"></colgroup>
						<thead>
							<tr>
								<th class="c">No</th>
								<th class="c">제목</th>
								<th class="c">사용여부</th>
								<th class="c">등록일</th>
								<th class="c">관리</th>
							<tr>
						</thead>
						<tbody>
							<tr>
								<td class="c">8</td>
								<td class="tit"><a href="./notice_view.php?idx=57&sch_field=&sch_word=&sch_use_yn=&size=10">테스트2</a></td>
								<td class="c">미사용</td>
								<td class="c">2021.10.07</td>
								<td class="c">
																			<a class="r_btn" onclick="state_ajax('57','Y')"><span>사용</span></a>
																
									<a href="./notice_write.php?SubmitMode=modify&idx=57&sch_field=&sch_word=&sch_use_yn=&size=10" class="y_btn"><span>수정</span></a>
								</td>
							</tr>
						
						</tbody>
					</table>
					<p class="pagenation">
						<a href="./notice_list.php?sch_field=&sch_word=&sch_use_yn=&size=10&page=1" class="prev_next"><img src="/admin/_img/comn/first.png" alt="맨처음"></a>
						<a href="./notice_list.php?sch_field=&sch_word=&sch_use_yn=&size=10&page=0" class="prev_next"><img src="/admin/_img/comn/prev.png" alt="이전으로"></a>&nbsp;
						<a class='on'><strong> 1 </strong></a>&nbsp;						<a href="./notice_list.php?sch_field=&sch_word=&sch_use_yn=&size=10&page=2" class="prev_next"><img src="/admin/_img/comn/next.png" alt="다음으로"></a>
						<a href="./notice_list.php?sch_field=&sch_word=&sch_use_yn=&size=10&page=1" class="prev_next"><img src="/admin/_img/comn/last.png" alt="맨마지막"></a>
					</p>
				</div>
				
				<p class="r mt20"><a href="notice_write.php?SubmitMode=new&sch_field=&sch_word=&sch_use_yn=&size=10&page=1"  class="r_btn_big"><span>글쓰기</span></a> </p>
			</div>
		</div>

	</div>
<%@ include file="../../_inc/adminfooter.jsp" %>
</body>

</html>
