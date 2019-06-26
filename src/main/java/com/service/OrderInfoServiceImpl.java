package com.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.entity.OrderInfo;
import com.dao.OrderInfoMapper;

@Service
public class OrderInfoServiceImpl implements OrderInfoService{

    @Resource
    private OrderInfoMapper orderInfoMapper;

    @Override
    public int insert(OrderInfo orderInfo){
        return orderInfoMapper.insert(orderInfo);
    }

    @Override
    public int insertList(List<OrderInfo> orderInfos){
        return orderInfoMapper.insertList(orderInfos);
    }

    @Override
    public int updateByPrimaryKeySelective(OrderInfo orderInfo){
        return orderInfoMapper.updateByPrimaryKeySelective(orderInfo);
    }

    @Override
    public OrderInfo queryGoods(int ofOrder) {
        return orderInfoMapper.queryGoods(ofOrder);
    }
}
