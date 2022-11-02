package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.DayslistVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("DayslistDAO")
public class DayslistDAO extends EgovAbstractDAO{

	public List<EgovMap> list(DayslistVO dayslistVO){
		return (List<EgovMap>) list("DayslistDAO.list", dayslistVO);
	}
	
	public EgovMap select(DayslistVO dayslistVO){
		return (EgovMap) select("DayslistDAO.select",dayslistVO);
	}
}
