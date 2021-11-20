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

import com.star.cinema.member.dto.MemberDTO;
import com.star.cinema.member.service.IRegisterService;

@Controller
public class RegisterController {
	final static Logger logger = LoggerFactory.getLogger(RegisterController.class);
	@Autowired IRegisterService service;
	
	/* register1 에서 확인버튼 눌렀을 때 */
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
	
	/* register2에서 메일발송 버튼 눌렀을 때 */
	@RequestMapping(value = "sendAuth", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String,String> sendAuth(@RequestBody Map<String,String> map, HttpSession session) {
		
		String email = map.get("email");
		String name = map.get("name");
			
		if(email == "" || name == "") {
			map.put("msg", "이름과 이메일을 모두 입력해주세요.");
		}else if(service.nameCheck(name) == false) {
			map.put("msg", "이름은 한글 또는 영문만 가능합니다.");
		}else {
			service.sendAuth(email);
			map.put("msg", "이메일을 확인하세요.");
		}
		
		return map;
	}
	
	/* register2에서 인증번호 확인 눌렀을 때 */
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
	
	/* register2에서 확인버튼 눌렀을 때 최종확인 후 register_final로 */
	@RequestMapping(value = "/authProc", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String,String> authProc(@RequestBody Map<String,String> map, HttpSession session) {
		
		String name = map.get("name");
		String email = map.get("email");
		String authState = (String)session.getAttribute("authState");
		
		if(name != "" && email != "" && (authState != null && authState.equals("yes"))) {
			map.put("msg", "인증 성공");
		}else if(name == "" || email == "") {
			map.put("msg", "빈 항목이 존재합니다.");
		}else {
			map.put("msg", "이메일 인증을 해주세요.");
		}		
		return map;
	}
	
	/* register_final에서 중복확인 눌렀을 때 */
	@RequestMapping(value = "isExistId", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String,String> isExistId(@RequestBody Map<String,String> map, HttpSession session) {
		
		String id = map.get("id");
		map.put("msg",service.isExistId(id));
				
		return map;
	}
	
	/* register_final에서 비밀번호 입력했을 때 -  유효성검사 */
	@RequestMapping(value = "pwCheck", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String,String> pwCheck(@RequestBody Map<String,String> map, HttpSession session) {
		
		String pw = map.get("pw");
		
		if(service.pwCheck(pw)) map.put("msg", "사용가능한 비밀번호 입니다.");
		else map.put("msg", "영문자+숫자 조합 / 특수문자는 -_!@#$%^&*?만 가능합니다.(8~16자)");
			
		return map;
	}
	
	/* register_final에서 비밀번호 확인 입력했을 때 -  비밀번호와 일치하는지 여부 확인 */
	@RequestMapping(value = "pwConfirm", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String,String> pwConfirm(@RequestBody Map<String,String> map, HttpSession session) {
		String pw = map.get("pw");
		String pwChk = map.get("pwChk");
		
		if(!pw.equals(pwChk)) {
			map.put("msg", "비밀번호가 일치하지 않습니다.");
		}else map.put("msg", "");
			
		return map;
	}
		
	@RequestMapping(value = "birthCheck", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String,String> birthCheck(@RequestBody Map<String,String> map, HttpSession session) {
		String y = map.get("year");
		String m = map.get("month");
		String d = map.get("day");
		
		map.put("msg", service.birthCheck(y,m,d));			
		return map;
	}
	
	
	@RequestMapping(value = "phoneCheck", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String,String> phoneCheck(@RequestBody Map<String,String> map, HttpSession session) {
		String phone1 = map.get("phone1");
		String phone2 = map.get("phone2");
		String phone3 = map.get("phone3");
				
		map.put("msg", service.phoneCheck(phone1,phone2,phone3));			
		return map;
	}
	
	@RequestMapping(value = "addrCheck", produces = "application/json; charset=utf-8")
	@ResponseBody
	public Map<String,String> addrCheck(@RequestBody Map<String,String> map, HttpSession session) {
		String zip = map.get("zip");
		String addr2 = map.get("addr2");
		String addr3 = map.get("addr3");
				
		map.put("msg", service.addrCheck(zip,addr2,addr3));			
		return map;
	}
	

	@RequestMapping(value="/registerProc", method=RequestMethod.POST)
	public String registerProc(String id, String pw, String year, String month, String day, String gender, 
			String phone1, String phone2, String phone3, String zipcode, String addr1, String addr2, String name, String email, MemberDTO dto){
		
		dto.setId(id); dto.setPw(pw); dto.setEmail(email); dto.setName(name); dto.setGender(gender);
		dto.setBirth(year+"-"+month+"-"+day); dto.setPhone(phone1+"-"+phone2+"-"+phone3); dto.setZipcode(zipcode);
		dto.setAddress(addr1+"&&"+addr2);
		
		service.insertMember(dto);
		
		return "forward:index";
	}
	
	


	
	
	
	
	
	
	
	

	
	
	
	
	
	
	
}
