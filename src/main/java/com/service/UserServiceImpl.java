package com.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.entity.User;
import com.dao.UserMapper;
import com.service.UserService;

@Service
public class UserServiceImpl implements UserService{

    @Resource
    private UserMapper userMapper;

    @Override
    public int insert(User user){
        return userMapper.insert(user);
    }

    @Override
    public int insertSelective(User user){
        return userMapper.insertSelective(user);
    }

    @Override
    public int insertList(List<User> users){
        return userMapper.insertList(users);
    }

    @Override
    public int updateByPrimaryKeySelective(User user){
        return userMapper.updateByPrimaryKeySelective(user);
    }
}
