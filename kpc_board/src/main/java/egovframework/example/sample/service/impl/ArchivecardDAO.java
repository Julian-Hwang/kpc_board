package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.ArchivecardVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("ArchivecardDAO")
public class ArchivecardDAO extends EgovAbstractDAO {

	public List<EgovMap> list(ArchivecardVO archivecardVO){
		return (List<EgovMap>) list("ArchivecardDAO.list", archivecardVO);
	}
	
	public EgovMap select(ArchivecardVO archivecardVO){
		return (EgovMap) select("ArchivecardDAO.select",archivecardVO);
	}
}
