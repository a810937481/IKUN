package com.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.entity.Order;
import com.dao.OrderMapper;
import com.service.OrderService;
import org.springframework.transaction.annotation.Transactional;

@Service
@Transactional

public class OrderServiceImpl implements OrderService{

    @Resource
    private OrderMapper orderMapper;

    @Override
    public int insert(Order order){
        return orderMapper.insert(order);
    }

    @Override
    public int insertSelective(Order order){
        return orderMapper.insertSelective(order);
    }

    @Override
    public int insertList(List<Order> orders){
        return orderMapper.insertList(orders);
    }

    @Override
    public int updateByPrimaryKeySelective(Order order){
        return orderMapper.updateByPrimaryKeySelective(order);
    }

    @Override
    public List<Order> queryMyOrder(int id) {
        return orderMapper.queryMyOrder(id);
    }

    @Override
    public int delOrder(int order_id) {
        return orderMapper.delOrder(order_id);
    }
}
