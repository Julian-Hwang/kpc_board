package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.AdmineduService;
import egovframework.example.sample.service.AdmineduVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("AdmineduService")
public class AdmineduServiceImpl implements AdmineduService {

	@Resource(name="AdmineduDAO")
	private AdmineduDAO AdmineduDAO;
	
	@Override
	public List<EgovMap> list(AdmineduVO admineduVO) throws Exception {
		// TODO Auto-generated method stub
		return (List<EgovMap>) AdmineduDAO.list(admineduVO);
	}

	@Override
	public void insert(AdmineduVO admineduVO) throws Exception {
		// TODO Auto-generated method stub
		AdmineduDAO.insert(admineduVO);
	}

	@Override
	public EgovMap select(AdmineduVO admineduVO) throws Exception {
		// TODO Auto-generated method stub
		return (EgovMap) AdmineduDAO.select(admineduVO);
	}

	@Override
	public int update(AdmineduVO admineduVO) throws Exception {
		// TODO Auto-generated method stub
		return AdmineduDAO.update(admineduVO);
	}

	@Override
	public void delete(AdmineduVO admineduVO) throws Exception {
		// TODO Auto-generated method stub
		AdmineduDAO.delete(admineduVO);
	}

}
