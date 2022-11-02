package egovframework.example.sample.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface NoticeService {

	public List<EgovMap> list(NoticeVO noticeVO) throws Exception;
	
	public EgovMap select(NoticeVO noticeVO) throws Exception;
}
