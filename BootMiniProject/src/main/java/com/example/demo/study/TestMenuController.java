package com.example.demo.study;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class TestMenuController {
	
	@GetMapping("/")
	public String home()
	{
		return "/layout/main";
	}
	
	@GetMapping("/load/map")
	public String map()
	{
		return "/sub/layout/map";
	}

}
