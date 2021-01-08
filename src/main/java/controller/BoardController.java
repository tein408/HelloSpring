package controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import service.BoardService;

@Controller
@RequestMapping("/board/*")
public class BoardController {

    BoardService boardService;

    public void boardService(BoardService boardService){
        this.boardService = boardService;
    }





}//class
