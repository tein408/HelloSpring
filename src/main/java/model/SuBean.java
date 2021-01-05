package model;

import java.sql.Date;

public class SuBean {

    private int no;
    private String name;
    private String info;
    private String img;
    private int price;
    private Date date;
    private String temp;
    private String category;

    public SuBean() {}

    public SuBean(int no, String name, String info, String img,
                  int price, Date date, String temp, String category) {
        this.no = no;
        this.name = name;
        this.info = info;
        this.img = img;
        this.price = price;
        this.date = date;
        this.temp = temp;
        this.category = category;
    }

    public SuBean(int no, String name, String info, String img,
                  int price, Date date, String category) {
        this.no = no;
        this.name = name;
        this.info = info;
        this.img = img;
        this.price = price;
        this.date = date;
        this.category = category;
    }

    public SuBean(int no, String name, String info, String img, int price, Date date) {
        this.no = no;
        this.name = name;
        this.info = info;
        this.img = img;
        this.price = price;
        this.date = date;
    }

    public SuBean(String name, String info, String img, int price, Date date) {
        this.name = name;
        this.info = info;
        this.img = img;
        this.price = price;
        this.date = date;
    }

    public int getNo() {
        return no;
    }

    public void setNo(int no) {
        this.no = no;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getInfo() {
        return info;
    }

    public void setInfo(String info) {
        this.info = info;
    }

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public Date getDate() {
        return date;
    }

    public void setDate(Date date) {
        this.date = date;
    }

    public String getTemp() {
        return temp;
    }

    public void setTemp(String temp) {
        this.temp = temp;
    }

    public String getCategory() {
        return category;
    }

    public void setCategory(String cate) {
        this.category = cate;
    }

}
