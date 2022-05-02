package test.controller;

import java.util.List;
import java.util.Vector;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController ///RestAPI 전용 컨트롤러, 스프링 5버전 부터 가능
public class HapppyController {
	
	@GetMapping("/happy1")
	public TestDto happy1() //rest 전용 컨트롤러이므로 @Responsebody를 안써도 json으로 반환
	{
		TestDto dto = new TestDto();
		dto.setName("이영자");
		dto.setHp("011-1111-0222");
		dto.setAddr("서울시 강남구");

		return dto;
		
		
	}

	
}
