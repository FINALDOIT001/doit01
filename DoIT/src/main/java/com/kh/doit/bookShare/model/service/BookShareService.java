package com.kh.doit.bookShare.model.service;

import java.util.ArrayList;

import com.kh.doit.bookShare.model.vo.BookShare;
import com.kh.doit.bookShare.model.vo.BookShareReply;

public interface BookShareService {

	/**
	 * 1. 책 나눔 리스트 가져오기 Kwon
	 * 2020.04.01
	 * @return
	 */
	ArrayList<BookShare> selectList();

	/**
	 * 2. 책 한권 Detail 보기 Kwon
	 * 2020.04.01 
	 * @param bsNo
	 * @return
	 */
	BookShare selectOne(int bsNo);

	/**
	 * 2-1. Detail 댓글 가져오기 Kwon
	 * @param bsNo
	 * @return
	 */
	ArrayList<BookShareReply> selectReplyList(int bsNo);

}
