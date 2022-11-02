package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.ArchivevideoVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("ArchivevideoDAO")
public class ArchivevideoDAO extends EgovAbstractDAO{

	public List<EgovMap> list(ArchivevideoVO archivevideoVO){
		return (List<EgovMap>) list("ArchivevideoDAO.list", archivevideoVO);
	}
	
	public EgovMap select(ArchivevideoVO archivevideoVO){
		return (EgovMap) select("ArchivevideoDAO.select",archivevideoVO);
	}
}
