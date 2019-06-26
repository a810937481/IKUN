package com.service;

import java.util.List;
import com.entity.Order;
public interface OrderService{

    int insert(Order order);

    int insertSelective(Order order);

    int insertList(List<Order> orders);

    int updateByPrimaryKeySelective(Order order);

    List<Order> queryMyOrder(int id);

    int delOrder(int order_id);
}
