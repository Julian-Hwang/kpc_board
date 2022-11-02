package egovframework.example.sample.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ArchivecardService {

	public List<EgovMap> list(ArchivecardVO archivecardVO) throws Exception;
	
	public EgovMap select(ArchivecardVO archivecardVO) throws Exception;
}
