package controller;

import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

public class HelloController {

    @RequestMapping("/hello.do")
    public ModelAndView printHello(){

        String data = "hello world~!!!!";

        ModelAndView mav = new ModelAndView();
        mav.addObject("data",data);
        mav.setViewName("/HelloPrint");

        return mav;

    }//ModelAndView

}//class
