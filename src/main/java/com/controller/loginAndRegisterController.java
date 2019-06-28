package com.controller;

import com.entity.Order;
import com.entity.User;
import com.service.OrderService;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class loginAndRegisterController {

    @Autowired
    private UserService userService;
    @Autowired
    private OrderService orderService;

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


    @RequestMapping(value = "/register", method = RequestMethod.POST)
    public String register(@RequestParam("newUsername") String newUsername, @RequestParam("newPassword") String newPassword, @RequestParam("phoneNumber") String phoneNumber, @RequestParam("email") String email, HttpServletRequest request) {
        User user = new User();
        user.setUsername(newUsername);
        user.setPassword(newPassword);
        user.setNickname("逍遥客");
        user.setPhone(phoneNumber);
        user.setEmail(email);
        Integer i = userService.register(user);
        request.getSession().setAttribute("user",user);
        request.getSession().setAttribute("order_count",0);
        return "center";
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
                List<Order> orders = orderService.queryMyOrder(user1.getUser_id());
                request.getSession().setAttribute("order_count",orders.size());
                return "success";
            }
        }
        return "fail";
    }

}
