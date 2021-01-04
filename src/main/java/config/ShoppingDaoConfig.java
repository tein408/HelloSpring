package config;

import model.ShoppingDAO;
import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;


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

}
