package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.ProgramcourseVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("ProgramcourseDAO")
public class ProgramcourseDAO extends EgovAbstractDAO{

	public List<EgovMap> list(ProgramcourseVO programcourseVO){
		return (List<EgovMap>) list("ProgramcourseDAO.list", programcourseVO);
	}
	
	public EgovMap select(ProgramcourseVO programcourseVO){
		return (EgovMap) select("ProgramcourseDAO.select", programcourseVO);
	}
}
