package com.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.entity.Product;
import com.dao.ProductMapper;
import com.service.ProductService;

@Service
public class ProductServiceImpl implements ProductService{

    @Resource
    private ProductMapper productMapper;

    @Override
    public int insert(Product product){
        return productMapper.insert(product);
    }

    @Override
    public int insertSelective(Product product){
        return productMapper.insertSelective(product);
    }

    @Override
    public int insertList(List<Product> products){
        return productMapper.insertList(products);
    }

    @Override
    public int updateByPrimaryKeySelective(Product product){
        return productMapper.updateByPrimaryKeySelective(product);
    }

    @Override
    public List<Product> queryProduct(String product_name) {
        return productMapper.queryProduct(product_name);
    }

    @Override
    public Product queryByProduct_id(int id) {
        return null;
    }
}
