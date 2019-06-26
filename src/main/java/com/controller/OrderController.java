package com.controller;

import com.entity.Order;
import com.entity.OrderInfo;
import com.entity.User;
import com.service.OrderInfoService;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;
    @Autowired
    private OrderInfoService orderInfoService;

    @RequestMapping("/myorder")
    public String myOrder(HttpServletRequest request) {
        User user= (User) request.getSession().getAttribute("user");
        int id = user.getUser_id();
        List<Order> orders=orderService.queryMyOrder(id);
        int size = orders.size();
        if (size == 0) {
            return "myorder";
        } else if (size == 1) {
            OrderInfo orderInfo = orderInfoService.queryGoods(orders.get(0).getOrder_id());
        } else if (size > 1) {
            OrderInfo orderInfo = orderInfoService.queryGoods(orders.get(0).getOrder_id());
            orderInfo.setProduct_name(orderInfo.getProduct_name()+"等");
        }
        return "myorder";
    }

}
