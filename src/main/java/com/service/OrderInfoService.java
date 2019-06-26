package com.service;

import java.util.List;
import com.entity.OrderInfo;
public interface OrderInfoService{

    int insert(OrderInfo orderInfo);

    int insertSelective(OrderInfo orderInfo);

    int insertList(List<OrderInfo> orderInfos);

    int updateByPrimaryKeySelective(OrderInfo orderInfo);

    OrderInfo queryGoods(int ofOrder);
}
