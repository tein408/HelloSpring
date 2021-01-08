package service;

import model.BoardBean;
import model.BoardDAO;
import model.SuBean;

import java.util.List;

public class BoardService {

    BoardDAO boardDAO;
    public BoardService(BoardDAO boardDAO){
        this.boardDAO = boardDAO;
    }

    public List<BoardBean> getAllBoard() {
        return boardDAO.getAllBoard();
    }//getAllBoard()


}//class
