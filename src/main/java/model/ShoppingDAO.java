package model;


import org.springframework.jdbc.core.JdbcTemplate;

import javax.sql.DataSource;
import java.util.List;


public class ShoppingDAO {

    JdbcTemplate template;
    DataSource dataSource;

    public void setDataSource(DataSource dataSource){
        this.dataSource=dataSource;
        template = new JdbcTemplate(dataSource);
    }//setDataSource

    public List<SuBean> getAllSutool() {
        return null;
    }//getAllSutool

}//class
