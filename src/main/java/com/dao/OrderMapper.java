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

    List<Order> queryMyOrder(int id);
}
