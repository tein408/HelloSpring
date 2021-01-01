package Test;

import model.ShoppingDAO;
import org.apache.log4j.Logger;
import org.junit.Test;

import javax.inject.Inject;
import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.DriverManager;

/*@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"classpath:../../web/WEB-INF/dispatcher-servlet.xml"})*/
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
    public void test2() {
        logger2.debug("dao connect test");
        shoppingDAO = new ShoppingDAO(dataSource);
        try {
            logger2.debug(shoppingDAO.getAllSutool());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }//test2()

    @Test
    public void dataSourceConnectionTest() throws Exception {
        try {
            Connection conn = (Connection) dataSource.getConnection();
            logger2.debug("DataSourse ~");
        } catch (Exception e) {
            e.printStackTrace();
        }
    }//dataSourceConnectionTest



}//class
