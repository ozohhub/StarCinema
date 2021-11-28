package com.star.cinema.myPage.dao;

import java.util.ArrayList;

import java.util.Set;

import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import com.star.cinema.customer.dto.QuestionDTO;
import com.star.cinema.member.dto.MemberDTO;

@Repository
public interface IMyPageDAO {
	public int myQuestionCount(String id);

	public ArrayList<QuestionDTO> myQuestionList(@Param("id")String id, @Param("b")int begin, @Param("e")int end);

	public void modifyMember(MemberDTO dto);

	public void deleteMember(MemberDTO dto);
	// movieDetail에서 쓰이는거 -> 옮겨야함
	public Set<String> preferYear(@Param("start") String start, @Param("end")String end);

	public ArrayList<Integer>groupCount();
	
	public int moiveCount(int movieListNum);
	
	public int totalTicketCount();
	
}
