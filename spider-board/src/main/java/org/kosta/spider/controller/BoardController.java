package org.kosta.spider.controller;

import org.kosta.spider.model.BoardService;
import org.kosta.spider.model.ListVo;
import org.kosta.spider.model.PagingBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class BoardController {
  @Autowired
  private BoardService boardService;
  
  @RequestMapping("board.do")
  
  public String list(Model model,String nowPage) {
    System.out.println("test입니다.");
    if(nowPage==null)
      nowPage="1";
    
    System.out.println(nowPage);
    ListVo list = boardService.list(Integer.parseInt(nowPage));
    model.addAttribute("mvo",list);
   return "board_list";
  }

}
