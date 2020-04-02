package com.kh.doit.member.model.service;

import com.kh.doit.member.model.vo.Member;


public interface MemberService {

	/**
	 * 1. 아이디 중복 체크
	 * 2020.04.01 김혜림 
	 * @param id
	 * @return
	 */
	int idCheck(String id);
	
	
}
