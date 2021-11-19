package com.star.cinema.member;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.star.cinema.member.service.IRegisterService;

@Controller
public class RegisterController {
	final static Logger logger = LoggerFactory.getLogger(RegisterController.class);
	@Autowired IRegisterService service;
	

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
	
	@RequestMapping(value = "sendAuth", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String,String> sendAuth(@RequestBody Map<String,String> map, HttpSession session) {
		
		String email = map.get("email");
		String name = map.get("name");
			
		if(email == "" || name == "") {
			map.put("msg", "이름과 이메일을 모두 입력해주세요.");
		}else if(session.getAttribute("authNum") != null) {
			map.put("msg", "유효시간후 인증번호 재전송이 가능합니다.");
		}else {
			service.sendAuth(email);
			map.put("msg", "이메일을 확인하세요.");
		}
		
		return map;
	}
	
	@RequestMapping(value = "authConfirm", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String,String> authConfirm(@RequestBody Map<String,String> map, HttpSession session) {
		
		String authNum = map.get("authNum");
		
		if(authNum == "") {
			map.put("msg", "인증번호를 입력해주세요.");
		}else {
			map.put("msg", service.authConfirm(authNum));
		}
		return map;
	}
	
	
	

	
	
	
	
	
	
	
}
