package com.controller;

import com.entity.Order;
import com.entity.OrderInfo;
import com.entity.Product;
import com.entity.User;
import com.service.OrderInfoService;
import com.service.OrderService;
import com.service.ProductService;
import com.utils.OrderNumberUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import java.util.List;
@Controller
public class ShopController {
    @Autowired
    private ProductService productService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private OrderInfoService orderInfoService;

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
    public String doSubmit(HttpServletRequest request,List<Product> products,String telephone,String note,String name) {
        //提交到后台商家或者管理员

        //用户订单增加
        User user = (User) request.getSession().getAttribute("user");
        Order order = new Order();
        order.setNumber(OrderNumberUtil.getInstance().get());//订单号
        order.setUser_id(user.getUser_id());
        order.setStatus(1);//0待支付，1已支付未发货，2完成，3退款，4关闭（退款结束后或者有争议或者取消）
        order.setTelephone(telephone);
        order.setName(name);
        order.setNote(note);
        int row=orderService.insert(order);
        System.out.println(order.getUser_id());//返回一个自动生成id的值

        OrderInfo orderInfo = new OrderInfo();
        orderInfo.setOfOrder(order.getOrder_id());
        int size = products.size();//获得数组的长度，并设置产品id
        if (size==1) {
            orderInfo.setGoods(products.get(0).getProduct_id());
            orderInfoService.insert(orderInfo);
        } else if (size > 1) {
            for (Product product : products) {
                orderInfo.setGoods(product.getProduct_id());
                orderInfoService.insert(orderInfo);
            }
        } else {
            int i = 1 / 0;//事务管理并弹出错误
            return "error.html";
        }
        return "购买成功或失败";
    }

}
