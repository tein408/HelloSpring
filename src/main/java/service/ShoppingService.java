package service;


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
}
