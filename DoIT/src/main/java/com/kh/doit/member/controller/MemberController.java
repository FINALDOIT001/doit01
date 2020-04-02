package com.kh.doit.member.controller;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.SessionAttributes;
import org.springframework.web.bind.support.SessionStatus;

import com.kh.doit.member.model.service.MemberService;
import com.kh.doit.member.model.vo.Member;
import com.kh.doit.util.UserSha256;

@SessionAttributes("loginUser")

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
	
	/**
	 * 로그인 inseok
	 * @param m
	 * @param session
	 * @return
	 */
	@RequestMapping(value="login.me", method=RequestMethod.POST)
	public String moveLogin(@ModelAttribute Member m, Model model) {
		
		Member loginUser = mService.memberLogin(m);
		
		if(loginUser != null && bcryptPasswordEncoder.matches(m.getmPwd(), loginUser.getmPwd())) {
			
			model.addAttribute("loginUser", loginUser);
			return "redirect:commom/main.jsp";
			
		}else {
			
			model.addAttribute("msg","로그인 실패!");
			return "common/errorPage";
			
		}
	}
	

		/**
		 * 로그아웃 기능 inseok
		 * @param status
		 * @return
		 */
		@RequestMapping("logout.do")
		public String logout(SessionStatus status) {
			// 로그아웃 처리를 위해 커맨드 객체로 세션의 상태를 관리할 수 있는 SessionStatus 객체가 필요
			
			// 세션의 상태를 확정지어주는 메소드
			status.setComplete();
			
			return "redirect:commom/main.jsp";
		}
	
}
