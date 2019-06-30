package com.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.entity.Company;
import com.entity.Order;
import com.entity.Product;
import com.entity.User;
import com.service.CompanyService;
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
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;
@Controller
public class ShopController {
    @Autowired
    private ProductService productService;
    @Autowired
    private OrderService orderService;
    @Autowired
    private CompanyService companyService;

    @RequestMapping("/query")
    public ModelAndView doQuery(String product_name, ModelAndView mav) {
        System.out.println(product_name);
        List<Product> products = productService.queryByProduct_name(product_name);
        mav.addObject("products", products);//用jstl取值
        mav.setViewName("query");//淘宝一行一列的那个界面
        return mav;
    }

    @RequestMapping(value = "/queryById", method = RequestMethod.GET)
    public ModelAndView queryById(Integer id) {
        Product product = productService.queryByProduct_id(id);//jstl取product的值
        ModelAndView mav = new ModelAndView("product");//有付款按钮的界面
        mav.addObject("product", product);
        return mav;
    }


    @RequestMapping("/doShop")
    public String doSubmit(HttpServletRequest request, Integer product_id) {
        //提交到后台商家或者管理员

        //用户订单增加
        User user = (User) request.getSession().getAttribute("user");
        Order order = new Order();
        order.setNumber(OrderNumberUtil.getInstance().get());//订单号
        order.setUser_id(user.getUser_id());
        order.setStatus(0);//0待支付，1已支付未发货，2完成，3退款，4关闭（退款结束后或者有争议或者取消）
        order.setGoods_id(product_id);
        int row = orderService.insert(order);
        if (row > 0) {
            return "myorder";
        } else
            return "product";
    }

    @RequestMapping("/getAllProduct")
    public void getAllProduct(HttpServletResponse response) throws IOException {
        List<Product> products = productService.allProduct();
        JSONArray jsonArray = new JSONArray();
        forAllProducts(response, jsonArray, products);
    }

    @RequestMapping("/queryProductById")
    public void queryProductById(@RequestParam(value = "product_id") Integer product_id,
                                 HttpServletResponse response) throws IOException {
        Product product = productService.queryByProduct_id(product_id);
        if (product != null) {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("product_name", product.getProduct_name());
            jsonObject.put("product_info", product.getProduct_info());
            jsonObject.put("price", product.getPrice());
            response.setContentType("text/json;charest=utf-8");
            response.getWriter().println(jsonObject.toJSONString());
        } else {
            response.getWriter().println("failed");
        }
    }

    @RequestMapping("/updateProduct")
    public void updateProduct(@RequestParam(value = "product_id") Integer product_id,
                              @RequestParam(value = "product_name") String product_name,
                              @RequestParam(value = "product_info") String product_info,
                              @RequestParam(value = "price") Double price,
                              HttpServletResponse response) throws IOException {
        Integer i = productService.updateProduct(product_id, product_name, product_info, price);
        JSONArray jsonArray = new JSONArray();
        if (i != 1) {
            response.getWriter().println("failed");
        } else {
            List<Product> products = productService.allProduct();
            forAllProducts(response, jsonArray, products);
        }
    }

    @RequestMapping("/insertProduct")
    public void insertProduct(@RequestParam(value = "product_id") Integer product_id,
                              @RequestParam(value = "product_name") String product_name,
                              @RequestParam(value = "product_info") String product_info,
                              @RequestParam(value = "company_id") Integer company_id,
                              @RequestParam(value = "price") Double price,
                              HttpServletResponse response)throws IOException{
        int i = productService.insertProduct(product_id,product_name,product_info,company_id,price);
        JSONArray jsonArray = new JSONArray();
        if (i != 1){
            List<Product> products = productService.allProduct();
            forAllProducts(response, jsonArray, products);
        }else {
            response.getWriter().println("failed");
        }

    }

    private void forAllProducts(HttpServletResponse response, JSONArray jsonArray, List<Product> products) throws IOException {
        if (products == null) {
            response.getWriter().println("failed");
        } else {
            for (int i = 0; i <= products.size() - 1; i++) {
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("product_id", products.get(i).getProduct_id());
                jsonObject.put("product_name", products.get(i).getProduct_name());
                jsonObject.put("product_info", products.get(i).getProduct_info());
                Company company = companyService.queryCompanyById(products.get(i).getCompany_id());
                jsonObject.put("company_name", company.getCompany_name());
                jsonObject.put("price", products.get(i).getPrice());
                jsonArray.add(jsonObject);
            }
            response.setContentType("text/json;charest=utf-8");
            response.getWriter().println(jsonArray.toJSONString());
        }
    }
}
