package com.star.cinema.member.service;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;

import com.star.cinema.member.MemberCheck;
import com.star.cinema.member.dao.IMemberDAO;
import com.star.cinema.member.dto.MemberDTO;

@Service
public class RegisterServiceImpl implements IRegisterService {
	final static Logger logger = LoggerFactory.getLogger(RegisterServiceImpl.class);
	@Autowired MailService mailService;
	@Autowired HttpSession session;
	@Autowired MemberCheck memCheck;
	@Autowired IMemberDAO dao;
	
	@Override
	public boolean nameCheck(String name) {
		return memCheck.nameCheck(name) == false ? false : true;
	}
	
	@Override
	public void sendAuth(String email) {
		Random random = new Random();
		String authNum = String.format("%06d", random.nextInt(1000000));
		mailService.sendMail(email, "[인증번호]", authNum);
		session.setAttribute("authNum", authNum);
		session.setMaxInactiveInterval(60);	
		logger.warn(authNum);	
	
	}

	@Override
	public String authConfirm(String authNum) {
		String saveAuthNum = (String)session.getAttribute("authNum");
		String msg = "";
		if(saveAuthNum == null) {
			msg = "메일 발송을 눌러주세요.";
		}else if(!saveAuthNum.equals(authNum)){
			msg = "인증 실패";
			session.setAttribute("authState", "no");	
		}else {
			msg = "인증 성공";
			session.setAttribute("authState", "yes");
		}		
		return msg;
	}

	@Override
	public String isExistId(String id) {
		String msg = "";
		MemberDTO dto = dao.isExistId(id);
		
		if(memCheck.idCheck(id) == false) {
			msg = "소문자로 시작하며 소문자, 숫자, -_기호만 가능합니다.(5~12자)";
			return msg;
		}
		
		if(dto != null) msg = "중복 아이디 입니다.";
		else msg = "사용 가능한 아이디 입니다.";
	
		
		return msg;
	}

	@Override
	public boolean pwCheck(String pw) {
		return memCheck.pwCheck(pw) == false ? false : true;
	}

	@Override
	public String birthCheck(String y, String m, String d) {
		if(y == "" || m == "" || d == "" || y == null || m == null || d == null) {
			return "생년월일을 모두 입력해주세요.";
		}
		
		if(memCheck.numCheck(m) == false || memCheck.numCheck(d) == false ) {
			return "생년월일은 숫자만 가능합니다.";
		}
		
		String[] birth = {y,m,d};
		
		return memCheck.birthCheck(birth);
	}

	@Override
	public String phoneCheck(String phone1, String phone2, String phone3) {
		String check = "";
		if(phone1 == "" || phone2 == "" || phone3 == "" || phone1 == null || phone2 == null || phone3 == null) {
			return "휴대폰번호를 모두 입력해주세요.";
		}
		
		if(memCheck.phoneCheck(phone2, phone3) == false) {
			return "번호형식을 확인해주세요";
		}
		
		return check;
	}

	@Override
	public String addrCheck(String zip, String addr2, String addr3) {
		String check = "";
		if(zip == "" || addr2 == "" || addr3 == "") return "주소를 입력해주세요";
		return check;
	}

	@Override
	public void insertMember(MemberDTO dto) {
		BCryptPasswordEncoder encoder = new BCryptPasswordEncoder();
		String securePw = encoder.encode(dto.getPw());
		dto.setPw(securePw);
				
		dao.insertMember(dto);
		session.invalidate();		// 회원가입 다되면 세션삭제
	}

	
}
