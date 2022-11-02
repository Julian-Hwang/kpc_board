package egovframework.example.sample.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface ArchivevideoService {

	public List<EgovMap> list(ArchivevideoVO archivevideoVO) throws Exception;
	
	public EgovMap select(ArchivevideoVO archivevideoVO) throws Exception;
}
