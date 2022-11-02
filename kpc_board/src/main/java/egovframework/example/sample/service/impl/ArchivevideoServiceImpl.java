package egovframework.example.sample.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import egovframework.example.sample.service.ArchivevideoService;
import egovframework.example.sample.service.ArchivevideoVO;
import egovframework.rte.psl.dataaccess.util.EgovMap;

@Service("ArchivevideoService")
public class ArchivevideoServiceImpl implements ArchivevideoService {

	@Resource(name="ArchivevideoDAO")
	private ArchivevideoDAO ArchivevideoDAO;
	
	@Override
	public List<EgovMap> list(ArchivevideoVO archivevideoVO) throws Exception {
		// TODO Auto-generated method stub
		return (List<EgovMap>) ArchivevideoDAO.list(archivevideoVO);
	}

	@Override
	public EgovMap select(ArchivevideoVO archivevideoVO) throws Exception {
		// TODO Auto-generated method stub
		return (EgovMap) ArchivevideoDAO.select(archivevideoVO);
	}

}
