package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.AdminmaterialVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("AdminmaterialDAO")
public class AdminmaterialDAO extends EgovAbstractDAO{

	public List<EgovMap> list(AdminmaterialVO vo){
		return (List<EgovMap>) list("AdminmaterialDAO.list",vo);
	}
	
	public void insert(AdminmaterialVO vo){
		insert("AdminmaterialDAO.insert",vo);
	}
	
	public EgovMap select(AdminmaterialVO vo){
		return (EgovMap) select("AdminmaterialDAO.select",vo);
	}
	
	public int update(AdminmaterialVO vo){
		return update("AdminmaterialDAO.update",vo);
	}
	
	public void delete(AdminmaterialVO vo){
		delete("AdminmaterialDAO.delete",vo);
	}
}
