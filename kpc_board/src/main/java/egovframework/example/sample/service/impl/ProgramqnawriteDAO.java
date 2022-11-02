package egovframework.example.sample.service.impl;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.ProgramqnawriteVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;

@Repository("ProgramqnawriteDAO")
public class ProgramqnawriteDAO extends EgovAbstractDAO{

	/*public void insert(ProgramqnawriteVO programqnawriteVO){
		insert("ProgramqnawriteDAO.insert", programqnawriteVO);
	}*/

	public String insertQna(ProgramqnawriteVO programqnawriteVO) {
		return (String) insert("ProgramqnawriteDAO.insertQna", programqnawriteVO);
	}
}
