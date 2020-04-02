package com.kh.doit.member.model.service;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.doit.member.model.dao.MemberDao;
import com.kh.doit.member.model.vo.Member;

@Service("mService")
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	private MemberDao mDao;
	
	@Autowired
	SqlSessionTemplate sqlSession;

	
	
	@Override
	public int idCheck(String id) {
		
		return mDao.idCheck(id);
	}



	@Override
	public Member memberLogin(Member m) {
		
		return mDao.memberLogin(m);
	}

	
	

}
