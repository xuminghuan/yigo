package com.yigo.redis;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author ${user}
 * @create 2019-08-02 15:13
 **/
@Service
public class RedisService {

    @Autowired
    private RedisUtil redisUtil;
    public boolean setKey(){
        redisUtil.set("k2","v2");
        return true;
    }
}
