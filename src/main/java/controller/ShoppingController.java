package controller;

import model.MemberBean;
import model.ShoppingDAO;
import model.SuBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;
import service.ShoppingService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ShoppingController {

    ShoppingDAO shoppingDAO;
    ShoppingService shoppingService;

    @Autowired
    public void shoppingService(ShoppingService shoppingService){
        this.shoppingService=shoppingService;
    }//setShoppingDAO

    @RequestMapping("/main/index.do")
    public ModelAndView index(HttpSession session){

        ModelAndView mav = new ModelAndView();
        MemberBean memberBean = (MemberBean) session.getAttribute("memberBean");

        if(memberBean==null){
            mav.addObject("memberBean", null);
            mav.setViewName("SuMenu/ShoppingMain");
        }
        else {
            mav.addObject("memberBean", memberBean);
            mav.setViewName("SuMenu/ShoppingMain");
        }
        return mav;
    }//index

    @RequestMapping("/SuMenu/sumenu.do")
    public ModelAndView menu1(String num){
        ModelAndView mav = new ModelAndView();
        if(num == null){
            List<SuBean> list = shoppingService.getAllSutool();
            mav.addObject("list",list);
        }
        else {
            List<SuBean> list = shoppingService.getSelectSutool(Integer.parseInt(num));
            mav.addObject("list",list);
        }
        mav.addObject("center","SuCenter.jsp");
        mav.addObject("left","Suleft.jsp");
        mav.setViewName("/SuMenu/ShoppingMain");
        return mav;
    }//sumenu



}//class
