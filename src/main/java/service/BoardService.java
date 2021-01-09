package service;

import model.BoardBean;
import model.BoardDAO;
import model.MemberBean;
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

    public List<BoardBean> boardInfo(int num) {
        return boardDAO.boardInfo(num);
    }//getAllBoard()

    public void boardInsert(BoardBean boardBean){
        boardDAO.boardInsert(boardBean);
    }

    public String getUserName(String id){
        return boardDAO.getUserName(id);
    }

}//class
