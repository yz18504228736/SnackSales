package com.shop.util;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class AuthInterceptor implements HandlerInterceptor {

    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
            throws Exception {
        if (null == request.getSession().getAttribute("currentUser")) {
            String XRequested = request.getHeader("X-Requested-With");
            System.out.println(XRequested);
            if ("XMLHttpRequest".equals(XRequested)) {
                response.getWriter().write("IsAjax");
            } else {
                response.sendRedirect(request.getContextPath()+"/user/doLogin");
                System.out.println(request.getContextPath()+"/user/doLogin");
            }
            return false;
        }
        return true;
    }

    public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
                           ModelAndView modelAndView) throws Exception {
    }

    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
            throws Exception {
    }

}
