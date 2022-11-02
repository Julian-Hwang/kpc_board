package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.ProgramcourseService;
import egovframework.example.sample.service.ProgramcourseVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("ProgramcourseService")
public class ProgramcourseServiceImpl implements ProgramcourseService {

	@Resource(name="ProgramcourseDAO")
	private ProgramcourseDAO ProgramcourseDAO;
	
	@Override
	public List<EgovMap> list(ProgramcourseVO programcourseVO) throws Exception {
		// TODO Auto-generated method stub
		return (List<EgovMap>) ProgramcourseDAO.list(programcourseVO);
	}

	@Override
	public EgovMap select(ProgramcourseVO programcourseVO) throws Exception {
		// TODO Auto-generated method stub
		return (EgovMap) ProgramcourseDAO.select(programcourseVO);
	}

}
