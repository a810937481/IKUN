package com.controller;

import com.entity.Product;
import com.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.List;

@Controller
public class FreshController {
    @Autowired
    private ProductService productService;

    @RequestMapping("/tofresh")
    public String tofresh(HttpServletRequest request) {
        List<Integer> product_ids = productService.findAllProduct_id();
        int ramdom=0;
        List<Integer> randoms = new ArrayList<>();//存随机的product_Id
        for (int i = 0; i < 3; i++) {
            ramdom=(int)(Math.random()*product_ids.size());//生成随机数
            System.out.println(ramdom);
            randoms.add(product_ids.get(ramdom));//取随机的product_id
            product_ids.remove(ramdom); //删除数组里的这个id
        }
        List<Product> products = productService.findByids(randoms);
        request.getSession().setAttribute("products", products);
        return "fresh";
    }

/*    @RequestMapping(value = "/getfresh",method = RequestMethod.POST)
    public String getFresh(HttpServletRequest request) {
        List<Integer> product_ids = productService.findAllProduct_id();
        int ramdom=0;
        List<Integer> randoms = new ArrayList<>();//存随机的product_Id
        for (int i = 0; i < 3; i++) {
            ramdom=(int)(Math.random()*product_ids.size());//生成随机数
            System.out.println(ramdom);
            randoms.add(product_ids.get(ramdom));//取随机的product_id
            product_ids.remove(ramdom); //删除数组里的这个id
        }
        List<Product> products = productService.findByids(randoms);
        request.getSession().setAttribute("products", products);
        return "fresh";
    }*/
}
