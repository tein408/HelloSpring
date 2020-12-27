package controller;

import model.MemberBean;
import model.ShoppingDAO;
import model.SuBean;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

public class ShoppingController {

    ShoppingDAO shoppingDAO;

    public void setShoppingDAO(ShoppingDAO shoppingDAO){
        this.shoppingDAO=shoppingDAO;
    }//setShoppingDAO

    @RequestMapping("index.do")
    public ModelAndView index(HttpSession session){

        ModelAndView mav = new ModelAndView();
        MemberBean memberBean = (MemberBean) session.getAttribute("memberBean");

        if(memberBean==null){
            mav.addObject("memberBean", null);
            mav.setViewName("ShoppingMain");
        }
        else {
            mav.addObject("memberBean", memberBean);
            mav.setViewName("ShoppingMain");
        }
        return mav;
    }//index

    @RequestMapping("/menu1.do")
    public ModelAndView menu1(String num){
        ModelAndView mav = new ModelAndView();
        if(num == null){
            List<SuBean> list = shoppingDAO.getAllSutool();
            mav.addObject("list",list);
        }
        else {

        }
        return mav;
    }//menu1


}//class
