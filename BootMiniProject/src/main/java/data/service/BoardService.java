package data.service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import data.dto.BoardDto;
import data.mapper.BoardMapperInter;

@Service
public class BoardService implements BoardServiceInter {

	@Autowired
	private BoardMapperInter mapper;
	
	@Override
	public int getMaxNum() {
		// TODO Auto-generated method stub
		return mapper.getMaxNum();
	}

	@Override
	public void updateReStep(int reg, int restep) {
		// TODO Auto-generated method stub
		Map<String, Integer> map = new HashMap<>();
		map.put("reg",reg);
		map.put("restep",restep);
		mapper.updateReStep(map);
	}

	@Override
	public int getTotalCount() {
		// TODO Auto-generated method stub
		return mapper.getTotalCount();
	}

	@Override
	public List<BoardDto> getList(int start, int perpage) {
		// TODO Auto-generated method stub
		Map<String, Integer> map = new HashMap<>();
		map.put("start",start);
		map.put("perpage",perpage);
		return mapper.getList(map);
	}

	@Override
	public void insertBoard(BoardDto dto) {
		// TODO Auto-generated method stub
		int reg = dto.getReg();
		int restep = dto.getRestep();
		int relevel = dto.getRelevel();
		int num = dto.getNum();
				
		//새글인 경우
		if(num == 0)
		{
			//새글인 경우
			reg = this.getMaxNum()+1;
			restep = 0;
			relevel = 0;
		}else {
			//답글인 경우
			//기존 restep보다 큰 값은 모두 1증가하기
			this.updateReStep(reg, restep);
			//기존 값들보다 1증가
			restep++;
			relevel++;
		}
		
		dto.setReg(reg);
		dto.setRestep(restep);
		dto.setRelevel(relevel);
		//insert
		mapper.insertBoard(dto);
	}

	@Override
	public void updateReadCount(int num) {
		// TODO Auto-generated method stub
		mapper.updateReadCount(num);

	}

	@Override
	public BoardDto getData(int num) {
		// TODO Auto-generated method stub
		return mapper.getData(num);
	}
	
	@Override
	public void updateChu(int chu, int num) {
		// TODO Auto-generated method stub
		Map<String, Integer> map = new HashMap<>();
		map.put("chu", chu);
		map.put("num", num);
		mapper.updateChu(map);
	}

	@Override
	public void updateBoard(BoardDto dto) {
		// TODO Auto-generated method stub
		mapper.updateBoard(dto);
		
	}
	
	@Override
	public void deleteBoard(int num) {
		// TODO Auto-generated method stub
		mapper.deleteBoard(num);
	}
	
}









