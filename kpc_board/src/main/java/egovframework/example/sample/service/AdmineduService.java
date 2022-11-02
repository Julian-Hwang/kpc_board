package egovframework.example.sample.service;

import java.util.List;

import egovframework.rte.psl.dataaccess.util.EgovMap;

public interface AdmineduService {

	public List<EgovMap> list(AdmineduVO admineduVO) throws Exception;

	public void insert(AdmineduVO admineduVO) throws Exception;
	
	public EgovMap select(AdmineduVO admineduVO) throws Exception;
	
	public int update(AdmineduVO admineduVO) throws Exception;
	
	public void delete(AdmineduVO admineduVO) throws Exception;
}
