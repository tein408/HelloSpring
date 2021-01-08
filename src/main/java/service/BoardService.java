package service;

import model.BoardDAO;

public class BoardService {

    BoardDAO boardDAO;
    public BoardService(BoardDAO boardDAO){
        this.boardDAO = boardDAO;
    }

}//class
