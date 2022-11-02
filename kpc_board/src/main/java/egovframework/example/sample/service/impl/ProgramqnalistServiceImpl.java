package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.ProgramqnalistService;
import egovframework.example.sample.service.ProgramqnalistVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("ProgramqnalistService")
public class ProgramqnalistServiceImpl implements ProgramqnalistService {

	@Resource(name="ProgramqnalistDAO")
	private ProgramqnalistDAO ProgramqnalistDAO;
	
	@Override
	public List<EgovMap> list(ProgramqnalistVO programqnalistVO) throws Exception {
		// TODO Auto-generated method stub
		return (List<EgovMap>) ProgramqnalistDAO.list(programqnalistVO);
	}

	@Override
	public EgovMap select(ProgramqnalistVO programqnalistVO) throws Exception {
		// TODO Auto-generated method stub
		return (EgovMap) ProgramqnalistDAO.select(programqnalistVO);
	}

}
