package service;


import model.MemberBean;
import model.ShoppingDAO;
import model.SuBean;

import java.util.List;

public class ShoppingService {

    ShoppingDAO shoppingDAO;

    public ShoppingService(ShoppingDAO shoppingDAO){
        this.shoppingDAO = shoppingDAO;
    }

    public List<SuBean> getAllSutool(){
        return shoppingDAO.getAllSutool();
    }

    public List<SuBean> getSelectSutool(int num){
        return shoppingDAO.getSelectSutool(num);
    }


    public List<SuBean> getSutoolInfo(int num) {
        return shoppingDAO.getSutoolInfo(num);
    }

    public int getLogin(MemberBean memberBean) {
        return shoppingDAO.getLogin(memberBean);
    }

    public void insertMember(MemberBean memberBean) {
        shoppingDAO.insertMember(memberBean);
    }

    public int getLoginPro(MemberBean memberBean) {
        return shoppingDAO.getLoginPro(memberBean);
    }
}//class
