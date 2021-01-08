package model;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

public class BoardDAO {

    JdbcTemplate jdbcTemplate;

    public BoardDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<BoardBean> getAllBoard() {
        List<BoardBean> list = jdbcTemplate.query("select * from board",
                new RowMapper<BoardBean>() {
                    @Override
                    public BoardBean mapRow(ResultSet resultSet, int i) throws SQLException {
                        BoardBean boardBean = new BoardBean(
                                resultSet.getInt("num"),resultSet.getString("writer"),
                                resultSet.getString("email"),resultSet.getString("subject"),
                                resultSet.getString("pwd"),resultSet.getDate("regdate"),
                                resultSet.getInt("readcount"),resultSet.getString("content")
                        );
                        return boardBean;
                    }
                });
        return list;
    }//getAllBoard()

}//class
