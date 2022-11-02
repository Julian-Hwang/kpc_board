package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.NoticeVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("NoticeDAO")
public class NoticeDAO extends EgovAbstractDAO{

	public List<EgovMap> list(NoticeVO noticeVO){
		return (List<EgovMap>) list("NoticeDAO.list", noticeVO);
	}
	
	public EgovMap select(NoticeVO noticeVO){
		return (EgovMap) select("NoticeDAO.select", noticeVO);
	}
}
