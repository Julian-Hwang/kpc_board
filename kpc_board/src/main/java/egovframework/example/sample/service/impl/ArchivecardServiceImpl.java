package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.ArchivecardService;
import egovframework.example.sample.service.ArchivecardVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("ArchivecardService")
public class ArchivecardServiceImpl implements ArchivecardService {

	@Resource(name="ArchivecardDAO")
	private ArchivecardDAO ArchivecardDAO;
	
	@Override
	public List<EgovMap> list(ArchivecardVO archivecardVO) throws Exception {
		// TODO Auto-generated method stub
		return (List<EgovMap>) ArchivecardDAO.list(archivecardVO);
	}

	@Override
	public EgovMap select(ArchivecardVO archivecardVO) throws Exception {
		// TODO Auto-generated method stub
		return (EgovMap) ArchivecardDAO.select(archivecardVO);
	}

}
