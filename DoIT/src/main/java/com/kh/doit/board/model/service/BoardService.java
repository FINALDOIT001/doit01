package com.kh.doit.board.model.service;

import java.util.ArrayList;

import com.kh.doit.board.model.vo.Board;
import com.kh.doit.board.model.vo.PageInfo;

public interface BoardService {
	
	
	/**
	 * 게시판 총 개수 조회
	 * @return
	 */
	int getListCount(); 
	
	
	
	/**
	 * 게시판 리스트 조회
	 * @param pi
	 * @return
	 */
	ArrayList<Board> selectList(PageInfo pi);

	
	
	
}
