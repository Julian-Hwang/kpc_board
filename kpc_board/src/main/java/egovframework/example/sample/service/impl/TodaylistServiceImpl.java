package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.TodaylistService;
import egovframework.example.sample.service.TodaylistVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("TodaylistService")
public class TodaylistServiceImpl implements TodaylistService {

	@Resource(name="TodaylistDAO")
	private TodaylistDAO TodaylistDAO;
	
	@Override
	public List<EgovMap> list(TodaylistVO todaylistVO) throws Exception {
		// TODO Auto-generated method stub
		return (List<EgovMap>) TodaylistDAO.list(todaylistVO);
	}

	@Override
	public EgovMap select(TodaylistVO todaylistVO) throws Exception {
		// TODO Auto-generated method stub
		return (EgovMap) TodaylistDAO.select(todaylistVO);
	}

}
