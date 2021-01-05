package model;


import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.context.annotation.Bean;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class ShoppingDAO {

    JdbcTemplate jdbcTemplate;

    public ShoppingDAO(DataSource dataSource) {
       this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<SuBean> getAllSutool() {
        List<SuBean> list = jdbcTemplate.query("select * from sumenu",
                new RowMapper<SuBean>(){
                    @Override
                    public SuBean mapRow(ResultSet rs, int rowNum) throws SQLException {
                        SuBean suBean = new SuBean(
                                rs.getInt("no"), rs.getString("name"),
                                rs.getString("info"), rs.getString("img"),
                                rs.getInt("price"), rs.getDate("date"),
                                rs.getString("category"));
                        return suBean;
                    }});
            return list;
    }//getAllSutool


    public List<SuBean> getSelectSutool(int num) {
        List<SuBean> list = jdbcTemplate.query("select * from sumenu where category=?",
                new RowMapper<SuBean>(){
                    @Override
                    public SuBean mapRow(ResultSet rs, int rowNum) throws SQLException {
                        SuBean suBean = new SuBean(
                                rs.getInt("no"), rs.getString("name"),
                                rs.getString("info"), rs.getString("img"),
                                rs.getInt("price"), rs.getDate("date")
                                );
                        suBean.setCategory(rs.getString("category"));
                        return suBean;
                    }},num);
        return list;
    }//getSelctSutool

}//class
