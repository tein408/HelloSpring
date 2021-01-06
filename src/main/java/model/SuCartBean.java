package model;

public class SuCartBean {
    private int no;
    private String name;
    private String img;
    private int optid;
    private int price;

    @Override
    public String toString() {
        return "SuCartBean{" +
                "no=" + no +
                ", name='" + name + '\'' +
                ", img='" + img + '\'' +
                ", optid='" + optid + '\'' +
                ", price=" + price +
                '}';
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

    public String getImg() {
        return img;
    }

    public void setImg(String img) {
        this.img = img;
    }

    public int getOptid() {
        return optid;
    }

    public void setOptid(int optid) {
        this.optid = optid;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }
}//class
