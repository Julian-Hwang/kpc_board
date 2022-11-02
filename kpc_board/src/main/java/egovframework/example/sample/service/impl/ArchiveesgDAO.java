package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.ArchiveesgVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("ArchiveesgDAO")
public class ArchiveesgDAO extends EgovAbstractDAO{

	public List<EgovMap> list(ArchiveesgVO archiveesgVO){
		return (List<EgovMap>) list("ArchiveesgDAO.list", archiveesgVO);
	}
	
	public EgovMap select(ArchiveesgVO archiveesgVO){
		return (EgovMap) select("ArchiveesgDAO.select",archiveesgVO);
	}
}
