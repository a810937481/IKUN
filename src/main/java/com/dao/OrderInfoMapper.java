package com.dao;

import com.entity.Product;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import com.entity.OrderInfo;

@Mapper
public interface OrderInfoMapper {
    int insert(@Param("orderInfo") OrderInfo orderInfo);

    int insertList(@Param("orderInfos") List<OrderInfo> orderInfos);

    int updateByPrimaryKeySelective(@Param("orderInfo") OrderInfo orderInfo);

    OrderInfo queryGoods(int ofOder);
}
