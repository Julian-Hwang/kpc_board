package egovframework.example.sample.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ProgramcourseService {

	public List<EgovMap> list(ProgramcourseVO programcourseVO) throws Exception;
	
	public EgovMap select(ProgramcourseVO programcourseVO) throws Exception;
}
