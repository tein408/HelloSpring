package controller;

import model.BoardBean;
import model.MemberBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import service.BoardService;

import javax.servlet.http.HttpSession;
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

    @RequestMapping(value = "/boardInfo.do", method = RequestMethod.GET)
    public ModelAndView boardInfo(int num){
        ModelAndView mav = new ModelAndView();
        if(num != 0){
            List<BoardBean> boardBean = boardService.boardInfo(num);
            mav.addObject("boardBean",boardBean);
        }
        mav.addObject("center","../board/boardInfo.jsp");
        mav.addObject("left","../board/boardLeft.jsp");
        mav.setViewName("/SuMenu/ShoppingMain");
        return mav;
    }

    @RequestMapping("/boardWrite.do")
    public ModelAndView boardWrite(HttpSession session){
        ModelAndView mav = new ModelAndView();
        MemberBean memberBean = (MemberBean) session.getAttribute("memberBean");
        if(memberBean == null){
            mav.addObject("center","../login/loginForm.jsp");
            mav.addObject("left","../board/boardLeft.jsp");
            mav.setViewName("/SuMenu/ShoppingMain");
        } else {
            mav.addObject("center", "../board/boardWrite.jsp");
            mav.addObject("left", "../board/boardLeft.jsp");
            mav.setViewName("/SuMenu/ShoppingMain");
        }
        return mav;
    }





}//class
