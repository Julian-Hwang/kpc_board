package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.NoticeService;
import egovframework.example.sample.service.NoticeVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("NoticeService")
public class NoticeServiceImpl implements NoticeService {

	@Resource(name="NoticeDAO")
	private NoticeDAO NoticeDAO;
	
	@Override
	public List<EgovMap> list(NoticeVO noticeVO) throws Exception {
		// TODO Auto-generated method stub
		return (List<EgovMap>) NoticeDAO.list(noticeVO);
	}

	@Override
	public EgovMap select(NoticeVO noticeVO) throws Exception {
		// TODO Auto-generated method stub
		return (EgovMap) NoticeDAO.select(noticeVO);
	}

}
