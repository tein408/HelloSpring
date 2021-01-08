package model;

import java.sql.Date;

public class BoardBean {

    private int num;
    private String writer;
    private String email;
    private String subject;
    private String pwd;
    private Date regdate;
    private int readcount;
    private String content;

    public BoardBean(int num, String writer, String email, String subject, String pwd, Date regdate, int readcount, String content) {
        this.num = num;
        this.writer = writer;
        this.email = email;
        this.subject = subject;
        this.pwd = pwd;
        this.regdate = regdate;
        this.readcount = readcount;
        this.content = content;
    }

    public BoardBean(String writer, String email, String subject, String pwd, Date regdate, int readcount, String content) {
        this.writer = writer;
        this.email = email;
        this.subject = subject;
        this.pwd = pwd;
        this.regdate = regdate;
        this.readcount = readcount;
        this.content = content;
    }

    @Override
    public String toString() {
        return "BoardBean{" +
                "num=" + num +
                ", writer='" + writer + '\'' +
                ", email='" + email + '\'' +
                ", subject='" + subject + '\'' +
                ", pwd='" + pwd + '\'' +
                ", regdate=" + regdate +
                ", readcount='" + readcount + '\'' +
                ", content='" + content + '\'' +
                '}';
    }

    public int getNum() {
        return num;
    }

    public void setNum(int num) {
        this.num = num;
    }

    public String getWriter() {
        return writer;
    }

    public void setWriter(String writer) {
        this.writer = writer;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getSubject() {
        return subject;
    }

    public void setSubject(String subject) {
        this.subject = subject;
    }

    public String getPwd() {
        return pwd;
    }

    public void setPwd(String pwd) {
        this.pwd = pwd;
    }

    public Date getRegdate() {
        return regdate;
    }

    public void setRegdate(Date regdate) {
        this.regdate = regdate;
    }

    public int getReadcount() {
        return readcount;
    }

    public void setReadcount(int readcount) {
        this.readcount = readcount;
    }

    public String getContent() {
        return content;
    }

    public void setContent(String content) {
        this.content = content;
    }
}
