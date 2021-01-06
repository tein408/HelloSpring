package controller;

import model.SuCartBean;

import java.util.ArrayList;
import java.util.List;

public class Cart {

    private List<SuCartBean> itemlist = new ArrayList<SuCartBean>();

    public List<SuCartBean> getItemlist(){
        return itemlist;
    }

    public void push(SuCartBean cartBean){
        boolean alreadysutool = false;
        for(SuCartBean suCartBean : itemlist){
            if(cartBean.getNo() == suCartBean.getNo()){
                suCartBean.setOptid(suCartBean.getOptid()+cartBean.getOptid());
                alreadysutool=true;
                break;
            }
        }//for
        if(!alreadysutool){
            itemlist.add(cartBean);
        }
    }//push

}//class
