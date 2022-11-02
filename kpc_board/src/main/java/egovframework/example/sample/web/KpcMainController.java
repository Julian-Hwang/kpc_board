package egovframework.example.sample.web;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import egovframework.example.sample.service.AdmineduService;
import egovframework.example.sample.service.AdmineduVO;
import egovframework.example.sample.service.ArchivecardService;
import egovframework.example.sample.service.ArchivecardVO;
import egovframework.example.sample.service.ArchiveesgService;
import egovframework.example.sample.service.ArchiveesgVO;
import egovframework.example.sample.service.ArchivevideoService;
import egovframework.example.sample.service.ArchivevideoVO;
import egovframework.example.sample.service.DayslistService;
import egovframework.example.sample.service.DayslistVO;
import egovframework.example.sample.service.NoticeService;
import egovframework.example.sample.service.NoticeVO;
import egovframework.example.sample.service.ProgramcourseService;
import egovframework.example.sample.service.ProgramcourseVO;
import egovframework.example.sample.service.ProgramqnalistService;
import egovframework.example.sample.service.ProgramqnalistVO;
import egovframework.example.sample.service.ProgramqnawriteService;
import egovframework.example.sample.service.ProgramqnawriteVO;
import egovframework.example.sample.service.TodaylistService;
import egovframework.example.sample.service.TodaylistVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Controller
public class KpcMainController {
	
	@Resource(name="ArchivecardService")
	private ArchivecardService archivecardService;
	
	@Resource(name="ArchiveesgService")
	private ArchiveesgService archiveesgService;
	
	@Resource(name="ArchivevideoService")
	private ArchivevideoService archivevideoService;
	
	@Resource(name="DayslistService")
	private DayslistService dayslistService;
	
	@Resource(name="TodaylistService")
	private TodaylistService todaylistService; 
	
	@Resource(name="NoticeService")
	private NoticeService noticeService;

	@Resource(name="ProgramcourseService")
	private ProgramcourseService programcourseService;
	
	@Resource(name="ProgramqnalistService")
	private ProgramqnalistService programqnalistService;
	
	@Resource(name="ProgramqnawriteService")
	private ProgramqnawriteService programqnawriteService;
	
	@Resource(name="AdmineduService")
	private AdmineduService admineduService;
	
	@RequestMapping(value="/index.do")
	public String index(){
		return "/index/index";
	}
	
	//archive
	@RequestMapping(value="/cardnewsList.do")
	public String cardnewsList(@ModelAttribute("ArchivecardVO")ArchivecardVO archivecardVO, Model model) throws Exception{
		List<EgovMap> list = archivecardService.list(archivecardVO);
		System.err.println(list);
		model.addAttribute("list", list);
		return "/archive/cardnewsList";
	}
	
	@RequestMapping(value="/cardnewsView.do")
	public String cardnewsView(ArchivecardVO archivecardVO, Model model) throws Exception{
		EgovMap cardnews_map = archivecardService.select(archivecardVO);
		model.addAttribute("cardnews_map", cardnews_map);
		return "/archive/cardnewsView";
	}
	
	
	@RequestMapping(value="/esgdataList.do")
	public String esgdataList(@ModelAttribute("ArchiveesgVO")ArchiveesgVO archiveesgVO, Model model) throws Exception{
		List<EgovMap> list = archiveesgService.list(archiveesgVO);
		model.addAttribute("list", list);
		return "/archive/esgdataList";
	}
	
	@RequestMapping(value="/esgdataView.do")
	public String esgdataView(ArchiveesgVO archiveesgVO, Model model) throws Exception{
		EgovMap esgdata_map = archiveesgService.select(archiveesgVO);
		model.addAttribute("esgdata_map", esgdata_map);
		return "/archive/esgdataView";
	}
	
	@RequestMapping(value="/faq.do")
	public String faq(){
		return "/archive/faq";
	}
	
	@RequestMapping(value="/videoList.do")
	public String videoList(@ModelAttribute("ArchivevideoVO")ArchivevideoVO archivevideoVO, Model model) throws Exception{
		List<EgovMap> list = archivevideoService.list(archivevideoVO);
		model.addAttribute("list", list);
		
		System.err.println(list);
		
		return "/archive/videoList";
	}
	
	@RequestMapping(value="/videoView.do")
	public String videoView(ArchivevideoVO archivevideoVO, Model model) throws Exception{
		EgovMap video_map = archivevideoService.select(archivevideoVO);
		model.addAttribute("video_map", video_map);
		return "/archive/videoView";
	}
	
	//news
	@RequestMapping(value="/dayList.do")
	public String dayList(@ModelAttribute("DayslistVO")DayslistVO dayslistVO, Model model) throws Exception{
		List<EgovMap> list = dayslistService.list(dayslistVO);
		model.addAttribute("list", list);
		return "/news/dayList";
	}
	
	@RequestMapping(value="/newsList.do")
	public String newsList(@ModelAttribute("DayslistVO")DayslistVO dayslistVO, Model model_day, @ModelAttribute("TodaylistVO")TodaylistVO todaylistVO, Model model_today) throws Exception{
		List<EgovMap> daylist = dayslistService.list(dayslistVO);
		model_day.addAttribute("daylist", daylist);
		
		List<EgovMap> todaylist = todaylistService.list(todaylistVO);
		model_today.addAttribute("todaylist", todaylist);
		
		return "/news/newsList";
	}
	
	@RequestMapping(value="/todayList.do")
	public String todayList(@ModelAttribute("TodaylistVO")TodaylistVO todaylistVO, Model model) throws Exception{
		List<EgovMap> list = todaylistService.list(todaylistVO);
		model.addAttribute("list", list);
		return "/news/todayList";
	}
	
	//notice
	@RequestMapping(value="/noticeList.do")
	public String noticeList(@ModelAttribute("NoticeVO")NoticeVO noticeVO, Model model) throws Exception{
		List<EgovMap> list = noticeService.list(noticeVO);
		model.addAttribute("list", list);
		return "/notice/noticeList";
	}
	
	@RequestMapping(value="/noticeView.do")
	public String noticeView(NoticeVO noticeVO, Model model) throws Exception{
		EgovMap notice = noticeService.select(noticeVO);
		model.addAttribute("notice", notice);
		return "/notice/noticeView";
	}
	
	//program
	@RequestMapping(value="/courseList.do")
	public String courseList(@ModelAttribute("ProgramcourseVO")ProgramcourseVO programcourseVO, Model model) throws Exception{
		List<EgovMap> list = programcourseService.list(programcourseVO);
		model.addAttribute("list", list);
		return "/program/courseList";
	}
	
	@RequestMapping(value="/eduSystem.do")
	public String eduSystem(){
		return "/program/eduSystem";
	}
	
	@RequestMapping(value="/qnaList.do")
	public String qnaList(@ModelAttribute("ProgramqnalistVO")ProgramqnalistVO programqnalistVO, Model model) throws Exception{
		
		List<EgovMap> list = programqnalistService.list(programqnalistVO);
		model.addAttribute("list", list);
		
		return "/program/qnaList";
	}
	
	@RequestMapping(value="/qnaOk.do")
	public String qnaOk(){
		return "/program/qnaOk";
	}
	
	@RequestMapping(value="/qnaView.do")
	public String qnaView(ProgramqnalistVO programqnalistVO, Model model) throws Exception{
		System.err.println(programqnalistVO);
		
		EgovMap map = programqnalistService.select(programqnalistVO);
		model.addAttribute("map", map);
		System.err.println(map);
		return "/program/qnaView";
	}
	
	@RequestMapping(value="/qnaWrite.do")
	public String qnaWrite(){
		
		return "/program/qnaWrite";
	}
	
	@RequestMapping(value="/write.do")
	public String qnaWrite(@ModelAttribute("programqnawriteVO") ProgramqnawriteVO programqnawriteVO) throws Exception{
		String insertresult = programqnawriteService.insertQna(programqnawriteVO);
		String result="";
		if(insertresult == null){
			result="success";
		}
		return result;
	}
	
	//-------------------------admin board edu--------------------------------------------
	
	@RequestMapping(value="/edu_list.do")
	public String edu_list(@ModelAttribute("admineduVO")AdmineduVO admineduVO, Model model) throws Exception{
		List<EgovMap> list = admineduService.list(admineduVO);
		model.addAttribute("list", list);
		return "/admin/board/edu_list";
	}
	
	@RequestMapping(value="/edu_view.do")
	public String edu_view(AdmineduVO admineduVO, Model model) throws Exception{
		EgovMap map=admineduService.select(admineduVO);
		model.addAttribute("map", map);
		return "/admin/board/edu_view";
	}
	
	@RequestMapping(value="/edu_write.do")
	public String edu_write(){
		return "/admin/board/edu_write";
	}
	
	@RequestMapping(value="/edu_processwrite.do")
	public String edu_write(@ModelAttribute("admineduVO")AdmineduVO admineduVO) throws Exception{
		admineduService.insert(admineduVO);
		return "redirect:edu_list.do";
	}
	
	@RequestMapping(value="/edu_update.do")
	public String edu_update(AdmineduVO admineduVO, Model model)throws Exception{
		EgovMap vo = admineduService.select(admineduVO);
		model.addAttribute("vo", vo);
		return "/admin/board/edu_update";
	}
	
	@RequestMapping(value="/edu_processupdate.do")
	public String edu_update(AdmineduVO admineduVO) throws Exception{
		admineduService.update(admineduVO);
		return "redirect:edu_list.do";
	}
	
	//-------------------------admin board material--------------------------------------------
	
	@RequestMapping(value="/material_list.do")
	public String material_list(){
		return "/admin/board/material_list";
	}
	
	@RequestMapping(value="/material_view.do")
	public String material_view(){
		return "/admin/board/material_view";
	}
	
//	@RequestMapping(value="/material_write.do")
//	public String material_write(){
//		return "/admin/board/material_write";
//	}
//	
//	@RequestMapping(value="/material_processwrite.do")
//	public String material_write(){
//		return "redpirect:material_list";
//	}
//	
//	@RequestMapping(value="/material_update.do")
//	public String material_update(){
//		return "/admin/board/material_write";
//	}
//	
//	@RequestMapping(value="/material_processupdate.do")
//	public String material_update(){
//		return "redirect:material_list";
//	}
//	
//	@RequestMapping(value="/material_delete.do")
//	public String material_update(){
//		return "redirect:material_list";
//	}
	
	//-------------------------admin board news--------------------------------------------
	
	@RequestMapping(value="/news_list.do")
	public String news_list(){
		return "/admin/board/news_list";
	}
	
	@RequestMapping(value="/news_view.do")
	public String news_view(){
		return "/admin/board/news_view";
	}
	
	@RequestMapping(value="/news_write.do")
	public String news_write(){
		return "/admin/board/news_write";
	}
	
	//-------------------------admin board notice--------------------------------------------
	
	@RequestMapping(value="/notice_list.do")
	public String notice_list(){
		return "/admin/board/notice_list";
	}
	
	@RequestMapping(value="/notice_view.do")
	public String notice_view(){
		return "/admin/board/notice_view";
	}
	
	@RequestMapping(value="/notice_write.do")
	public String notice_write(){
		return "/admin/board/notice_write";
	}
	
	//-------------------------admin board qna--------------------------------------------
	
	@RequestMapping(value="/qna_list.do")
	public String qna_list(){
		return "/admin/board/qna_list";
	}
	
	//-------------------------admin category--------------------------------------------
	
	@RequestMapping(value="/category_list.do")
	public String category_list(){
		return "/admin/category/category_list";
	}
	
	@RequestMapping(value="/code_list.do")
	public String code_list(){
		return "/admin/category/code_list";
	}
	
	//-------------------------admin system--------------------------------------------
	
	@RequestMapping(value="/admin_list.do")
	public String admin_list(){
		return "/admin/system/admin_list";
	}
	
	@RequestMapping(value="/admin_write.do")
	public String admin_write(){
		return "/admin/system/admin_write";
	}
}
