package board.data;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository //자동으로 bean으로 등록
public class MyCarDao {
	
	@Autowired //interface 자동 주입
	MyCarDaoInter daoInter;

	//insert
	public void insertCar(MyCarDto dto)
	{
		daoInter.save(dto);
	}
	
	//list
	public List<MyCarDto> getAllCars()
	{
		List<MyCarDto> list = daoInter.findAll();
		return list;
	}
	
	//수정폼
	public MyCarDto getMyCar(Long num)
	{
		return daoInter.getById(num);
	}
	
	//수정 
	public void updateCar(MyCarDto dto)
	{
		daoInter.save(dto); //num이 있을 경우 update, 없으면 insert가 됨 
	}
	
	//삭제
	public void deleteCar(Long num)
	{
		daoInter.deleteById(num);
	}
}
















