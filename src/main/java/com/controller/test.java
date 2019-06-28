package com.controller;

import com.entity.Order;
import com.entity.User;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class test {
    @Autowired
    private OrderService orderService;
    @ResponseBody
    @RequestMapping(value = "/test", method = RequestMethod.POST)
    public List<Order> doTest(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        int user_id = user.getUser_id();
        List<Order> orders = orderService.queryMyOrder(user_id);
        return orders;
    }

    @RequestMapping("/totest")
    public String totest() {
        return "test";
    }
}
