package com.kh.doit.board.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
   
   @RequestMapping("moveFB.go")
   public String moveFreeBoard() {
      return "board/freeBoard_list";
   }
   
   @RequestMapping("fbView.go")
   public String moveFreeBoardView() {
      return "board/freeBoard_view";
   }
   
   @RequestMapping("fbWrite.go")
   public String moveFreeBoardWrite() {
      return "board/freeBoard_write";
   }
   
   
   
   @RequestMapping("moveNT.go")
   public String moveNotice() {
      return "board/notice_list";
   }
   
   @RequestMapping("ntView.go")
   public String moveNoticeView() {
      return "board/notice_view";
   }
   
   @RequestMapping("ntWrite.go")
   public String moveNoticeWrite() {
      return "board/notice_write";
   }
   
   
}