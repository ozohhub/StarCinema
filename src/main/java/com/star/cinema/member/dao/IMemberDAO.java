package com.star.cinema.member.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.star.cinema.member.dto.MemberDTO;
//create SEQUENCE member_seq START WITH 1 INCREMENT BY 1;

@Repository
public interface IMemberDAO {
	public int memberCount();
	public ArrayList<MemberDTO> memberList();
	
	public MemberDTO isExistId(String id);	
	public void insertMember(MemberDTO member);
	
}
