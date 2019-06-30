package com.controller;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONObject;
import com.entity.Administrators;
import com.entity.User;
import com.service.AdministratorsService;
import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.util.List;

@Controller
public class AdministratorsController {

    @Autowired
    private AdministratorsService administratorsService;

    @Autowired
    private UserService userService;

    @RequestMapping("/adLogin")
    public void adLogin(@RequestParam(value = "adname")String adname,
                          @RequestParam(value = "password")String password,
                          HttpServletResponse response) throws IOException {
        Administrators administrators1 = administratorsService.getAdministratorsByName(adname);
        if (password.equals(administrators1.getAd_password())){
            JSONObject jsonObject=new JSONObject();
            jsonObject.put("code",0);
            jsonObject.put("name",administrators1.getAd_name());
            jsonObject.put("power",administrators1.getAd_power());
            String ad_name = administrators1.getAd_name();
            Cookie cookie = new Cookie("ad_name",ad_name);
            cookie.setMaxAge(36000);
            response.addCookie(cookie);
            String ad_power = administrators1.getAd_power();
            Cookie cookie1 = new Cookie("ad_power",ad_power);
            cookie1.setMaxAge(36000);
            response.addCookie(cookie1);
            String ad_nickname = administrators1.getAd_nickname();
            Cookie cookie2 = new Cookie("ad_nickname",ad_nickname);
            cookie2.setMaxAge(36000);
            response.addCookie(cookie2);
            response.getWriter().println(jsonObject.toJSONString());
        }else {
            response.getWriter().println(1);
        }
    }

    @RequestMapping("/getAll")
    public void getAll(HttpServletResponse response) throws IOException{
        List<Administrators> administrators = administratorsService.getAllAdministrators();
        JSONArray jsonArray = new JSONArray();
        if (administrators != null){
            jsonFor(response, administrators, jsonArray);
        }else {
            response.getWriter().println("failed");
        }
    }

    @RequestMapping("/getAllUser")
    public void getAllUser(HttpServletResponse response) throws IOException{
        List<User> userList = userService.getAllUser();
        JSONArray jsonArray = new JSONArray();
        if (userList != null){
            for (int a=0;a<=userList.size()-1;a++){
                JSONObject jsonObject = new JSONObject();
                jsonObject.put("user_id",userList.get(a).getUser_id());
                jsonObject.put("user_username",userList.get(a).getUsername());
                jsonObject.put("user_password",userList.get(a).getPassword());
                jsonObject.put("user_nickname",userList.get(a).getNickname());
                jsonArray.add(jsonObject);
            }
            response.setContentType("text/json;charest=utf-8");
            response.getWriter().println(jsonArray.toJSONString());
        }else {
            response.getWriter().println("failed");
        }
    }

    @RequestMapping("/deleteAdministrators")
    public void deleteAdministrators(@RequestParam(value = "ad_id")Integer id,
                                     HttpServletResponse response)throws IOException{
        Integer i = administratorsService.deleteAdministrators(id);
        ad_list(response, i);
    }

    @RequestMapping("/addAdministrators")
    public void addAdministrators(@RequestParam(value = "ad_name")String ad_name,
                                  @RequestParam(value = "ad_password")String ad_password,
                                  @RequestParam(value = "ad_nickname")String ad_nickname,
                                  HttpServletResponse response)throws IOException{
        Integer i = administratorsService.addAdministrators(ad_name,ad_password,ad_nickname);
        ad_list(response, i);
    }

    private void jsonFor(HttpServletResponse response, List<Administrators> administrators, JSONArray jsonArray) throws IOException {
        for (int i=0;i<=administrators.size()-1;i++) {
            JSONObject jsonObject = new JSONObject();
            jsonObject.put("ad_id", administrators.get(i).getAd_id());
            jsonObject.put("ad_name", administrators.get(i).getAd_name() );
            jsonObject.put("ad_password", administrators.get(i).getAd_password());
            jsonObject.put("ad_nickname", administrators.get(i).getAd_nickname());
            jsonObject.put("ad_power", administrators.get(i).getAd_power());
            jsonArray.add(jsonObject);
        }
        response.setContentType("text/json;charest=utf-8");
        response.getWriter().println(jsonArray.toJSONString());
    }

    private void ad_list(HttpServletResponse response, Integer i) throws IOException {
        List<Administrators> administratorsList = administratorsService.getAllAdministrators();
        JSONArray jsonArray = new JSONArray();
        if (i != 1){
            response.getWriter().println("failed");
        }else{
            jsonFor(response,administratorsList,jsonArray);
        }
    }

}
