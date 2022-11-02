<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../_inc/admintitle_view.jsp" %>
<body>
<div id="wrap">
<%@ include file="../../_inc/adminmenu.jsp" %>
<div id="container">
	<div id="left">
	<ul class="left_menu">

		<li>
			<a>뉴스스크랩관리</a>	
		</li>

	</ul>
</div>	<div id="contents">
		<ol class="loca">
			<li><img class="mt5 mr5" src="/admin/_img/comn/home_img.png" alt="나의설정"/>홈페이지 관리</li>
			<li>뉴스스크랩관리</li>
		</ol>
			<h2>뉴스스크랩관리</h2>
			<div class="ta_cont mt20">
				<table class="bbs_write" >
					<colgroup> <col width="160px"> <col width=""> </colgroup>
					<tbody>
					<tr>
						<th>제목<span class="star">*</span></th>
						<td>테스트2</td>
					</tr>			
					<tr>
						<th>교육과정링크</th>
						<td>(새창)https://www.naver.com</td>
					</tr>
					<tr>
						<th>스크랩일시</th>
						<td>2021.10.07</td>
					</tr>
					<tr>
						<th>사용여부<span class="star">*</span></th>
						<td>미사용</td>
					</tr>
				</tbody>
			</table>
		</div>
		<p class="c mt20">
			<a id="gBtn1" href="news_list.php?page=&sch_field=&sch_word=&sch_use_yn=&size=10" class="b_btn_big">목록으로</a>
			<a href="news_write.php?idx=58&SubmitMode=modify&sch_field=&sch_word=&sch_use_yn=&size=10&page=" id="gBtn1" class="r_btn_big"><span>수정하기</span></a>
		</p>
		</div>
	</div>
</div>
<%@ include file="../../_inc/adminfooter.jsp" %>
</body>
</html>

