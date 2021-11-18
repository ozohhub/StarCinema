package com.star.cinema.member.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class RegisterServiceImpl implements IRegisterService {
	@Autowired MailService mailService;
	
	@Override
	public void sendAuth(String email) {
		
		
	}

	@Override
	public String authConfirm(String authNum) {
		
		return null;
	}

	
}
