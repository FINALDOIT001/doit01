package com.kh.doit.board.model.service;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.kh.doit.board.model.dao.BoardDao;
import com.kh.doit.board.model.vo.Board;
import com.kh.doit.board.model.vo.PageInfo;

@Service("bService")
public class BoardServiceImpl implements BoardService {

	@Autowired
	private BoardDao bDao;

	@Override
	public int getListCount() {
		return bDao.getListCount();
	}

	@Override
	public ArrayList<Board> selectList(PageInfo pi) {
		return bDao.selectList(pi);
	} 

}
