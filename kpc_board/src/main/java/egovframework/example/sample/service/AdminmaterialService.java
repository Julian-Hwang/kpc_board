package egovframework.example.sample.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface AdminmaterialService {

	public List<EgovMap> list(AdminmaterialVO adminmaterialVO) throws Exception;
	
	public void insert(AdminmaterialVO adminmaterialVO) throws Exception;
	
	public EgovMap select(AdminmaterialVO adminmaterialVO) throws Exception;
	
	public int update(AdminmaterialVO adminmaterialVO) throws Exception;
	
	public void delete(AdminmaterialVO adminmaterialVO) throws Exception;
}
