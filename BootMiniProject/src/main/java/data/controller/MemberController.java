package data.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import data.dto.MemberDto;
import data.mapper.MemberMapperInter;

@Controller
@RequestMapping("/member")
public class MemberController {
	
	@Autowired
	MemberMapperInter mapper;
	
	@GetMapping("/form")
	public String home4()
	{
		return "/member/memberform";
	}
	
	@GetMapping("/list")
	public ModelAndView list()
	{
		ModelAndView mview = new ModelAndView();
		//mapper로부터 총 갯수 가져오기
		int totalCount = mapper.getTotalCount();
		List<MemberDto> list = mapper.getAllMembers();
		
		//model에 저장
		mview.addObject("totalCount",totalCount);
		mview.addObject("list", list);
		
		mview.setViewName("/member/memberlist");
		return mview;
	}
	
	@PostMapping("/insert")
	public String insert(@ModelAttribute MemberDto dto,
					@RequestParam String email1, @RequestParam String email2)
	{
		dto.setEmail(email1 + "@" + email2);
		//db에 저장
		mapper.insertMember(dto);
		//목록으로 이동
		return "redirect:list";
	}
	
	@GetMapping("/idcheck")
	@ResponseBody
	public Map<String, Integer> getSearchId(@RequestParam String id)
	{
		Map<String, Integer> map = new HashMap<>();
		int n = mapper.getSearchId(id);
		map.put("count", n);
		return map;
	}
	
	@GetMapping("/delete")
	@ResponseBody
	public void deleteMember(@RequestParam String nums)
	{
		//, 로 num 분리
		String[] num = nums.split(",");
		for(String n:num) {
			mapper.deleteMember(n);
		}
	}

}













