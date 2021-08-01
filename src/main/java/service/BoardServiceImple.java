package service;

import java.util.List;

import javax.inject.Inject;

import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import config.mapper.BoardMapper;
import vo.BoardVO;

@Service
@Qualifier("bs")
public class BoardServiceImple implements BoardService{

	@Inject
	private BoardMapper mapper;
	
	@Override
	public List<BoardVO> viewAll() {
		// TODO Auto-generated method stub
		return mapper.viewAll();
	}

}
