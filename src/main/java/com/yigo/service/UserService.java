package com.yigo.service;

import com.yigo.entity.User;
import com.baomidou.mybatisplus.service.IService;

import java.util.List;

/**
 * <p>
 *  服务类
 * </p>
 *
 * @author Ethan123
 * @since 2019-08-01
 */
public interface UserService extends IService<User> {
    public List<User> getUserList();
}
