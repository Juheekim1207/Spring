package data.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.select.Elements;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import data.dto.BoardDto;
import data.dto.ShopDto;
import data.mapper.ShopMapperInter;

@Controller
@RequestMapping("/shop")
public class ShopController {
	
	@Autowired
	private ShopMapperInter shopMapper;
	
	@GetMapping("/form")
	public String form()
	{
		return "/shop/shopform";
	}
	
	@PostMapping("/insert")
	public String insert(@ModelAttribute ShopDto dto)
	{
		shopMapper.insertShop(dto);
		return "redirect:list";
	}
	
	@GetMapping("/list")
	public ModelAndView list(
			@RequestParam(defaultValue = "1") int currentPage
			)
	{
		ModelAndView mview = new ModelAndView();
		
		//페이징 처리
		int totalCount; //총 갯수
		int perPage = 5; // 한 페이지당 보여질 글 갯수
		int perBlock = 5; //한 블럭당 보여질 페이지 수
		int totalPage; //총 페이지 수
		int startNum; //한 페이지에서 보여질 시작 글번호
		int startPage; //한 블럭에서 보여질 시작페이지 번호
		int endPage; // 한 블럭에서 보여질 끝 페이지 번호
		int no; // 각 페이지당 보여질 시작번호
		
		//총 글의 갯수를 구한다
		totalCount = shopMapper.getTotalCount();
		//총 페이지수를 구한다
		totalPage = totalCount/perPage+(totalCount%perPage==0?0:1);
//		totalPage = (int)Math.ceil((double)totalCount/perPage); //무조건 올림 
		//각 블럭의 시작페이지 // 한 블럭 당 5개일 경우 예 
		//1,6,11,16...(currentPage가 1~5일 때는 1, 6~10일때는 6)
		startPage = (currentPage-1)/perBlock*perBlock+1;
		//각 블럭의 끝페이지
		//5,10,15,20...(currentPage가 1~5일 때는 5, 6~10일때는 10)
		endPage = startPage+perBlock-1;
		//문제점 (마지막 블럭은 총 페이지수까지만 나와야 한다)
		if(endPage>totalPage) {
			endPage = totalPage;
		}
		//각 페이지에서 보여질 글의 시작번호 (mysql은 0부터)
		//예) 한 페이지당 3개일 경우 1페이지: 0, 2페이지: 3, 3페이지: 6...
		startNum = (currentPage-1)*perPage; //mysql
//		startNum = (currentPage-1)*perPage+1; //oracle
		
		//각 페이지당 보여질 시작번호
		no = totalCount-(currentPage-1)*perPage;
		
		//데이터 가져오기
		Map<String, Integer> map = new HashMap<>();
		map.put("start", startNum);
		map.put("perpage", perPage);
		List<ShopDto> list = shopMapper.getShopList(map);
		
		String photo = "";
		for(ShopDto dto:list)
		{
			Document doc = null;
			doc = Jsoup.parse(dto.getContent());
			Elements myimg = doc.select("img");//img 태그 요소값 얻기
			photo = myimg.attr("src"); //img태그에서 src 얻어오기
			System.out.println("photo");
			dto.setPhoto(photo);
		}
		
		mview.addObject("currentPage", currentPage);
		mview.addObject("totalCount", totalCount);
		mview.addObject("totalPage", totalPage);
		mview.addObject("startPage", startPage);
		mview.addObject("endPage", endPage);
		mview.addObject("no", no);
		mview.addObject("list", list);
		
		mview.setViewName("/shop/shoplist");
		return mview;
	}
	
	@GetMapping("/detail")
	public ModelAndView detail(
			@RequestParam int num,
			@RequestParam int currentPage
			)
	{
		//num에 해당하는 dto 얻기
		ShopDto dto = shopMapper.getSangpum(num);
		ModelAndView mview = new ModelAndView();
		mview.addObject("dto",dto);
		mview.addObject("currentPage",currentPage);
		mview.setViewName("/shop/shopdetail");
		return mview;	
	}
	
	@GetMapping("/delete")
	public String delete(
			@RequestParam int num,
			@RequestParam int currentPage,
			HttpServletRequest request)
	
	{	
		//db에서 데이터 삭제
		shopMapper.deleteShop(num);
		
		//보던 페이지로 이동
		return "redirect:list?currentPage=" + currentPage;
	}
}














