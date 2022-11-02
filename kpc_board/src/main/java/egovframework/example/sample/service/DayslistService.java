package egovframework.example.sample.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface DayslistService {

	public List<EgovMap> list(DayslistVO dayslistVO) throws Exception;
	
	public EgovMap select(DayslistVO dayslistVO) throws Exception;
}
