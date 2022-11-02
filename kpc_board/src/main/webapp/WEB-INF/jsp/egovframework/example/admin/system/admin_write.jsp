<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../_inc/admintitle_admin.jsp" %>
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
			<li>관리자 리스트</li>
		</ol>

			<h2>관리자 리스트</h2>
			<div class="ta_cont mt20">
				<form name="frm" id="frm" method="post" action="admin_proc.php" enctype="multipart/form-data" onSubmit="return chkForm();"> 
				<input type="hidden" name="mode" id="mode" value="modify"/>
				<input type="hidden" name="page" value="1">
				<input type="hidden" name="idx" value="56">
				<input type="hidden" name="search_keyfield" value="">
				<input type="hidden" name="search_keyword" value="">
				<input type="hidden" name="search_use_yn" value="">
				<input type="hidden" name="size" value="10">
				<input type="hidden" name="admin_id_yn" id="admin_id_yn" value="Y"/>
				<input type="hidden" name="admin_email_yn" id="admin_email_yn" value="Y"/>
					<table class="bbs_write">
						<colgroup><col width="160px"><col width=""></colgroup>
						<tbody>
						<tr>
							<th>아이디<span class="star">*</span></th>
															<td>admin</td>
													</tr>
						<tr>
							<th>비밀번호<span class="star">*</span></th>
							<td>
								<input id="admin_pwd" name="admin_pwd" type="password" placeholder="비밀번호를 입력해주세요." class="nor" style="width:300px;">
								<!--<p class="r_13_t pt10 pl10 inline">비밀번호를 다시 입력해주세요.</p>-->
							</td>
						</tr>
						<tr>
							<th>비밀번호 확인<span class="star">*</span></th>
							<td>
								<input id="admin_pwd_check" name="admin_pwd_check" type="password" placeholder="비밀번호를 다시한번 입력해주세요." style="width:300px" class="nor">
								<!--<p class="b_13_t pt10 pl10 inline">사용하실 수 있는 비밀번호입니다.</p>-->
							</td>
						</tr>
						<tr>
							<th>이름<span class="star">*</span></th>
							<td>
								<input id="admin_nm" name="admin_nm" placeholder="이름" type="text" style="width:300px" class="nor" value="관리자" msg="이름을"/>
							</td>
						</tr>
                        <tr>
                            <th>이메일<span class="star">*</span></th>
                                <td>
                                    <input id="admin_email_head" name="admin_email_head" type="text" class="nor" placeholder="" style="width:200px" value="test" msg="이메일을"/>
                                    <span class="v_middle">@</span>
                                    <input id="admin_email_tail" name="admin_email_tail" type="text" class="nor" placeholder="" style="width:200px"  value="kpc.or.kr" msg="이메일을"/>

                                    <div class="search_list" style="width:170px; float:none;">
                                    <select id="admin_email3" name="admin_email3" class="customSelect" style="cursor:pointer;" onchange="set_email_tail_admin();">
										<option value=''>직접입력</option><option value='naver.com' >naver.com</option><option value='chol.com' >chol.com</option><option value='dreamwiz.com' >dreamwiz.com</option><option value='empal.com' >empal.com</option><option value='freechal.com' >freechal.com</option><option value='gmail.com' >gmail.com</option><option value='hanafos.com' >hanafos.com</option><option value='hanmail.net' >hanmail.net</option><option value='hanmir.com' >hanmir.com</option><option value='hiphone.net' >hiphone.net</option><option value='hotmail.com' >hotmail.com</option><option value='korea.com' >korea.com</option><option value='lycos.co.kr' >lycos.co.kr</option><option value='nate.com' >nate.com</option><option value='netian.com' >netian.com</option><option value='paran.com' >paran.com</option><option value='yahoo.com' >yahoo.com</option><option value='yahoo.co.kr' >yahoo.co.kr</option>                                    </select>
                                    <span>직접입력</span>
									</a>
                                    </div>
                                 </td>
                        </tr>
						<tr>
							<th>메일수신여부<span class="star">*</span></th>
							<td>
								<select name="receive_yn" id="receive_yn" >
									<option value='Y' >사용</option>
									<option value='N' >미사용</option>
								</select>
							</td>
						</tr>

						<tr>
							<th>유선전화</th>
							<td>
								<!-- <div class="search_list" style="width:120px; inline-block;"> -->
									<select id="admin_tel_1" name="admin_tel_1" class="customSelect" style="cursor:pointer;">
										<option value="02" >02</option>
										<option value="031" >031</option>
										<option value="032" >032</option>
										<option value="033" >033</option>
										<option value="041" >041</option>
										<option value="042" >042</option>
										<option value="043" >043</option>
										<option value="051" >051</option>
										<option value="052" >052</option>
										<option value="053" >053</option>
										<option value="054" >054</option>
										<option value="055" >055</option>
										<option value="061" >061</option>
										<option value="062" >062</option>
										<option value="063" >063</option>
										<option value="064" >064</option>
										<option value="070" >070</option>
									</select>

								<!--</div>-->
								<span class="v_middle"> - </span> 
								<input id="admin_tel_2" name="admin_tel_2" type="text" class="nor" placeholder="" style="width:150px" value="123" maxlength="4" chknum />
								<span class="v_middle"> - </span>
								<input id="admin_tel_3" name="admin_tel_3" type="text" class="nor" placeholder="" style="width:150px"value="456" maxlength="4" chknum />
							</td>
						</tr>
						<tr>
							<th>휴대전화</th>
							<td>
								<!--<div class="search_list" style="width:130px; inline-block; float:none;">
									<select class="customSelect" style="cursor:pointer;">
									</select>
									<span>통신사선택</span>
								</div>-->
								<!--<div class="search_list" style="width:120px; inline-block; float:none;">-->
									<select id="admin_mobile_1" name="admin_mobile_1" class="customSelect" style="cursor:pointer;">
										<option value='010' >010</option>
										<option value='011' >011</option>
										<option value='016' >016</option>
										<option value='017' >017</option>
										<option value='018' >018</option>
										<option value='019' >019</option>
									</select>
										
										
								<!--</div>-->
								<span class="v_middle"> - </span>
								<input id="admin_mobile_2" name="admin_mobile_2" type="text" class="nor" placeholder="" style="width:150px" value="1234" maxlength="4" chknum />
								<span class="v_middle"> - </span> 
								<input id="admin_mobile_3" name="admin_mobile_3" type="text" class="nor" placeholder="" style="width:150px" value="5678" maxlength="4" chknum />
							</td>
						</tr>
<!--
						<tr>
							<th>문자수신여부<span class="star">*</span></th>
							<td>
								<select name="phone_yn" id="phone_yn" >
									<option value='Y' >사용</option>
									<option value='N' >미사용</option>
								</select>
							</td>
						</tr>
-->
						<tr>
							<th>계정사용여부<span class="star">*</span></th>
							<td>
								<select name="use_yn" id="use_yn" >
									<option value='Y' >사용</option>
									<option value='N' >미사용</option>
								</select>
							</td>
						</tr>
					</tbody>
				</table>
                </form>
			</div>

			<p class="c mt20">
				<a id="gBtn1" href="admin_list.php?page=1&search_keyfield=&search_keyword=&size=&search_use_yn=" class="b_btn_big">목록으로</a>
				<a id="gBtn1" href="javascript:frmSumit()" class="r_btn_big"><span>수정하기</span></a>
			</p>

			</div>
		</div>

	</div>
<%@ include file="../../_inc/adminfooter.jsp" %>
</body>

</html>
