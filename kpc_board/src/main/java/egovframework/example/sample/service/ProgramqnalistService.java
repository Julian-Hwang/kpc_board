package egovframework.example.sample.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ProgramqnalistService {

	public List<EgovMap> list(ProgramqnalistVO programqnalistVO) throws Exception;
	
	public EgovMap select(ProgramqnalistVO programqnalistVO) throws Exception;
}
