package com.kh.doit.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.kh.doit.member.model.service.MemberService;
import com.kh.doit.member.model.vo.Member;
import com.kh.doit.util.UserSha256;


@Controller
public class MemberController {
	
	@Autowired
	private MemberService mService;
	
	//암호화 처리
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
	
	@ResponseBody
	@RequestMapping("pwdCheck.do")
	public String pwdCheck(String userPwd, String userPwd2) {
		if(userPwd.equals(userPwd2)) {
			return "ok";
		}else {
			return "fail";
		}
	}
	
}
