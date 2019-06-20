package com.service;

import java.util.List;
import com.entity.Company;
public interface CompanyService{

    int insert(Company company);

    int insertSelective(Company company);

    int insertList(List<Company> companys);

    int updateByPrimaryKeySelective(Company company);

}
