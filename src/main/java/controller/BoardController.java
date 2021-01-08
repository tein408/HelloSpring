package controller;

import model.BoardBean;
import model.SuBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.BoardService;

import java.util.List;

@Controller
@RequestMapping("/board/*")
public class BoardController {

    BoardService boardService;

    @Autowired
    public void boardService(BoardService boardService){
        this.boardService = boardService;
    }

    @RequestMapping("/board.do")
    public ModelAndView getAllBoard(){
        ModelAndView mav = new ModelAndView();
        List<BoardBean> list = boardService.getAllBoard();
        mav.addObject("list",list);
        mav.addObject("center","../board/boardList.jsp");
        mav.addObject("left","../board/boardLeft.jsp");
        mav.setViewName("/SuMenu/ShoppingMain");
        return mav;
    }






}//class
