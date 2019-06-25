package com.controller;

import com.entity.Product;
import com.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class ShopController {
    @Autowired
    private ProductService productService;

    @RequestMapping("/query")
    public ModelAndView doQuery(String product_name,ModelAndView mav) {
        List<Product> products=productService.queryProduct(product_name);
        mav.addObject("products", products);//用jstl取值
        mav.setViewName("查询结果的jsp页面");//淘宝一行一列的那个界面
        return mav;
    }

    @RequestMapping(value = "/query/{id}", method = RequestMethod.GET)
    public ModelAndView queryById(@PathVariable("id") Integer id) {
        Product product=productService.queryByProduct_id(id);//jstl取product的值
        ModelAndView mav = new ModelAndView("详情/结账页面");//有付款按钮的界面
        mav.addObject("product", product);
        return mav;
    }


    @RequestMapping("/doShop")
    public String doSubmit() {
        //提交到后台商家或者管理员
        return "购买成功或失败";
    }

}
