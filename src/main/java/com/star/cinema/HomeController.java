package com.star.cinema;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class HomeController {
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	
	@RequestMapping(value = "/")
	public String main(Model model) {
		model.addAttribute("formpath", "main");
		return "index";
	}
	@RequestMapping(value = "/main")
	public void main() {}
	
	@RequestMapping(value = "/index")
	public String index(Model model, String formpath) {
		if(formpath == null) formpath = "main";
		model.addAttribute("formpath", formpath);
		logger.warn("formpath : " + formpath);
		return "index";
	}
	
	@RequestMapping(value = "/register1")
	public String register1() {
		return "member/register1";
	}
	@RequestMapping(value = "/register2")
	public String register2() {
		return "member/register2";
	}
	@RequestMapping(value="/register_final", method=RequestMethod.POST)
	public String register_final() {
		return "member/register_final";
	}
	
	@RequestMapping(value = "/memberList")
	public String memberList() {
		return "member/memberList";
	}
	
	@RequestMapping(value = "/login")
	public String login() {
		return "member/login";
	}
	
	@RequestMapping(value = "/ticketing")
	public String ticketing() {
		return "movie/ticketing";
	}
	
	@RequestMapping(value = "/seat")
	public String seat() {
		return "movie/seat";
	}
	
	@RequestMapping(value = "/pay")
	public String pay() {
		return "movie/pay";
	}

	@RequestMapping(value="/movie")
	public String movie() {
		return "movie/movie";
	}

	@RequestMapping(value = "/movieInfoList")
	public String movieInfoList() {
		return "movie/movieInfoList";
	}
	
	@RequestMapping(value="/myPage")
	public String myPage() {
		return "myPage/myPage";
	}
	
	@RequestMapping(value="/myQuestion")
	public String myQuestion() {
		return "myPage/myQuestion";
	}
	
	@RequestMapping(value="/myLike")
	public String myLike() {
		return "myPage/myLike";
	}
	
	@RequestMapping(value="/memberModify")
	public String memberModify() {
		return "myPage/memberModify";
	}
	
	@RequestMapping(value="/memberDelete")
	public String memberDelete() {
		return "myPage/memberDelete";
	}
	
	
	@RequestMapping(value="/customer")
	public String customer() {
		return "customer/customer";
	}
	
	
	@RequestMapping(value="/questionWrite")
	public String questionWrite() {
		return "customer/questionWrite";
	}
	
	@RequestMapping(value="/findid")
	public String findid() {
		return "manage/findid";
	}
	
	@RequestMapping(value="/findpw")
	public String findpw() {
		return "manage/findpw";
	}
	
}
