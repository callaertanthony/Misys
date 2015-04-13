package com.rizomm.misys.controller;

import com.rizomm.misys.repository.UserRepository;
import com.rizomm.misys.service.user.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import java.util.Map;

/**
 * Created by anthonycallaert on 05/03/15.
 */
@Controller
@RequestMapping("/user")
public class UserController {

    @Autowired
    private UserService userService;

    @RequestMapping("/list")
    public String showUserList(Map<String, Object> model) {
        model.put("list", userService.getAllUsers());
        return "user/list";
    }
}
