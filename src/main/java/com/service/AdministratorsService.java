package com.service;

import com.entity.Administrators;
import com.entity.User;

import java.util.List;

public interface AdministratorsService {

    Administrators getAdministratorsByName(String name);

    int addAdministrators(String ad_name,String ad_password,String ad_nickname);

    List<Administrators> getAllAdministrators();

    int deleteAdministrators(Integer id);

}
