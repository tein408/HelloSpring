package controller;

import model.MemberBean;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpSession;

public class ShoppingController {

    @RequestMapping("index.do")
    ModelAndView index(HttpSession session){

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


}//class
