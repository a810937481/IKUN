package com.service;

import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import static org.junit.Assert.*;

@RunWith(SpringJUnit4ClassRunner.class)
@ContextConfiguration(locations = {"/applicationContext.xml"})
public class UserServiceImplTest {

    @Autowired
    private UserService userService;

    @org.junit.Test
    public void getAllUser() throws Exception{
        System.out.println(userService.getAllUser());
    }
}