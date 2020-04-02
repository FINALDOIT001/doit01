package com.kh.doit.bookShare.controller;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.doit.bookShare.model.service.BookShareService;
import com.kh.doit.bookShare.model.vo.BookShare;
import com.kh.doit.bookShare.model.vo.BookShareReply;

@Controller
public class BookShareController {
	
	@Autowired
	private BookShareService bsService;
	
	@RequestMapping("moveBS.go")
	public ModelAndView moveBookShare(ModelAndView mv) {
		System.out.println("Servlet moveBs 여긴 돌아갑니다");
		
		ArrayList<BookShare> list = null;
		
		list = bsService.selectList();
		
		
		if(list != null) {
			mv.addObject("list", list);
			mv.setViewName("board/bookShare_list");
		} else {
			mv.addObject("msg", "리스트 불러오기 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
		
	}
	
	@RequestMapping("bsView.go")
	public ModelAndView moveBookShareView(ModelAndView mv, BookShare bs, int bsNo) {
		bs = bsService.selectOne(bsNo);
		
//		ArrayList<BookShareReply> rList = null;
//		
//		rList = bsService.selectReplyList(bsNo);
//		System.out.println("rList : " + rList);
		

		
		if(bs != null) {
			mv.addObject("bs",bs);
//			mv.addObject("rList",rList);
			mv.setViewName("board/bookShare_view");
		} else {
			mv.addObject("msg","게시글 보기 실패");
			mv.setViewName("common/errorPage");
		}
		return mv;
	}
	
	@RequestMapping("bsReply.do")
	public void selectReplyList(HttpServletResponse response, int bsNo) throws JsonIOException, IOException {
	
		ArrayList<BookShareReply> rList = bsService.selectReplyList(bsNo);
		
		System.out.println("Servlet 댓글 리스트 : " + rList);
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rList,response.getWriter());
		
	}

	
	
	@RequestMapping("bsInsert.go")
	public String moveBookShareWrite() {
		return "board/bookShare_write";
	}

	@RequestMapping("bsUpdate.go")
	public String moveBookShareUpdate() {
		return "board/bookShare_update";
	}

}
