package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.ArchiveesgService;
import egovframework.example.sample.service.ArchiveesgVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("ArchiveesgService")
public class ArchiveesgServiceImpl implements ArchiveesgService {

	@Resource(name="ArchiveesgDAO")
	private ArchiveesgDAO ArchiveesgDAO;
	
	@Override
	public List<EgovMap> list(ArchiveesgVO archiveesgVO) throws Exception {
		// TODO Auto-generated method stub
		return (List<EgovMap>) ArchiveesgDAO.list(archiveesgVO);
	}

	@Override
	public EgovMap select(ArchiveesgVO archiveesgVO) throws Exception {
		// TODO Auto-generated method stub
		return (EgovMap) ArchiveesgDAO.select(archiveesgVO);
	}

}
