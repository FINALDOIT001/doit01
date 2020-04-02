package com.kh.doit.study.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.doit.study.model.vo.PageInfo;
import com.kh.doit.study.model.vo.StudyGroup;

@Repository("sgDao")
public class StudyGroupDao {

	@Autowired
	private SqlSessionTemplate sqlSession;
	
	public int getlistCount() {
		
		return sqlSession.selectOne("studyGroupMapper.getlistCount");
	}

	public ArrayList<StudyGroup> selectList(PageInfo pi) {
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		
		RowBounds rowBound = new RowBounds(offset,pi.getBoardLimit());
		
		return(ArrayList)sqlSession.selectList("studyGroupMapper.selectList",null,rowBound);
	}


}
