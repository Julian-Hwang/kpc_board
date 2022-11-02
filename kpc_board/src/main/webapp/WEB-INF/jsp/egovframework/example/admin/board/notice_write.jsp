<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ include file="../../_inc/admintitle_write.jsp" %>
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
</div>	<div id="contents">
		<ol class="loca">
			<li><img class="mt5 mr5" src="/admin/_img/comn/home_img.png" alt="나의설정"/> 홈</li>
			<li>공지관리</li>
			<li>공지수정</li>
		</ol>

			<h2>공지관리</h2>
			<div class="ta_cont mt20">
				<form name="frm" id="frm" method="post" action="notice_proc.php" enctype="multipart/form-data"> 
					<input type="hidden" name="SubmitMode" id="SubmitMode" value="new"/>
					<input type="hidden" name="code" value="1">
					<input type="hidden" name="idx" value="">
					<input type="hidden" name="page" value="1">
					<input type="hidden" name="size" value="10">
					<input type="hidden" name="sch_field" value="">
					<input type="hidden" name="sch_word" value="">
					<input type="hidden" name="sch_use_yn" value="">
					<input type="hidden" name="sch_main_yn" value="">
					<input type="hidden" name="board_div" value="notice">

					<table class="bbs_write">
						<colgroup><col width="160px"><col width=""></colgroup>
						<tbody>
                       	<tr>
							<th>공지<span class="star">*</span></th>
							<td>
								<label><input type="radio" name="noti_yn" id="noti_yn" value="1" /> 중요</label>
								<label><input type="radio" name="noti_yn" id="noti_yn" value="0"/> 일반</label>	
							</td>
						</tr>
	
						<tr>
							<th>제목<span class="star">*</span></th>
							<td>
								<input class="nor" type="text" name="subject" id="subject" value="" style="width:1200px" msg="제목을"/>
							</td>
						</tr>
						<tr>
							<th>내용<span class="star">*</span></th>
							<td>
<!-- ������ �����̳� ���� -->
	<div id="tx_trex_container1" class="tx-editor-container" style="padding-right: 15px;max-width:800px;">
		<!-- ���̵�� -->
		<div id="tx_sidebar1" class="tx-sidebar">
			<div class="tx-sidebar-boundary">
				<!-- ���̵�� / ÷�� -->
				<!--ul class="tx-bar tx-bar-left tx-nav-attach">						
					<li class="tx-list">
						<div unselectable="on" id="tx_image" class="tx-image tx-btn-trans">
							<a href="javascript:;" title="����" class="tx-text">����</a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" id="tx_file" class="tx-file tx-btn-trans">
							<a href="javascript:;" title="����" class="tx-text">����</a>
						</div>
					</li>
					<li class="tx-list">
						<div unselectable="on" id="tx_media" class="tx-media tx-btn-trans">
							<a href="javascript:;" title="�ܺ�������" class="tx-text">�ܺ�������</a>
						</div>
					</li>
					<li class="tx-list tx-list-extra">
						<div unselectable="on" class="tx-btn-nlrbg tx-extra">
							<a href="javascript:;" class="tx-icon" title="��ư ������">��ư ������</a>
						</div>
						<ul class="tx-extra-menu tx-menu" style="left:-48px;" unselectable="on">
						</ul>
					</li>
				</ul-->
				<!-- ���̵�� / �������� -->
				<ul class="tx-bar tx-bar-right">
					<li class="tx-list">
						<div unselectable="on" class="tx-btn-lrbg tx-fullscreen" id="tx_fullscreen1">
							<a href="javascript:;" class="tx-icon" title="�аԾ��� (Ctrl+M)">�аԾ���</a>
						</div>
					</li>
				</ul>
				<ul class="tx-bar tx-bar-right tx-nav-opt">
					<li class="tx-list">
						<div unselectable="on" class="tx-switchtoggle" id="tx_switchertoggle1">
							<a href="javascript:;" title="������ Ÿ��">������</a>
						</div>
					</li>
				</ul>
			</div>
		</div>

		<!-- ���� - �⺻ ���� -->
		<!--
			@decsription
			���� ��ư�� �׷����� ������ �ʿ��� ���� ��ġ(����, ���, ������) �� ���� <li> �Ʒ��� <div>�� Ŭ�������� �����ϸ� �ȴ�.
			tx-btn-lbg: ����, tx-btn-bg: ���, tx-btn-rbg: ������, tx-btn-lrbg: �������� �׷�

			��Ӵٿ� ��ư�� ũ�⸦ �����ϰ��� �� ��쿡�� ���̿� ���� <li> �Ʒ��� <div>�� Ŭ�������� �����ϸ� �ȴ�.
			tx-slt-70bg, tx-slt-59bg, tx-slt-42bg, tx-btn-43lrbg, tx-btn-52lrbg, tx-btn-57lrbg, tx-btn-71lrbg
			tx-btn-48lbg, tx-btn-48rbg, tx-btn-30lrbg, tx-btn-46lrbg, tx-btn-67lrbg, tx-btn-49lbg, tx-btn-58bg, tx-btn-46bg, tx-btn-49rbg
		-->
		<div id="tx_toolbar_basic1" class="tx-toolbar tx-toolbar-basic"><div class="tx-toolbar-boundary">
			<ul class="tx-bar tx-bar-left">
				<li class="tx-list">
					<div id="tx_fontfamily1" unselectable="on" class="tx-slt-70bg tx-fontfamily">
						<a href="javascript:;" title="�۲�">����</a>
					</div>
					<div id="tx_fontfamily_menu1" class="tx-fontfamily-menu tx-menu" unselectable="on"></div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left">
				<li class="tx-list">
					<div unselectable="on" class="tx-slt-42bg tx-fontsize" id="tx_fontsize1">
						<a href="javascript:;" title="����ũ��">9pt</a>
					</div>
					<div id="tx_fontsize_menu1" class="tx-fontsize-menu tx-menu" unselectable="on"></div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left tx-group-font">

				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-lbg 	tx-bold" id="tx_bold1">
						<a href="javascript:;" class="tx-icon" title="���� (Ctrl+B)">����</a>
					</div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-bg 	tx-underline" id="tx_underline1">
						<a href="javascript:;" class="tx-icon" title="���� (Ctrl+U)">����</a>
					</div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-bg 	tx-italic" id="tx_italic1">
						<a href="javascript:;" class="tx-icon" title="����� (Ctrl+I)">�����</a>
					</div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-bg 	tx-strike" id="tx_strike1">
						<a href="javascript:;" class="tx-icon" title="��Ҽ� (Ctrl+D)">��Ҽ�</a>
					</div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-slt-tbg 	tx-forecolor" id="tx_forecolor1">
						<a href="javascript:;" class="tx-icon" title="���ڻ�">���ڻ�</a>
						<a href="javascript:;" class="tx-arrow" title="���ڻ� ����">���ڻ� ����</a>
					</div>
					<div id="tx_forecolor_menu1" class="tx-menu tx-forecolor-menu tx-colorpallete"
						 unselectable="on"></div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-slt-brbg 	tx-backcolor" id="tx_backcolor1">
						<a href="javascript:;" class="tx-icon" title="���� ����">���� ����</a>
						<a href="javascript:;" class="tx-arrow" title="���� ���� ����">���� ���� ����</a>
					</div>
					<div id="tx_backcolor_menu1" class="tx-menu tx-backcolor-menu tx-colorpallete"
						 unselectable="on"></div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left tx-group-align">
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-lbg 	tx-alignleft" id="tx_alignleft1">
						<a href="javascript:;" class="tx-icon" title="�������� (Ctrl+,)">��������</a>
					</div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-bg 	tx-aligncenter" id="tx_aligncenter1">
						<a href="javascript:;" class="tx-icon" title="������� (Ctrl+.)">�������</a>
					</div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-bg 	tx-alignright" id="tx_alignright1">
						<a href="javascript:;" class="tx-icon" title="���������� (Ctrl+/)">����������</a>
					</div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-rbg 	tx-alignfull" id="tx_alignfull1">
						<a href="javascript:;" class="tx-icon" title="��������">��������</a>
					</div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left tx-group-tab">
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-lbg 	tx-indent" id="tx_indent1">
						<a href="javascript:;" title="�鿩���� (Tab)" class="tx-icon">�鿩����</a>
					</div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-rbg 	tx-outdent" id="tx_outdent1">
						<a href="javascript:;" title="����� (Shift+Tab)" class="tx-icon">�����</a>
					</div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left tx-group-list">
				<li class="tx-list">
					<div unselectable="on" class="tx-slt-31lbg tx-lineheight" id="tx_lineheight1">
						<a href="javascript:;" class="tx-icon" title="�ٰ���">�ٰ���</a>
						<a href="javascript:;" class="tx-arrow" title="�ٰ���">�ٰ��� ����</a>
					</div>
					<div id="tx_lineheight_menu1" class="tx-lineheight-menu tx-menu" unselectable="on"></div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="tx-slt-31rbg tx-styledlist" id="tx_styledlist1">
						<a href="javascript:;" class="tx-icon" title="����Ʈ">����Ʈ</a>
						<a href="javascript:;" class="tx-arrow" title="����Ʈ">����Ʈ ����</a>
					</div>
					<div id="tx_styledlist_menu1" class="tx-styledlist-menu tx-menu" unselectable="on"></div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left tx-group-etc">
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-lbg 	tx-emoticon" id="tx_emoticon1">
						<a href="javascript:;" class="tx-icon" title="�̸�Ƽ��">�̸�Ƽ��</a>
					</div>
					<div id="tx_emoticon_menu1" class="tx-emoticon-menu tx-menu" unselectable="on"></div>
				</li>
				<!--li class="tx-list">
					<div unselectable="on" class="		 tx-btn-bg 	tx-link" id="tx_link">
						<a href="javascript:;" class="tx-icon" title="��ũ (Ctrl+K)">��ũ</a>
					</div>
					<div id="tx_link_menu" class="tx-link-menu tx-menu"></div>
				</li-->
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-bg 	tx-specialchar" id="tx_specialchar1">
						<a href="javascript:;" class="tx-icon" title="Ư������">Ư������</a>
					</div>
					<div id="tx_specialchar_menu1" class="tx-specialchar-menu tx-menu"></div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-bg 	tx-table" id="tx_table1">
						<a href="javascript:;" class="tx-icon" title="ǥ�����">ǥ�����</a>
					</div>
					<div id="tx_table_menu1" class="tx-table-menu tx-menu" unselectable="on">
						<div class="tx-menu-inner">
							<div class="tx-menu-preview"></div>
							<div class="tx-menu-rowcol"></div>
							<div class="tx-menu-deco"></div>
							<div class="tx-menu-enter"></div>
						</div>
					</div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-rbg 	tx-horizontalrule" id="tx_horizontalrule1">
						<a href="javascript:;" class="tx-icon" title="���м�">���м�</a>
					</div>
					<div id="tx_horizontalrule_menu1" class="tx-horizontalrule-menu tx-menu" unselectable="on"></div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left">
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-lbg 	tx-richtextbox" id="tx_richtextbox1">
						<a href="javascript:;" class="tx-icon" title="�ۻ���">�ۻ���</a>
					</div>
					<div id="tx_richtextbox_menu1" class="tx-richtextbox-menu tx-menu">
						<div class="tx-menu-header">
							<div class="tx-menu-preview-area">
								<div class="tx-menu-preview"></div>
							</div>
							<div class="tx-menu-switch">
								<div class="tx-menu-simple tx-selected"><a><span>���� ����</span></a></div>
								<div class="tx-menu-advanced"><a><span>���� ����</span></a></div>
							</div>
						</div>
						<div class="tx-menu-inner">
						</div>
						<div class="tx-menu-footer">
							<img class="tx-menu-confirm"
								 src="/admin/daumeditor/images/icon/editor/btn_confirm.gif?rv=1.0.1" alt=""/>
							<img class="tx-menu-cancel" hspace="3"
								 src="/admin/daumeditor/images/icon/editor/btn_cancel.gif?rv=1.0.1" alt=""/>
						</div>
					</div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-bg 	tx-quote" id="tx_quote1">
						<a href="javascript:;" class="tx-icon" title="�ο뱸 (Ctrl+Q)">�ο뱸</a>
					</div>
					<div id="tx_quote_menu1" class="tx-quote-menu tx-menu" unselectable="on"></div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-bg 	tx-background" id="tx_background1">
						<a href="javascript:;" class="tx-icon" title="����">����</a>
					</div>
					<div id="tx_background_menu1" class="tx-menu tx-background-menu tx-colorpallete"
						 unselectable="on"></div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-rbg 	tx-dictionary" id="tx_dictionary1">
						<a href="javascript:;" class="tx-icon" title="����">����</a>
					</div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left tx-group-undo">
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-lbg 	tx-undo" id="tx_undo1">
						<a href="javascript:;" class="tx-icon" title="������� (Ctrl+Z)">�������</a>
					</div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-rbg 	tx-redo" id="tx_redo1">
						<a href="javascript:;" class="tx-icon" title="�ٽý��� (Ctrl+Y)">�ٽý���</a>
					</div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left tx-group-undo">
				<li class="tx-list">
					<div unselectable="on"  id="tx_image1" class="tx-image tx-btn-trans" seq="1">
						<a href="javascript:;" title="����" class="tx-text">����</a>
					</div>
				</li>
			</ul>
			<!--ul class="tx-bar tx-bar-left">
				<li class="tx-list">
					<div unselectable="on" class="tx-slt-31lbg tx-paste" id="tx_paste">
						<a href="javascript:;" class="tx-icon" title="�ٿ��ֱ�">�ٿ��ֱ�</a>
						<a href="javascript:;" class="tx-arrow" title="�ٿ��ֱ�">�ٿ��ֱ� ����</a>
					</div>
					<div id="tx_paste_menu" class="tx-paste-menu tx-menu" unselectable="on"></div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="		 tx-btn-bg 	tx-codehighlight" id="tx_codehighlight">
						<a href="javascript:;" class="tx-icon" title="�ڵ����">�ڵ����</a>
					</div>
				</li>
			</ul-->
			<ul class="tx-bar tx-bar-right">
				<li class="tx-list">
					<div unselectable="on" class="tx-btn-nlrbg tx-advanced" id="tx_advanced1">
						<a href="javascript:;" class="tx-icon" title="���� ������">���� ������</a>
					</div>
				</li>
			</ul>
		</div></div>
		<!-- ���� - �⺻ �� -->
		<!-- ���� - ������ ���� -->
		<div id="tx_toolbar_advanced1" class="tx-toolbar tx-toolbar-advanced"><div class="tx-toolbar-boundary">
			<ul class="tx-bar tx-bar-left">
				<li class="tx-list">
					<div class="tx-tableedit-title"></div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left tx-group-align">
				<li class="tx-list">
					<div unselectable="on" class="tx-btn-lbg tx-mergecells" id="tx_mergecells1">
						<a href="javascript:;" class="tx-icon2" title="����">����</a>
					</div>
					<div id="tx_mergecells_menu1" class="tx-mergecells-menu tx-menu" unselectable="on"></div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="tx-btn-bg tx-insertcells" id="tx_insertcells1">
						<a href="javascript:;" class="tx-icon2" title="����">����</a>
					</div>
					<div id="tx_insertcells_menu1" class="tx-insertcells-menu tx-menu" unselectable="on"></div>
				</li>
				<li class="tx-list">
					<div unselectable="on" class="tx-btn-rbg tx-deletecells" id="tx_deletecells1">
						<a href="javascript:;" class="tx-icon2" title="����">����</a>
					</div>
					<div id="tx_deletecells_menu1" class="tx-deletecells-menu tx-menu" unselectable="on"></div>
				</li>
			</ul>

			<ul class="tx-bar tx-bar-left tx-group-align">
				<li class="tx-list">
					<div id="tx_cellslinepreview1" unselectable="on" class="tx-slt-70lbg tx-cellslinepreview">
						<a href="javascript:;" title="�� �̸�����"></a>
					</div>
					<div id="tx_cellslinepreview_menu1" class="tx-cellslinepreview-menu tx-menu"
						 unselectable="on"></div>
				</li>
				<li class="tx-list">
					<div id="tx_cellslinecolor1 " unselectable="on" class="tx-slt-tbg tx-cellslinecolor">
						<a href="javascript:;" class="tx-icon2" title="����">����</a>

						<div class="tx-colorpallete" unselectable="on"></div>
					</div>
					<div id="tx_cellslinecolor_menu1" class="tx-cellslinecolor-menu tx-menu tx-colorpallete"
						 unselectable="on"></div>
				</li>
				<li class="tx-list">
					<div id="tx_cellslineheight1" unselectable="on" class="tx-btn-bg tx-cellslineheight">
						<a href="javascript:;" class="tx-icon2" title="�β�">�β�</a>

					</div>
					<div id="tx_cellslineheight_menu1" class="tx-cellslineheight-menu tx-menu"
						 unselectable="on"></div>
				</li>
				<li class="tx-list">
					<div id="tx_cellslinestyle1" unselectable="on" class="tx-btn-bg tx-cellslinestyle">
						<a href="javascript:;" class="tx-icon2" title="��Ÿ��">��Ÿ��</a>
					</div>
					<div id="tx_cellslinestyle_menu1" class="tx-cellslinestyle-menu tx-menu" unselectable="on"></div>
				</li>
				<li class="tx-list">
					<div id="tx_cellsoutline1 unselectable="on" class="tx-btn-rbg tx-cellsoutline">
						<a href="javascript:;" class="tx-icon2" title="�׵θ�">�׵θ�</a>

					</div>
					<div id="tx_cellsoutline_menu1" class="tx-cellsoutline-menu tx-menu" unselectable="on"></div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left">
				<li class="tx-list">
					<div id="tx_tablebackcolor1" unselectable="on" class="tx-btn-lrbg tx-tablebackcolor"
						 style="background-color:#9aa5ea;">
						<a href="javascript:;" class="tx-icon2" title="���̺� ����">���̺� ����</a>
					</div>
					<div id="tx_tablebackcolor_menu1" class="tx-tablebackcolor-menu tx-menu tx-colorpallete"
						 unselectable="on"></div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left">
				<li class="tx-list">
					<div id="tx_tabletemplate1" unselectable="on" class="tx-btn-lrbg tx-tabletemplate">
						<a href="javascript:;" class="tx-icon2" title="���̺� ����">���̺� ����</a>
					</div>
					<div id="tx_tabletemplate_menu1" class="tx-tabletemplate-menu tx-menu tx-colorpallete"
						 unselectable="on"></div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left">
				<li class="tx-list">
					<div id="tx_tableresize1" unselectable="on" class="tx-btn-lrbg tx-tableresize">
						<a href="javascript:;" class="tx-icon2" title="���̺� ����">���̺� ����</a>
					</div>
					<div id="tx_tableresize_menu1" class="tx-tableresize-menu tx-menu tx-colorpallete"
						 unselectable="on"></div>
				</li>
			</ul>
			<ul class="tx-bar tx-bar-left">
				<li class="tx-list">
					<div id="tx_tablevalign1" unselectable="on" class="tx-btn-lrbg tx-tablevalign">
						<a href="javascript:;" class="tx-icon2" title="���̺� ����">���̺� ����</a>
					</div>
					<div id="tx_tablevalign_menu1" class="tx-tablevalign-menu tx-menu"
						 unselectable="on"></div>
				</li>
			</ul>

		</div></div>
<!-- ���� - ������ �� -->
<!-- �������� ���� -->
	<!-- ������ Start -->
	<div id="tx_canvas1" class="tx-canvas">
		<div id="tx_loading1" class="tx-loading"><div><img src="/admin/daumeditor/images/icon/editor/loading2.png" width="113" height="21" align="absmiddle"/></div></div>
		<div id="tx_canvas_wysiwyg_holder1" class="tx-holder" style="display:block;">
			<iframe id="tx_canvas_wysiwyg1" name="tx_canvas_wysiwyg" allowtransparency="true" frameborder="0"></iframe>
		</div>
		<div class="tx-source-deco">
			<div id="tx_canvas_source_holder1" class="tx-holder">
				<textarea id="tx_canvas_source1" rows="30" cols="30"></textarea>
			</div>
		</div>
		<div id="tx_canvas_text_holder1" class="tx-holder">
			<textarea id="tx_canvas_text1" rows="30" cols="30"></textarea>
		</div>
	</div>
					<!-- �������� Start -->
	<div id="tx_resizer1" class="tx-resize-bar">
		<div class="tx-resize-bar-bg"></div>
		<img id="tx_resize_holder1" src="/admin/daumeditor/images/icon/editor/skin/01/btn_drag01.gif" width="58" height="12" unselectable="on" alt="" />
	</div>
	<!--div class="tx-side-bi" id="tx_side_bi1">
		<div style="text-align: right;">
			<img hspace="4" height="14" width="78" align="absmiddle" src="/admin/daumeditor/images/icon/editor/editor_bi.png" />
		</div>
	</div-->
	<!-- �������� �� -->
<!-- ÷�ιڽ� ���� -->
	<!-- ����÷�ιڽ� Start -->
	<div style="display:none">
	<div id="tx_attach_div1" class="tx-attach-div">
		<div id="tx_attach_txt1" class="tx-attach-txt">���� ÷��</div>
		<div id="tx_attach_box1" class="tx-attach-box">
			<div class="tx-attach-box-inner">
				<div id="tx_attach_preview1" class="tx-attach-preview"><p></p><img src="/admin/daumeditor/images/icon/editor/pn_preview.gif" w4th="147" height="108" unselectable="on"/></div>
				<div class="tx-attach-main">
					<div id="tx_upload_progress1" class="tx-upload-progress"><div>0%</div><p>������ ���ε��ϴ� ���Դϴ�.</p></div>
					<ul class="tx-attach-top">
						<li id="tx_attach_delete1" class="tx-attach-delete"><a>��ü����</a></li>
						<li id="tx_attach_size1" class="tx-attach-size">
							����: <span id="tx_attach_up_size1" class="tx-attach-size-up"></span>/<span id="tx_attach_max_size1"></span>
						</li>
						<li id="tx_attach_tools1" class="tx-attach-tools">
						</li>
					</ul>
					<ul id="tx_attach_list1" class="tx-attach-list"></ul>
				</div>
			</div>
		</div>
	</div>
	</div>
<!-- ÷�ιڽ� �� -->
</div>		

<textarea id="daumDefault1" name="content" style="display:none;"></textarea>
<!-- ������ �����̳� �� -->
<script>
config[1] = {
		txHost: '', /* ��Ÿ�� �� ���ҽ����� �ε��� �� �ʿ��� �κ�����, ��ΰ� ����Ǹ� �� �κ� ������ �ʿ�. ex) http://xxx.xxx.com */
		txPath: '', /* ��Ÿ�� �� ���ҽ����� �ε��� �� �ʿ��� �κ�����, ��ΰ� ����Ǹ� �� �κ� ������ �ʿ�. ex) /xxx/xxx/ */
		txService: 'sample', /* �����ʿ����. */
		txProject: 'sample', /* �����ʿ����. ������Ʈ�� �������� ��츸 �����Ѵ�. */
		initializedId: "1", /* ��κ��� ��쿡 ���ڿ� */
		wrapper: "tx_trex_container1", /* �����͸� �ѷ��ΰ� �ִ� ���̾� �̸�(������ �����̳�) */
		form: 'frm'+"", /* ����ϱ� ���� Form �̸� */
		txIconPath: "/admin/daumeditor/images/icon/editor/", /*�����Ϳ� ���Ǵ� �̹��� ���͸�, �ʿ信 ���� �����Ѵ�. */
		txDecoPath: "/admin/daumeditor/images/deco/contents/", /*������ ���Ǵ� �̹��� ���͸�, ���񽺿��� ����� ���� �ϼ��� �������� �����Ǳ� ���� �����η� �����Ѵ�. */
		areaHeight: "200",
		daumName: "content",
		canvas: {
            exitEditor:{
                /*
                desc:'���� �����÷��� shift+b�� ��������.',
                hotKey: {
                    shiftKey:true,
                    keyCode:66
                },
                nextElement: document.getElementsByTagName('button')[0]
                */
            },
			styles: {
				color: "#123456", /* �⺻ ���ڻ� */
				fontFamily: "����", /* �⺻ ����ü */
				fontSize: "10pt", /* �⺻ ����ũ�� */
				backgroundColor: "#fff", /*�⺻ ���� */
				lineHeight: "1.5", /*�⺻ �ٰ��� */
				padding: "8px" /* ������ ������ ���� */
			},
			showGuideArea: false,
            autolink: false
		},
		events: {
			preventUnload: false
		},
		sidebar: {
			attachbox: {
				show: true,
				confirmForDeleteAll: true
			}
		},
		size: {
			contentWidth: 700 /* ������ ���������� ���̰� ���� ��쿡 ���� */
		},
        toolbar: {
            codehighlight: {
                styleSheetUrl: ["http://google-code-prettify.googlecode.com/svn/trunk/src/prettify.css"],
                highlight: function(code){
                    return prettyPrintOne(code);
                }
            },
            paste: {
//                defaultMode: Trex.Paste.MODE_HTML
            }
        }
	};

</script>
							</td>
						</tr>
						<!--tr>
							<th>이미지 첨부파일</th>
							<td>
								<p><input type='file'  name='img_1' style='height:25px;padding:0 0 0 0;' /></p>								<p class="img_size">브로슈어 권장사이즈 (270px*360px), 최대 5MB</p>
							</td>
						</tr-->
						<tr>
							<th>첨부파일 업로드</th>
							<td>
								<p><input type='file'  name='file_1' style='height:25px;padding:0 0 0 0;' /></p>								<p class="img_size">최대 2GB</p>
							</td>
						</tr>
						<tr>
							<th>사용여부<span class="star">*</span></th>
							<td>
								<select name="use_yn" id="use_yn" >
																		<option value='Y' >사용</option>
									<option value='N' >미사용</option>
								</select>
							</td>
						</tr>
						<!--tr>
							<th>메인 등록여부<span class="star">*</span></th>
							<td>
								<select name="main_yn" id="main_yn" >
									<option value='Y' >사용</option>
									<option value='N' >미사용</option>
								</select>
							</td>
						</tr-->
					</tbody>
				</table>				
			</div>

			<p class="c mt20">
				<a id="gBtn1" href="notice_list.php" class="b_btn_big">목록으로</a>
									<a href="javascript:void(0);" onclick="fn_submit();" class="y_btn_big">등록하기</a>
							</p>

			</div>
		</div>

	</div>
<%@ include file="../../_inc/adminfooter.jsp" %>
</body>

</html>


