package com.controller;

import com.entity.User;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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

    @RequestMapping(value = "/updatepassword",method = RequestMethod.POST)
    @ResponseBody
    public String updatepass(@RequestParam("password") String password, @RequestParam("newpassword") String newpassword, HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        int id = user.getUser_id();
/*        System.out.println(password);
        System.out.println(newpassword);
        System.out.println("user:"+user.getPassword());*/
        System.out.println();
        if (!user.getPassword().equals(password) ) {
            return "wrong";
        }
        int row = userService.updatePassword(id, newpassword);
        if (row > 0) {
            user.setPassword(newpassword);
            request.getSession().setAttribute("user",user);
            return "success";
        }else
            return "fail";
    }
}
