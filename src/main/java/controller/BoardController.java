package controller;

import model.BoardBean;
import model.MemberBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.view.RedirectView;
import service.BoardService;
import service.ShoppingService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
@RequestMapping("/board/*")
public class BoardController {

    BoardService boardService;
    ShoppingService shoppingService;

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
        String id = memberBean.getId();
        String name = boardService.getUserName(id);
        if(memberBean == null){
            mav.addObject("center","../login/loginForm.jsp");
            mav.addObject("left","../board/boardLeft.jsp");
            mav.setViewName("/SuMenu/ShoppingMain");
        } else {
            mav.addObject("name", name);
            mav.addObject("center", "../board/boardWrite.jsp");
            mav.addObject("left", "../board/boardLeft.jsp");
            mav.setViewName("/SuMenu/ShoppingMain");
        }
        return mav;
    }

    @RequestMapping("/boardWritePro.do")
    public ModelAndView boardWritePro(BoardBean boardBean){
        boardService.boardInsert(boardBean);
        return new ModelAndView(new RedirectView("/board/board.do"));
    }

    @RequestMapping(value = "/boardUpdate.do", method = RequestMethod.GET)
    public ModelAndView boardUpdate(BoardBean boardBean){
        ModelAndView mav = new ModelAndView();
        mav.addObject("boardBean", boardBean);
        mav.addObject("center", "../board/boardUpdate.jsp");
        mav.addObject("left", "../board/boardLeft.jsp");
        mav.setViewName("/SuMenu/ShoppingMain");
        return mav;
    }

    @RequestMapping("/boardUpdatePro.do")
    public ModelAndView boardUpdatePro(BoardBean boardBean){
        ModelAndView mav = new ModelAndView();
        boardService.boardUpdate(boardBean);
        return new ModelAndView(new RedirectView("/board/boardInfo.do?num="+boardBean.getNum()));
    }

    @RequestMapping("/boardDel.do")
    public ModelAndView boardDel(int num){
        ModelAndView mav = new ModelAndView();
        mav.addObject("num", num);
        mav.addObject("center", "../board/boardDelete.jsp");
        mav.addObject("left", "../board/boardLeft.jsp");
        mav.setViewName("/SuMenu/ShoppingMain");
        return mav;
    }

    @RequestMapping("/boardDelPro.do")
    public ModelAndView boardDelPro(BoardBean boardBean){
        boardService.boardDel(boardBean);
        return new ModelAndView(new RedirectView("/board/board.do"));
    }






}//class
