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
			<a>관리자 관리</a>
		</li>

	</ul>
</div>
			<div id="contents">
				<ol class="loca">
					<li><img class="mt5 mr5" src="/admin/_img/comn/home_img.png" alt="나의설정"/> 홈</li>
					<li>관리자 관리</li>
				</ol>
				<h2>관리자 관리</h2>
				<form name="frm" id="frm" method="get">
				<input type="hidden"	name="SubmitMode"	id="SubmitMode"	value=""/>
				<input type="hidden" name="idx" id="idx" 	value="">
				<ul class="search_c">
					<li>
						<p class="tit">검색</p>
						<div class="search">
							<p class="f_l">
								<select class="select01" name="search_keyfield" id="search_keyfield" class="customSelect" style="cursor:pointer">
									<option value="all" selected="" >전체</option>
									<option value="admin_id" >아이디</option>
									<option value="admin_nm" >이름</option>
								</select>
							</p>
							<p class="re_info">
								<input type="text" class="nor" name="search_keyword" id="search_keyword" value="" placeholder="검색어를 입력해주세요" style="width:220px;">
								<a href="javascript:frm.submit()" class="dark_btn">검색</a>
							</p>
						</div>
					</li>
					<li>
						<p class="tit">사용여부</p>
						<p>	
							<input type="radio" name ="search_use_yn" id="search_use_id01" value="" checked="" checked><label for="search_use_id01"><span>전체</span></label>
                            <input type="radio" name ="search_use_yn" id="search_use_id02" value="Y" ><label for="search_use_id02"><span>사용</span></label>
                            <input type="radio" name ="search_use_yn" id="search_use_id03" value="N" ><label for="search_use_id03"><span>미사용</span></label>
						</p>
					</li>
				</ul>

				<div class="tabel_t">
					<p class="re_text">총 <span>1</span>개의 게시물이 있습니다.</p>
					<div class="re_sel">
						<div class="search_list" style="width:145px; margin-right:0;">
							<select name="size" onchange="frm.submit()" class="customSelect"  style="cursor:pointer;">
								<option value="10" selected=""selected>10개 출력</option>
								<option value="20" >20개 출력</option>
								<option value="30" >30개 출력</option>
							</select>
							<span>10개 출력</span>						</div>						
					</div>
				</div>
				<div class="ta_cont mt10">
					<table class="table01">
						<colgroup><col width="6%"><col width=""><col width="13%"><col width="10%"><col width="15%"><col width="15%"><col width="7%"><!--<col width="8%">--><col width="6%"><col width="10%"></colgroup>
						<thead>
							<tr>
								<th class="c">No</th>
								<th class="c">ID</th>
								<th class="c">이름</th>
								<th class="c">유선전화</th>
								<th class="c">휴대전화</th>
								<th class="c">이메일</th>
								<th class="c">메일수신여부</th>
<!--								<th class="c">문자수신여부</th>-->
								<th class="c">사용여부</th>
								<th class="c">관리</th>
							<tr>
						</thead>
                        						<tbody>
							<tr>
								<td class="c">1</th>
								<td class="c">admin</a></th>
								<td class="c">관리자</td>
								<td class="c">02-123-456</td>
								<td class="c">010-1234-5678</td>
								<td class="c">test@kpc.or.kr</td>
								<td class="c">Y</td>
								<!--<td class="c">N</td>-->
								<td class="c"></td>
								<td class="c"><a href="./admin_write.php?idx=56&page=1&mode=modify&search_keyfield=&search_keyword=&size=&search_use_yn=" class="y_btn">수정</a>
									<a href="javascript:del_row('56');" class="r_btn"><span>삭제</span></a>
							</tr>
						</tbody>
					</table>
					<p class="pagenation">
						<a href="./admin_list.php?search_keyfield=&search_keyword=&size=&search_use_yn=&page=1" class="prev_next"><img src="/admin/_img/comn/first.png" alt="맨처음"></a>
						<a href="./admin_list.php?search_keyfield=&search_keyword=&size=&search_use_yn=&page=0" class="prev_next"><img src="/admin/_img/comn/prev.png" alt="이전으로"></a>&nbsp;
						<a class='on'><strong> 1 </strong></a>&nbsp;						<a href="./admin_list.php?search_keyfield=&search_keyword=&size=&search_use_yn=&page=2" class="prev_next"><img src="/admin/_img/comn/next.png" alt="다음으로"></a>
						<a href="./admin_list.php?search_keyfield=&search_keyword=&size=&search_use_yn=&page=1" class="prev_next"><img src="/admin/_img/comn/last.png" alt="맨마지막"></a>
					</p>
				</div>
				</form>	
				<!-- p class="r mt20"><a href="admin_write.php?page=1&mode=new&search_keyfield=&search_keyword=&size=&search_use_yn=" class="r_btn_big">관리자 등록</a> </p-->


			</div>
		</div>

	</div>

<%@ include file="../../_inc/adminfooter.jsp" %>
</body>

</html>
