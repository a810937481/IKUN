package com.service;

import org.springframework.stereotype.Service;
import javax.annotation.Resource;
import java.util.List;
import com.entity.Company;
import com.dao.CompanyMapper;
import com.service.CompanyService;

@Service
public class CompanyServiceImpl implements CompanyService{

    @Resource
    private CompanyMapper companyMapper;

    @Override
    public int insert(Company company){
        return companyMapper.insert(company);
    }

    @Override
    public int insertSelective(Company company){
        return companyMapper.insertSelective(company);
    }

    @Override
    public int insertList(List<Company> companys){
        return companyMapper.insertList(companys);
    }

    @Override
    public int updateByPrimaryKeySelective(Company company){
        return companyMapper.updateByPrimaryKeySelective(company);
    }
}
