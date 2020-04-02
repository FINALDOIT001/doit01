package com.kh.doit.member.controller;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.kh.doit.member.model.service.MemberService;
import com.kh.doit.member.model.vo.Member;


@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	// 암호화 처리 
	@Autowired
	private BCryptPasswordEncoder bcryptPasswordEncoder;

	/**
	 * 로그인 화면으로 이동 Kwon
	 * @return
	 */
	@RequestMapping("moveLogin.go")
	public String moveLogin() {
		return "member/login";
	}
	
	/**
	 * 회원가입 화면으로 이동 Kwon
	 * @return
	 */
	@RequestMapping("moveJoin.go")
	public String moveJoin() {
		return "member/join";
	}
	
	/**
	 * 아이디 중복체크
	 * 2020-04-01 김혜림
	 * @param id
	 * @return
	 */
	@ResponseBody
	@RequestMapping("idCheck.do")
	public String idCheck(String id) {
		int result = mService.idCheck(id);
		
		if(result > 0) {
			return "fail";
		}else {
			return "ok";
		}
	}
	
	/**
	 * 비밀번호 확인 
	 * 2020-04-01 김혜림
	 * @param userPwd
	 * @param userPwd2
	 * @return
	 */
	@ResponseBody
	@RequestMapping("pwdCheck.do")
	public String pwdCheck(String mPwd, String userPwd2) {
		if(mPwd.equals(userPwd2)) {
			return "ok";
		}else {
			return "fail";
		}
	}
	
	@RequestMapping("join.me")
	public String insertMember(Member m, ModelAndView mv, @RequestParam(value="phone1", required=false) String phone1,
															@RequestParam(value="phone2", required=false) String phone2,
															@RequestParam(value="phone3", required=false) String phone3,
															@RequestParam(value="email",required=false) String email,
															@RequestParam(value="selbox",required=false) String selbox,
															@RequestParam(value="selboxDirect",required=false) String selboxDirect,
															@RequestParam(value="address1",required=false) String address1,
															@RequestParam(value="address2",required=false) String address2,
															@RequestParam(value="address3",required=false) String address3) {
		
		System.out.println(m);
		
		// 비밀번호 암호화
		String encPwd = bcryptPasswordEncoder.encode(m.getmPwd());
		m.setmPwd(encPwd);
		
		m.setmPhone(phone1 + "-" + phone2 + "-" + phone3);
		if(!selbox.equals("") && !selbox.equals("direct")) {
			m.setmEmail(email + "@" + selbox);
		}else if(selbox.equals("direct")){
			m.setmEmail(email + "@" + selboxDirect);
		}
		
		
		if(!address1.equals("")) {
			m.setmAddr(address1 + "," + address2 +"," + address3);
		}
		
		int result = mService.insertMember(m);
		
		if(result > 0) {
			return "redirect:index.jsp";
		}else {
			mv.addObject("msg","회원가입 실패!");
			mv.setViewName("common/errorPage");
		}
		
		return "";
	}
	
}
