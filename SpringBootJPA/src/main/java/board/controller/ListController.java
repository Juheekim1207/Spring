package board.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.servlet.ModelAndView;

import board.data.MyCarDao;
import board.data.MyCarDto;

@Controller
public class ListController {
	
	@Autowired
	MyCarDao dao;

	@GetMapping("/")
	public ModelAndView list()
	{
		ModelAndView mview = new ModelAndView();
		mview.addObject("message","스프링부트 게시판 만들기");
		
		//dao로부터 목록 가져와서 model에 저장하기
		List<MyCarDto> list = dao.getAllCars();
		mview.addObject("list",list);
		mview.setViewName("list");
		return mview;
	}
	
	@GetMapping("/form")
	public String form()
	{
		return "mycarform";
	}
	
	@PostMapping("/insert")
	public String insert(@ModelAttribute MyCarDto dto)
	{
		dao.insertCar(dto);
		//목록으로 이동
		return "redirect:/"; //해당 매핑주소로 url이 바뀜
	}
	
	
}




















