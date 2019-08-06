package com.yigo.controller

import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.RequestMapping

@Controller
@RequestMapping("/to")
class IndexControl {
    @RequestMapping("/index")
    public String toIndex(Model model){
        println("1111111111111");
        return "home/index";
    }
}
