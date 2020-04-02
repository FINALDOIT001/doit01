package com.kh.doit.board.model.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.RowBounds;
import org.mybatis.spring.SqlSessionTemplate;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kh.doit.board.model.vo.Board;
import com.kh.doit.board.model.vo.PageInfo;

@Repository("bDao")
public class BoardDao {
	
	@Autowired
	private SqlSessionTemplate sqlSession;

	public int getListCount() {
		return sqlSession.selectOne("boardMapper.getListCount");
	}

	public ArrayList<Board> selectList(PageInfo pi) {
		
		int offset = (pi.getCurrentPage()-1)*pi.getBoardLimit();
		
		// RowBounds : 파라미터로 가져오고 싶은 구간을 넘겨주면 그 구간의 데이터를 리턴해주는 것 
		RowBounds rowBounds = new RowBounds(offset,pi.getBoardLimit());
		return (ArrayList)sqlSession.selectList("boardMapper.selectList",null,rowBounds);
	}

}
