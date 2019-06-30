package com.service;

import com.dao.AdministratorsMapper;
import com.entity.Administrators;
import com.entity.User;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;

@Service
@Transactional
public class AdministratorsServiceImpl implements AdministratorsService {

    @Autowired
    private AdministratorsMapper administratorsMapper;

    @Override
    public Administrators getAdministratorsByName(String name) {
        Administrators administrators = administratorsMapper.getAdministratorsByName(name);
        return administrators;
    }

    @Override
    public int addAdministrators(String ad_name,String ad_password,String ad_nickname) {
        return administratorsMapper.addAdministrators(ad_name,ad_password,ad_nickname);
    }

    @Override
    public List<Administrators> getAllAdministrators() {
        return administratorsMapper.getAllAdministrators();
    }

    @Override
    public int deleteAdministrators(Integer id) {
        return administratorsMapper.deleteAdministrators(id);
    }
}
