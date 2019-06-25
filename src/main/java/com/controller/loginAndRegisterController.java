package com.controller;

import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;

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
        user.setNickname("逍遥客");
        user.setPhone(phoneNumber);
        user.setEmail(email);
        Integer i = userService.register(user);
        return "/loginAndRegister";
    }

    @RequestMapping("/login")
    @ResponseBody//返回json类型的数据
    public String checkLogin(@RequestBody User user, HttpServletRequest request){//解析json类型的数据转化为实体类
        User user1 = userService.getUserByUsername(user.getUsername());
        /*System.out.println(user1);*/
        if (user1 != null) {
            if (user1.getStatus()!=-1)
                return "banned";

            if (user1.getPassword().equals(user.getPassword())) {
                request.getSession().setAttribute("user",user1);
                return "success";
            }
        }
        return "fail";
    }


}
