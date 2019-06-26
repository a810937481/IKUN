package com.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import com.entity.Order;

@Mapper
public interface OrderMapper {
    int insert(@Param("order") Order order);

    int insertSelective(@Param("order") Order order);

    int insertList(@Param("orders") List<Order> orders);

    int updateByPrimaryKeySelective(@Param("order") Order order);

    List<Order> queryMyOrder(@Param("user_id") int user_id);

    int delOrder(@Param("order_id") int order_id);

    List<Order> queryByProduct_name(@Param("product_name") String product_name,@Param("user_id") int user_id);
}
