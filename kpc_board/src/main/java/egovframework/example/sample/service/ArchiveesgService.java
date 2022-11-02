package egovframework.example.sample.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ArchiveesgService {

	public List<EgovMap> list(ArchiveesgVO archiveesgVO) throws Exception;
	
	public EgovMap select(ArchiveesgVO archiveesgVO) throws Exception;
}
