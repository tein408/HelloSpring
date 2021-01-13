package model;

import org.apache.tomcat.jdbc.pool.DataSource;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

public class BoardDAO {

    JdbcTemplate jdbcTemplate;

    public BoardDAO(DataSource dataSource) {
        this.jdbcTemplate = new JdbcTemplate(dataSource);
    }

    public List<BoardBean> getAllBoard() {
        List<BoardBean> list = jdbcTemplate.query("select * from board order by regdate desc",
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

    public List<BoardBean> boardInfo(int num) {
        jdbcTemplate.update("update board set readcount=readcount+1 where num=?",num);
        List<BoardBean> boardInfo = jdbcTemplate.query("select * from board where num=?",
                new RowMapper<BoardBean>() {
                    @Override
                    public BoardBean mapRow(ResultSet resultSet, int i) throws SQLException {
                        BoardBean boardBean = new BoardBean(
                                resultSet.getString("writer"),
                                resultSet.getString("email"),resultSet.getString("subject"),
                                resultSet.getString("pwd"),resultSet.getDate("regdate"),
                                resultSet.getInt("readcount"),resultSet.getString("content")
                        );
                        boardBean.setNum(resultSet.getInt("num"));
                        return boardBean;
                    }
                }, num);
        return boardInfo;
    }//boardInfo()

    public void boardInsert(BoardBean boardBean){
        SimpleDateFormat simpleDateFormat = new SimpleDateFormat("yyyy-MM-dd hh:mm:ss");
        Date date = new Date(System.currentTimeMillis());
        jdbcTemplate.update("insert into board (writer, subject, pwd, regdate, readcount, content, email)" +
                " values (?,?,?,?,?,?,?)",
                boardBean.getWriter(), boardBean.getSubject(),boardBean.getPwd(),
                date, 0, boardBean.getContent(), boardBean.getEmail());
    }//boardInsert()

    public String getUserName(String id){
        String name = "";
        name = jdbcTemplate.queryForObject("select name from member where id=?", new RowMapper<String>() {
            @Override
            public String mapRow(ResultSet resultSet, int i) throws SQLException {
                return resultSet.getString("name");
            }
        },id);
        return name;
    }//getUserName()

    public void boardUpdate(BoardBean boardBean){
        jdbcTemplate.update("update board set pwd=?, email=?, content=? where num=? ",
                boardBean.getPwd(), boardBean.getEmail(), boardBean.getContent(), boardBean.getNum());
    }//boardUpdate()

    public void boardDel(BoardBean boardBean){
        jdbcTemplate.update("delete from board where num=? and pwd=?",
                boardBean.getNum(), boardBean.getPwd());
    }




}//class
