package egovframework.example.sample.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.ProgramqnawriteService;
import egovframework.example.sample.service.ProgramqnawriteVO;

@Service("ProgramqnawriteService")
public class ProgramqnawriteServiceImpl implements ProgramqnawriteService {

	@Resource(name="ProgramqnawriteDAO")
	private ProgramqnawriteDAO ProgramqnawriteDAO;
	
//	@Override
//	public void insert(ProgramqnawriteVO programqnawriteVO) throws Exception {
//		// TODO Auto-generated method stub
//		dao.insert(programqnawriteVO);
//	}

	@Override
	public String insertQna(ProgramqnawriteVO programqnawriteVO) throws Exception {
		return ProgramqnawriteDAO.insertQna(programqnawriteVO);
	}

}
