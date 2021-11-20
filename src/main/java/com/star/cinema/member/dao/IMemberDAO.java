package com.star.cinema.member.dao;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.star.cinema.member.dto.MemberDTO;

@Repository
public interface IMemberDAO {
	public int memberCount();
	public ArrayList<MemberDTO> memberList(
			@Param("b")int begin, @Param("e")int end,
			@Param("sel")String select, @Param("search")String search);
	
	public MemberDTO isExistId(String id);	
	public void insertMember(MemberDTO member);
	
}
