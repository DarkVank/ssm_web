package com.itheima.mapper;

import com.itheima.domain.User;
public interface UserMapper {
    //    login check
    public User findByPassword(User user);

}
