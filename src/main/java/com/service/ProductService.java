package com.service;

import java.util.List;
import com.entity.Product;
public interface ProductService{

    int insert(Product product);

    int insertSelective(Product product);

    int insertList(List<Product> products);

    int updateByPrimaryKeySelective(Product product);

    List<Product> queryProduct(String product_name);

    List<Product> queryByProduct_name(String product_name);

    Product queryByProduct_id(int id);
}
