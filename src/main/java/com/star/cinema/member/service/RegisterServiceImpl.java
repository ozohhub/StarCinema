package com.star.cinema.member.service;

import java.util.Random;

import javax.servlet.http.HttpSession;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements IRegisterService {
	
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
	
		}
		
	}

	@Override
	public String authConfirm(String authNum) {
		
		return null;
	}

	
}
