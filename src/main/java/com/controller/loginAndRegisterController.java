package com.controller;

import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class loginAndRegisterController {

    @Autowired
    private UserService userService;

    @RequestMapping("/usercheck")
    @ResponseBody
    public String usercheck(@RequestBody User user){
        boolean check = userService.registerCheck(user.getUsername());
        if (check){
            return "true";
        }else {
            return "false";
        }
    }

    @RequestMapping(value = "/loginAndRegister",method = RequestMethod.GET)
    public String loginAndRegister(){
        return "/loginAndRegister";
    }

    @RequestMapping(value = "/register",method = RequestMethod.POST)
    public String register(String newUsername,String newPassword,String phoneNumber,String email){
        User user = new User();
        user.setUsername(newUsername);
        user.setPassword(newPassword);
        user.setPhone(phoneNumber);
        user.setEmail(email);
        Integer i = userService.register(user);
        return "/loginAndRegister";
    }

}
