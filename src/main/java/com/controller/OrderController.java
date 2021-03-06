package com.controller;

import com.entity.Order;
import com.entity.User;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;

@Controller
public class OrderController {
    @Autowired
    private OrderService orderService;

    @RequestMapping("/myorder")
    public String toOrder() {
        return "myorder";
    }

    @ResponseBody
    @RequestMapping(value = "/myorder.do", method = RequestMethod.POST)
    public List<Order> getOrder(HttpServletRequest request) {
        User user = (User) request.getSession().getAttribute("user");
        int user_id = user.getUser_id();
        List<Order> orders = orderService.queryMyOrder(user_id);
        request.getSession().setAttribute("order_count",orders.size());
        return orders;
    }

    @RequestMapping(value = "/delorder")
    @ResponseBody
    public String doDel(@RequestParam("id") int id) {
        int row = orderService.delOrder(id);
        if (row > 0) {
            return "success";
        } else {
            return "fail";
        }
    }

/*    @RequestMapping("/queryorder")
    public ModelAndView query(HttpServletRequest request,String product_name,ModelAndView mav)
    {
        User user= (User) request.getSession().getAttribute("user");
        int id = user.getUser_id();
        List<Order> orders = orderService.queryProduct_name(product_name, id);
        mav.setViewName("myorder");
        mav.addObject("orders", orders);
        return mav;
    }*/

}
