package com.controller;

import com.entity.Order;
import com.entity.Product;
import com.entity.User;
import com.service.OrderService;
import com.service.ProductService;
import com.utils.OrderNumberUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
@Controller
public class ShopController {
    @Autowired
    private ProductService productService;
    @Autowired
    private OrderService orderService;

    @RequestMapping("/query")
    public ModelAndView doQuery(String product_name,ModelAndView mav) {
        if (product_name == null) {
            product_name = "";
        }
        System.out.println(product_name);
        List<Product> products=productService.queryByProduct_name(product_name);
        mav.addObject("products", products);//用jstl取值
        mav.setViewName("query");//淘宝一行一列的那个界面
        return mav;
    }

    @RequestMapping(value = "/queryById", method = RequestMethod.GET)
    public ModelAndView queryById(Integer id) {
        Product product=productService.queryByProduct_id(id);//jstl取product的值
        ModelAndView mav = new ModelAndView("product");//有付款按钮的界面
        mav.addObject("product", product);
        return mav;
    }


    @RequestMapping("/doShop")
    public String doSubmit(HttpServletRequest request,@RequestParam("product_id") Integer product_id) {
        //提交到后台商家或者管理员

        //用户订单增加
        User user = (User) request.getSession().getAttribute("user");
        Order order = new Order();
        order.setNumber(OrderNumberUtil.getInstance().get());//订单号
        order.setUser_id(user.getUser_id());
        order.setStatus(0);//0待支付，1已支付未发货，2完成，3退款，4关闭（退款结束后或者有争议或者取消）
        order.setGoods_id(product_id);
        int row=orderService.insert(order);
        if (row > 0) {
            return "myorder";
        }else
            return "product";
    }

}
