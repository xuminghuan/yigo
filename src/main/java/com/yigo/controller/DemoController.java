package com.yigo.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author ${user}
 * @create 2019-08-01 17:43
 **/
@Controller
@RequestMapping("demo")
public class DemoController {

    @RequestMapping
    @ResponseBody
    public String hello(){
        return "hello,springboot";
    }
    @RequestMapping("thymeleaf")
    public String thymeleaf(Model model){
        System.out.println("thymeleaf");
        model.addAttribute("name","thymeleaf-spring");
        return "/index";
    }
}
