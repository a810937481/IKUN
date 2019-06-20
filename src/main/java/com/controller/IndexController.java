package com.controller;

import com.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;

@Controller
public class IndexController {

    private UserService userService;

    @RequestMapping("index")
    public String toIndex() {
        return "/index.jsp";
    }

}
