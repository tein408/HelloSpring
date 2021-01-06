package model;


import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
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

    public List<SuBean> getSutoolInfo(int num) {
        List<SuBean> list = jdbcTemplate.query("select * from sumenu where no=?",
                new RowMapper<SuBean>(){
                    @Override
                    public SuBean mapRow(ResultSet rs, int rowNum) throws SQLException {
                        SuBean suBean = new SuBean(
                                rs.getString("name"),
                                rs.getString("info"), rs.getString("img"),
                                rs.getInt("price"), rs.getDate("date")
                        );
                        suBean.setNo(rs.getInt("no"));
                        return suBean;
                    }},num);
        return list;
    }//getSutoolInfo

    public int getLogin(MemberBean memberBean) {
        Integer count = jdbcTemplate.queryForObject("select count(*) from member where id=?",
                new RowMapper<Integer>() {
                    @Override
                    public Integer mapRow(ResultSet resultSet, int i) throws SQLException {
                        return resultSet.getInt(1);
                    }
                },memberBean.getId());
        return count;
    }//getLogin()

    public void insertMember(MemberBean memberBean) {
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date date = new Date(System.currentTimeMillis());
        jdbcTemplate.update("insert into member (id, pwd, pwd2, name, phone, regdate) " +
                        "values (?,?,?,?,?,?)",
                memberBean.getId(), memberBean.getPwd(),memberBean.getPwd2(), memberBean.getName(),
                memberBean.getPhone(), simpleDateFormat.format(date));
    }//insertMember()

}//class
