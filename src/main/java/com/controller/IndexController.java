package com.controller;

import com.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

@Controller
public class IndexController {

    @Autowired
    private UserService userService;

    @RequestMapping("/index")
    public String toIndex() {
        return "/index";
    }

    @RequestMapping("/quit")
    public String quit(HttpServletRequest request) {
        HttpSession session=request.getSession();
        if (session != null) {
            session.invalidate();
        }
        return "/index";
    }

}
