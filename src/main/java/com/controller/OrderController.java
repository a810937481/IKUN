package com.controller;

import com.entity.Order;
import com.entity.User;
import com.service.OrderService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

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
    public ModelAndView doDel(@PathVariable(value = "id") int id, ModelAndView mav, HttpServletRequest request) {
        int row = orderService.delOrder(id);
        mav.setViewName("myorder");
        if (row > 0) {
            User user = (User) request.getSession().getAttribute("user");
            int uid = user.getUser_id();
            List<Order> orders = orderService.queryMyOrder(id);
            mav.addObject("orders", orders);
            return mav;
        } else {
            mav.setViewName("error.html");
            return mav;
        }
    }

    @RequestMapping("/queryorder")
    public ModelAndView query(HttpServletRequest request,String product_name,ModelAndView mav)
    {
        User user= (User) request.getSession().getAttribute("user");
        int id = user.getUser_id();
        List<Order> orders = orderService.queryProduct_name(product_name, id);
        mav.setViewName("myorder");
        mav.addObject("orders", orders);
        return mav;
    }

}
