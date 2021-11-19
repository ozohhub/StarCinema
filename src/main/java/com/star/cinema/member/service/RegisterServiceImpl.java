package com.star.cinema.member.service;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements IRegisterService {
	final static Logger logger = LoggerFactory.getLogger(RegisterServiceImpl.class);
	@Autowired MailService mailService;
	@Autowired HttpSession session;
	
	@Override
	public void sendAuth(String email) {
		String authNum = (String)session.getAttribute("authNum");
		
		if(authNum == null) {
			Random random = new Random();
			authNum = String.format("%06d", random.nextInt(1000000));
			mailService.sendMail(email, "[인증번호]", authNum);
			session.setAttribute("authNum", authNum);
			session.setMaxInactiveInterval(60);	
			logger.warn(authNum);
	
		}
		
	}

	@Override
	public String authConfirm(String authNum) {
		String saveAuthNum = (String)session.getAttribute("authNum");
		String msg = "";
		if(saveAuthNum == null) {
			msg = "인증번호를 전송을 눌러주세요.";
		}else if(!saveAuthNum.equals(authNum)){
			msg = "인증 실패";
			session.setAttribute("authState", "no");	// 인증성공 후 다시 인증실패했을때 no로
		}else {
			msg = "인증 성공";
			session.setAttribute("authState", "yes");
		}		
		return msg;
	}

	
}
