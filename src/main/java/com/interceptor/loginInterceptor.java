package com.interceptor;

import com.entity.User;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class loginInterceptor implements HandlerInterceptor {
    /*忽略不拦截界面*/
    private static String[] ignore_url = {"/register","/login","error.html","/index"};

    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        boolean flag=false;
        String servletPath=request.getServletPath();
        for (String s : ignore_url) {
            if (servletPath.contains(s)){
                flag=true;
                break;
            }
        }
        if (!flag) {
            User user = (User) request.getSession().getAttribute("user");
            if (user == null) {
                request.setAttribute("msg", "请先登录再访问网站");
                request.getRequestDispatcher("/loginAndRegister").forward(request, response);
                return flag;
            } else {
                flag = true;
            }
        }
        return flag;
    }

    @Override
    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {

    }
}
