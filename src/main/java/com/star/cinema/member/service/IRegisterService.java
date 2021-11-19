package com.star.cinema.member.service;

public interface IRegisterService {
	
	public void sendAuth(String email);

	public String authConfirm(String authNum);
		



}
