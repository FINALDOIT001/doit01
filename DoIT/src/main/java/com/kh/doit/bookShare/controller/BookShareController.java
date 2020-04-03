package com.kh.doit.bookShare.controller;

import java.io.File;
import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import com.google.gson.Gson;
import com.google.gson.GsonBuilder;
import com.google.gson.JsonIOException;
import com.kh.doit.bookShare.model.service.BookShareService;
import com.kh.doit.bookShare.model.vo.BookShare;
import com.kh.doit.bookShare.model.vo.BookShareReply;

/**
 * @author KWON
 *
 */
@Controller
public class BookShareController {
	
	@Autowired
	private BookShareService bsService;
	
	@RequestMapping("moveBS.go")
	public ModelAndView moveBookShare(ModelAndView mv) {
		
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
	
	/**
	 * 댓글 보여주기(ajax) Kwon
	 * 2020.04.02
	 * @param response
	 * @param bsNo
	 * @throws JsonIOException
	 * @throws IOException
	 */
	@RequestMapping("bsReply.do")
	public void selectReplyList(HttpServletResponse response, int bsNo) throws JsonIOException, IOException {
	
		ArrayList<BookShareReply> rList = bsService.selectReplyList(bsNo);
		
		System.out.println("Servlet 댓글 리스트 : " + rList);
		
		response.setContentType("application/json; charset=UTF-8");
		
		Gson gson = new GsonBuilder().setDateFormat("yyyy-MM-dd").create();
		gson.toJson(rList,response.getWriter());
		
	}

	/**
	 * BookShare 댓글 넣기 Kwon
	 * 2020.04.02 집에서
	 * @param r
	 * @return
	 */
	@RequestMapping("addReply.do")
	@ResponseBody
	public String addReply(BookShareReply r) {
		System.out.println("servlet 댓글추가 : " + r);
		int result = bsService.insertReply(r);
		
		if(result > 0) {
			return "success";
		} else {
			return "fail";
		}
	}
	
	
	@RequestMapping("bsInsert.go")
	public String moveBookShareWrite() {
		return "board/bookShare_write";
	}
	
	/**
	 * BookShare 추가 Kwon
	 * 2020.04.02 집에서
	 * @return
	 */
	@RequestMapping("insertBook.do")
	public String insertBookShare(BookShare bs, HttpServletRequest request,
								@RequestParam(name="bsFileName", required=false) MultipartFile file) {
		System.out.println("111111Servlet Bs : " + bs);
		System.out.println("사진 : " + file.getOriginalFilename());
		// 들어온 파일값이 공백이 아니면
		if (!file.getOriginalFilename().equals("")) {
			// 서버에 업로드
			// saveFile메소드 : 내가 저장하고자 하는 file과 request를 전달하여 서버에 업로드시키고 그 저장된 파일명을 반환해주는 메소드

			String renameFileName = saveFile(file, request); // 아래쪽에 메소드로 새로 빼준다

			if (renameFileName != null) {
				bs.setBsOriginalFileName(file.getOriginalFilename());
				bs.setBsRenameFileName(renameFileName);
			}
			
		}
		System.out.println("Servlet BS 추가 : " + bs);
		
		int result = bsService.insertBookShare(bs);
		
		if (result > 0) {
			return "redirect:moveBS.go";
		} else {
			return "common/errorPage";
		}
		
		
	}

	/**
	 * 4. 업데이트용 화면 쏘기
	 * @param bsNo
	 * @return
	 */
	@RequestMapping("bsUpdate.go")
	public ModelAndView moveBookShareUpdate(ModelAndView mv, BookShare bs, int bsNo) {
		System.out.println("Servlet 업데이트 bsNo : " + bsNo);
		bs = bsService.selectOne(bsNo);
		System.out.println("Servlet 업데이트 bs : " + bs);
		mv.addObject("bs", bs);
		mv.setViewName("board/bookShare_update");
		return mv;
	}
	
	@RequestMapping("updateBS.do")
	public String updateBookShare(BookShare bs, HttpServletRequest request,
			@RequestParam(name="bsFileName", required=false) MultipartFile file) {

		
		return "";
	}
	
	
	
	
	
	// 파일 저장용 메소드
	public String saveFile(MultipartFile file, HttpServletRequest request) {
		// 저장할 경로를 설정
		// 웹 서버 contextPath를 불러와서 폴더의 경로를 찾음 (webapp/resources)
		String root = request.getSession().getServletContext().getRealPath("resources");

		String savePath = root + "\\bsUploadFiles"; // resources 밑의 업로드 폴더 설정

		File folder = new File(savePath);

		// 만약 buploadFiles가 없으면 새로 생성해주자
		if (!folder.exists()) {
			folder.mkdir(); // 폴더가 없다면 생성해주세요
		}

		// 만약 같은 이름을 가진 파일이 있으면 안되니까 설정
		String originFileName = file.getOriginalFilename();

		SimpleDateFormat sdf = new SimpleDateFormat("yyyyMMddHHmmss");
		// 새로 이름을 만들어준다. 현재시분초 + originFilename의 확장자명을 붙여준다.
		String renameFileName = sdf.format(new java.sql.Date(System.currentTimeMillis())) + "."
				+ originFileName.substring(originFileName.lastIndexOf(".") + 1);
		// 기존이름의 .xxx (확장자명)을 가져와서 뒤에 붙여줄것이다

		// 원본 파일은 view에서 사용자에게 보여주기 위해서 쓰고
		// rename은 DB에서 중복방지용으로 쓴다.
		System.out.println("renameFileName : " + renameFileName); // 확인용
		String renamePath = folder + "\\" + renameFileName; // 새로만든 파일의 경로

		try {
			file.transferTo(new File(renamePath));
		} catch (Exception e) {
			System.out.println("파일 전송 에러 : " + e.getMessage());
		} // 이 때 전달받은 file이 rename명으로 저장이 된다.

		return renameFileName;
	}

	public void deleteFile(String fileName, HttpServletRequest request) {
		String root = request.getSession().getServletContext().getRealPath("resources");
		String savePath = root + "\\bsUploadFiles"; // 파일의 경로 설정

		File f = new File(savePath + "\\" + fileName); // 내가 지워줄 파일의 경로 + 파일명까지 주어진다
		// webapp/resources/buploadFiles/20200326110145.png

		if (f.exists()) { // 저 파일이 있다면!
			f.delete(); // 실제 파일을 지워준다
		}
	}

}
