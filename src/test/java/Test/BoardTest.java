package Test;

import config.ShoppingDaoConfig;
import model.BoardBean;
import model.BoardDAO;
import model.ShoppingDAO;
import org.apache.log4j.Logger;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import java.util.List;

public class BoardTest {

    private Logger logger = Logger.getLogger(BoardDAO.class);

    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/shopping";
    private static final String USER = "shopping";
    private static final String PW = "1234";

    BoardDAO boardDAO;

    @Test
    public void test2() {
        AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(ShoppingDaoConfig.class);
        boardDAO = ctx.getBean(BoardDAO.class);
        try {
            List<BoardBean> list = boardDAO.getAllBoard();
            for(BoardBean boardBean : list){
                logger.debug(boardBean);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        ctx.close();
    }//test2()

    @Test
    public void test3() {
        AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(ShoppingDaoConfig.class);
        boardDAO = ctx.getBean(BoardDAO.class);
        try {
            List<BoardBean> list = boardDAO.boardInfo(1);
            for(BoardBean boardBean : list){
                logger.debug(boardBean);
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
        ctx.close();
    }//test3()

    @Test
    public void test4() {
        AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(ShoppingDaoConfig.class);
        boardDAO = ctx.getBean(BoardDAO.class);
        try {
            BoardBean boardBean = new BoardBean();
            boardBean.setContent("aa");
            boardBean.setEmail("aa");
            boardBean.setPwd("aa");
            boardBean.setWriter("a");
            boardBean.setSubject("aa");
            boardDAO.boardInsert(boardBean);
            test2();
        } catch (Exception e) {
            e.printStackTrace();
        }
        ctx.close();
    }//test4()

    @Test
    public void test5() {
        AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(ShoppingDaoConfig.class);
        boardDAO = ctx.getBean(BoardDAO.class);
        try {
            String id = "a";
            String name = boardDAO.getUserName(id);
            logger.debug("test---------");
            logger.debug("name: "+name);
        } catch (Exception e) {
            e.printStackTrace();
        }
        ctx.close();
    }//test5()



}
