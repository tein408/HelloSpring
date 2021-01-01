package controller;

import model.MemberBean;
import model.ShoppingDAO;
import model.SuBean;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
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
            mav.setViewName("/views/ShoppingMain");
        }
        else {
            mav.addObject("memberBean", memberBean);
            mav.setViewName("/views/ShoppingMain");
        }
        return mav;
    }//index

    @RequestMapping("/views/sumenu.do")
    public ModelAndView menu1(String num){
        ModelAndView mav = new ModelAndView();
        if(num == null){
            List<SuBean> list = shoppingDAO.getAllSutool();
            mav.addObject("list",list);
        }
        else {
            List<SuBean> list = shoppingDAO.getSelectSutool();
            mav.addObject("list",list);
        }
        mav.addObject("center","SuCenter.jsp");
        mav.addObject("left","Suleft.jsp");
        mav.setViewName("/views/ShoppingMain");
        return mav;
    }//sumenu



}//class
