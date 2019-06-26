package com.controller;

import com.entity.Order;
import com.entity.User;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;

    @RequestMapping("/myorder")
    public String myOrder(HttpServletRequest request, Model model) {
        User user= (User) request.getSession().getAttribute("user");
        int id = user.getUser_id();
        List<Order> orders=orderService.queryMyOrder(id);
        model.addAttribute("orders", orders);
        return "myorder";
    }

    @RequestMapping("/delorder/{id}")
    public String doDel(@PathVariable(value = "id") int id,Model model) {
        int row = orderService.delOrder(id);
        if (row > 0) {
            return "myorder";
        }
        else
            return "error.html";
    }

}
