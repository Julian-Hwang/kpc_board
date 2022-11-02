package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.TodaylistVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("TodaylistDAO")
public class TodaylistDAO extends EgovAbstractDAO{

	public List<EgovMap> list(TodaylistVO todaylistVO){
		return (List<EgovMap>) list("TodaylistDAO.list", todaylistVO);
	}
	
	public EgovMap select(TodaylistVO todaylistVO){
		return (EgovMap) select("TodaylistDAO.select",todaylistVO);
	}
}
