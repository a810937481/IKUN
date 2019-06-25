package com.controller;

import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;

@Controller
public class infoController {

    @Autowired
    private UserService userService;

    @RequestMapping("/info")
    public String toInfo(){
        return "/info";
    }

    @RequestMapping("/updateInfo")
    @ResponseBody
    public String updateInfo(@RequestBody User user, HttpServletRequest request){
        User user1 = (User) request.getSession().getAttribute("user");
        user.setUser_id(user1.getUser_id());
        Integer result = userService.updateUser(user);
        System.out.println(result);
        if (result == 1){
            request.getSession().setAttribute("user",user1);
            return "success";
        }else {
            return "false";
        }

    }

}
