package com.star.cinema.member;

import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class MemberController {
	final static Logger logger = LoggerFactory.getLogger(MemberController.class);

	@RequestMapping(value="/registerProc", method=RequestMethod.POST)
	public String registerProc() {
		return "forward:index";
	}
	
	
	@RequestMapping(value="/agreeCheck", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String,String> agreeCheck(@RequestBody Map<String,String> map) {
		String agree1 = map.get("agree1");
		String agree2 = map.get("agree2");
		
		logger.warn("hi");
		logger.warn(agree1);
		logger.warn(agree2);
		
		
		return map;
	}
	
	

	
	
	
	
	
	
	
}
