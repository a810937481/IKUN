package com.service;

import java.util.List;
import com.entity.User;
public interface UserService{

    int insert(User user);

    int insertSelective(User user);

    int insertList(List<User> users);

    int updateByPrimaryKeySelective(User user);

    boolean login(String username,String password);

    boolean registerCheck(String Username);

    int register(User user);
}
