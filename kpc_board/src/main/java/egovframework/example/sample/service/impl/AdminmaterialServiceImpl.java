package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.AdminmaterialService;
import egovframework.example.sample.service.AdminmaterialVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("AdminmaterialService")
public class AdminmaterialServiceImpl implements AdminmaterialService {

	@Resource(name="AdminmaterialDAO")
	private AdminmaterialDAO AdminmaterialDAO;
	
	@Override
	public List<EgovMap> list(AdminmaterialVO adminmaterialVO) throws Exception {
		// TODO Auto-generated method stub
		return (List<EgovMap>) AdminmaterialDAO.list(adminmaterialVO);
	}

	@Override
	public void insert(AdminmaterialVO adminmaterialVO) throws Exception {
		// TODO Auto-generated method stub
		AdminmaterialDAO.insert(adminmaterialVO);
	}

	@Override
	public EgovMap select(AdminmaterialVO adminmaterialVO) throws Exception {
		// TODO Auto-generated method stub
		return (EgovMap) AdminmaterialDAO.select(adminmaterialVO);
	}

	@Override
	public int update(AdminmaterialVO adminmaterialVO) throws Exception {
		// TODO Auto-generated method stub
		return AdminmaterialDAO.update(adminmaterialVO);
	}

	@Override
	public void delete(AdminmaterialVO adminmaterialVO) throws Exception {
		// TODO Auto-generated method stub
		AdminmaterialDAO.delete(adminmaterialVO);
	}

}
