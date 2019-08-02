package com.yigo.mapper;

import com.yigo.entity.User;
import com.baomidou.mybatisplus.mapper.BaseMapper;
import org.springframework.stereotype.Repository;

import java.util.List;

/**
 * <p>
 *  Mapper 接口
 * </p>
 *
 * @author Ethan123
 * @since 2019-08-01
 */
@Repository
public interface UserMapper extends BaseMapper<User> {
}
