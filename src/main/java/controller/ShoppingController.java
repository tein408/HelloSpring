package controller;

import model.MemberBean;
import model.SuBean;
import model.SuCartBean;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;
import service.ShoppingService;

import javax.servlet.http.HttpSession;
import java.util.List;

@Controller
public class ShoppingController {

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

    @RequestMapping(value = "/SuMenu/suinfo.do", params = "suno")
    public ModelAndView info(int suno){
        ModelAndView mav = new ModelAndView();
        if(suno != 0){
            List<SuBean> list = shoppingService.getSutoolInfo(suno);
            mav.addObject("list",list);
        }
        mav.addObject("center","suinfo.jsp");
        mav.addObject("left","Suleft.jsp");
        mav.setViewName("/SuMenu/ShoppingMain");
        return mav;
    }//info

    @RequestMapping(value = "/SuMenu/sutoolcart.do", method = RequestMethod.GET)
    public ModelAndView sutoolcart(SuCartBean cartBean, HttpSession session){
        ModelAndView mav = new ModelAndView();
        Cart cart = (Cart) session.getAttribute("cart");
        if(cart == null){
            cart = new Cart();
            session.setAttribute("cart",cart);
        }
        cart.push(cartBean);
        mav.addObject("msg", cartBean.getName()+" 제품 "+cartBean.getOptid()+"개 장바구니에 담음");
        mav.addObject("cart",cart);
        mav.addObject("center","SuCartResult.jsp");
        mav.addObject("left","Suleft.jsp");
        mav.setViewName("/SuMenu/ShoppingMain");
        return mav;
    }//sutoolcart()



}//class
