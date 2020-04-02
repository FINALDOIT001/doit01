package com.kh.doit.bookShare.model.dao;

import java.util.ArrayList;

import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.doit.bookShare.model.vo.BookShare;
import com.kh.doit.bookShare.model.vo.BookShareReply;

@Repository
public class BookShareDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public ArrayList<BookShare> selectList() {
		return (ArrayList)sqlSession.selectList("msMapper.selectBSList");
	}

	public BookShare selectOne(int bsNo) {
		return sqlSession.selectOne("msMapper.selectOne", bsNo);
	}

	public ArrayList<BookShareReply> selectReplyList(int bsNo) {
		// TODO Auto-generated method stub
		return null;
	}

}
