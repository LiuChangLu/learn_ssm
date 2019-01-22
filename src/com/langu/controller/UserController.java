package com.langu.controller;

import com.langu.pojo.User;
import com.langu.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping(path = "/userlist")
    public ModelAndView getIndex() {
        List<User> users = userService.getUsers();
        System.out.println(users);
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("userlist", users);
        modelAndView.setViewName("userlist");
        return modelAndView;
    }
}
