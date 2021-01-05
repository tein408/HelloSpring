package Test;

import config.ShoppingDaoConfig;
import model.ShoppingDAO;
import org.apache.log4j.Logger;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.junit.Test;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;

import javax.inject.Inject;
import java.sql.Connection;
import java.sql.DriverManager;

public class ShoppingTest {

    private Logger logger = Logger.getLogger(ShoppingTest.class);

    private static final String DRIVER = "com.mysql.cj.jdbc.Driver";
    private static final String URL = "jdbc:mysql://localhost:3306/shopping";
    private static final String USER = "shopping";
    private static final String PW = "1234";

    @Inject
    private DataSource dataSource;

    ShoppingDAO shoppingDAO;

    @Test
    public void test() throws ClassNotFoundException{
        Class.forName(DRIVER);
        try(Connection conn = DriverManager.getConnection(URL,USER,PW)) {
            logger.info("db connect success");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }//test

    private Logger logger2 = Logger.getLogger(ShoppingDAO.class);

    @Test
    public void dataSourceConnectionTest() throws Exception {
        try {
            Connection conn = (Connection) dataSource.getConnection();
            logger2.debug("DataSourse ~");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }//dataSourceConnectionTest

    @Test
    public void test2() {
        AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(ShoppingDaoConfig.class);
        shoppingDAO = ctx.getBean(ShoppingDAO.class);
        try {
            //logger2.debug(shoppingDAO.getAllSutool());
            logger2.debug(shoppingDAO.getAllSutool().get(0).toString());
        } catch (Exception e) {
            e.printStackTrace();
        }
        ctx.close();
    }//test2()


    @Test
    public void test3() {
        AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(ShoppingDaoConfig.class);
        shoppingDAO = ctx.getBean(ShoppingDAO.class);
        try {
            logger2.debug(shoppingDAO.getSelectSutool(1));
        } catch (Exception e) {
            e.printStackTrace();
        }
        ctx.close();
    }//test2()

    @Test
    public void test4() {
        AnnotationConfigApplicationContext ctx = new AnnotationConfigApplicationContext(ShoppingDaoConfig.class);
        shoppingDAO = ctx.getBean(ShoppingDAO.class);
        try {
            logger2.debug(shoppingDAO.getSutoolInfo(1));
        } catch (Exception e) {
            e.printStackTrace();
        }
        ctx.close();
    }//test2()





}//class
