package com.dao;

import com.entity.Administrators;
import com.entity.User;
import org.apache.ibatis.annotations.Param;

import java.util.List;

public interface AdministratorsMapper {

    Administrators getAdministratorsByName(String name);

    List<Administrators> getAllAdministrators();

    int addAdministrators(@Param(value = "ad_name") String ad_name,@Param(value = "ad_password") String ad_password,@Param(value = "ad_nickname") String ad_nickname);

    int deleteAdministrators(Integer id);

}
