package com.itheima.controller;

import com.itheima.domain.User;
import com.itheima.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.servlet.http.HttpSession;

@Controller
@RequestMapping("/user")
public class UserController {

   @Autowired
   private UserService userService;

//    查询账号
    @RequestMapping("/login")
    @ResponseBody
    public String login(User user , HttpSession session){

        User reUser = userService.findByPassword(user);
        if(reUser!=null){
            session.setAttribute("reUser",reUser);
            return "redirect:main";
        }
        return "redirect:login";

    }

}
