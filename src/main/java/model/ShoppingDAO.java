package model;


import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.util.List;

@Repository
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

    public List<SuBean> getSelectSutool() {
        return null;
    }//getSelctSutool

}//class
