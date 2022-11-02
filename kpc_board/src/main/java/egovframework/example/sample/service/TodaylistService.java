package egovframework.example.sample.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface TodaylistService {

	public List<EgovMap> list(TodaylistVO todaylistVO) throws Exception;
	
	public EgovMap select(TodaylistVO todaylistVO) throws Exception;
}
