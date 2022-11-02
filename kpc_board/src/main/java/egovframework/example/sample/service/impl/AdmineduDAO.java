package egovframework.example.sample.service.impl;

import java.util.List;

import org.springframework.stereotype.Repository;

import egovframework.example.sample.service.AdmineduVO;
import egovframework.rte.psl.dataaccess.EgovAbstractDAO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Repository("AdmineduDAO")
public class AdmineduDAO extends EgovAbstractDAO {

	public List<EgovMap> list(AdmineduVO admineduVO){
		return (List<EgovMap>) list("AdmineduDAO.list",admineduVO);
	}
	
	public void insert(AdmineduVO admineduVO){
		insert("AdmineduDAO.insert",admineduVO);
	}
	
	public EgovMap select(AdmineduVO admineduVO){
		return (EgovMap) select("AdmineduDAO.select",admineduVO);
	}
	
	public int update(AdmineduVO admineduVO){
		return update("AdmineduDAO.update",admineduVO);
	}
	
	public void delete(AdmineduVO admineduVO){
		delete("AdmineduDAO.delete",admineduVO);
	}
}
