package com.dao;

import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import com.entity.Company;

@Mapper
public interface CompanyMapper {
    int insert(@Param("company") Company company);

    int insertSelective(@Param("company") Company company);

    int insertList(@Param("companys") List<Company> companys);

    int updateByPrimaryKeySelective(@Param("company") Company company);

    Company queryCompanyById(int id);
}
