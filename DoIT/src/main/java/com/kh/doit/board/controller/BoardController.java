package com.kh.doit.board.model.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import com.kh.doit.board.model.service.BoardService;
import com.kh.doit.board.model.vo.PageInfo;
import com.kh.doit.study.common.pagination;

@Controller
public class BoardController {
	
	@Autowired
	private BoardService bService;
	
	@RequestMapping("bList.do")
	public ModelAndView boardList(ModelAndView mv,@RequestParam(value="currentPage",required=false,defaultValue="1") int currentPage) {
		
		int listCount = bService.getListCount();
		
//		PageInfo pi = Pagination.getPageInfo(currentPage, listCount);
	}

}
