package com.yigo.controller;

import com.yigo.redis.RedisService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * @author ${user}
 * @create 2019-08-02 15:19
 **/
@Controller
public class RedisController {
    @Autowired
    private RedisService redisService;
    @RequestMapping("set")
    @ResponseBody
    public boolean set(){
        return redisService.setKey();
    }
}
