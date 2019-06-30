package com.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.entity.Product;
import com.dao.ProductMapper;
import com.service.ProductService;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional
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
    public List<Product> queryByProduct_name(String product_name) {
        return productMapper.queryProductByName(product_name);
    }

    @Override
    public Product queryByProduct_id(int id) {
        return productMapper.queryByProduct_id(id);
    }

    @Override
    public List<Product> allProduct() {
        return productMapper.allProduct();
    }

    @Override
    public int updateProduct(int id, String name, String info, Double price) {
        return productMapper.updateProuduct(id,name,info,price);
    }

    @Override
    public int insertProduct(int product_id, String product_name, String product_info, int company_id, Double price) {
        return productMapper.insertProduct(product_id,product_name,product_info,company_id,price);
    }


}
