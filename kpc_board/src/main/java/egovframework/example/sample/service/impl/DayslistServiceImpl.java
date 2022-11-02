package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.DayslistService;
import egovframework.example.sample.service.DayslistVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("DayslistService")
public class DayslistServiceImpl implements DayslistService {

	@Resource(name="DayslistDAO")
	private DayslistDAO DayslistDAO;
	
	@Override
	public List<EgovMap> list(DayslistVO dayslistVO) throws Exception {
		// TODO Auto-generated method stub
		return (List<EgovMap>) DayslistDAO.list(dayslistVO);
	}

	@Override
	public EgovMap select(DayslistVO dayslistVO) throws Exception {
		// TODO Auto-generated method stub
		return (EgovMap) DayslistDAO.select(dayslistVO);
	}

}
