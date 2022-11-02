package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.ProgramqnalistVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("ProgramqnalistDAO")
public class ProgramqnalistDAO extends EgovAbstractDAO{

	public List<EgovMap> list(ProgramqnalistVO programqnalistVO){
		return (List<EgovMap>) list("ProgramqnalistDAO.list", programqnalistVO);
	}
	
	public EgovMap select(ProgramqnalistVO programqnalistVO){
		return (EgovMap) select("ProgramqnalistDAO.select", programqnalistVO);
	}
}
