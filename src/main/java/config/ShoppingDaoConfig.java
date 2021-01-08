package config;

import controller.ShoppingController;
import model.BoardDAO;
import model.ShoppingDAO;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import service.BoardService;
import service.ShoppingService;


@Configuration
public class ShoppingDaoConfig {

    @Bean(destroyMethod = "close")
    public DataSource dataSource(){
        DataSource ds = new DataSource();
        ds.setDriverClassName("com.mysql.cj.jdbc.Driver");
        ds.setUrl("jdbc:mysql://localhost:3306/shopping");
        ds.setUsername("shopping");
        ds.setPassword("1234");
        return ds;
    }

    @Bean
    public ShoppingDAO shoppingDAO(){
        return new ShoppingDAO(dataSource());
    }

    @Bean
    public ShoppingService shoppingService(){
        return new ShoppingService(shoppingDAO());
    }

    @Bean
    public BoardDAO boardDAO(){
        return new BoardDAO(dataSource());
    }

    @Bean
    public BoardService boardService(){
        return new BoardService(boardDAO());
    }

}
