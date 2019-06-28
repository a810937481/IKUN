package com.service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.entity.User;
import com.dao.UserMapper;
import com.service.UserService;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
public class UserServiceImpl implements UserService{

    @Autowired
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

    @Override
    public User getUserByUsername(String username) {
        User user = userMapper.getUserByUsername(username);
        return user;
    }

    @Override
    public boolean registerCheck(String username) {
        User user = userMapper.getUserByUsername(username);
        if (user != null){
            return true;
        }else{
            return false;
        }
    }

    @Override
    public int register(User user) {
        Integer result = userMapper.addUser(user);
        return result;
    }

    @Override
    public int updateUser(User user){
        Integer result = userMapper.updateUser(user);
        return result;
    }

    @Override
    public int updatePassword(int id, String password) {
        return userMapper.updatepassword(id,password);
    }
}
