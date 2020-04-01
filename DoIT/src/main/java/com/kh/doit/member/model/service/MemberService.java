package com.kh.doit.member.model.service;

import com.kh.doit.member.model.vo.Member;


public interface MemberService {
	
	
	
	// 1-1 아이디중복확인 필요
	
	
	
	/**
	 * 1-2. 회원가입
	 * 2020.03.22 Kwon
	 * @param m
	 * @return
	 */
	int memberJoin(Member m);
	
	/**
	 * 2. 로그인
	 * 2020.03.22 Kwon
	 * @param m
	 * @return
	 */
	Member memberLogin(Member m);
	
}
