package com.star.cinema.member;

import java.util.HashMap;
import java.util.Map;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


@Controller
public class RegisterController {
	final static Logger logger = LoggerFactory.getLogger(RegisterController.class);

	@RequestMapping(value="/registerProc", method=RequestMethod.POST)
	public String registerProc() {
		return "forward:index";
	}
	
	
	@RequestMapping(value="/agreeCheck", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String,String> agreeCheck(@RequestBody Map<String,String[]> map) {
		Map<String,String> result = new HashMap<String,String>();
		
		if(map.get("agree").length == 0) {
			result.put("msg", "약관을 모두 동의해주세요.");
			return result;
		}
					
		String[] agree = (String[]) map.get("agree");
		
		int agreeCnt = 0;
		for(int i=0; i < agree.length; i++) {
			if(agree[i].equals("yes")) {
				agreeCnt++;
			}
		}
		
		if(agreeCnt != 2) result.put("msg", "약관을 모두 동의해주세요.");	
		else result.put("msg", "");	
				
		return result;
	}
	
	

	
	
	
	
	
	
	
}
