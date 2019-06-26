package com.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import com.entity.Product;

@Mapper
public interface ProductMapper {
    int insert(@Param("product") Product product);

    int insertSelective(@Param("product") Product product);

    int insertList(@Param("products") List<Product> products);

    int updateByPrimaryKeySelective(@Param("product") Product product);

    List<Product> queryProduct(@Param("product") String product_name);

    List<Product> queryProductByName(String product_name);

    Product queryByProduct_id(int id);
}
