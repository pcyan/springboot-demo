package com.example.springbootdemo.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * 描述:
 *
 * @author yanpeicai
 * @since 2023/12/27--08:47
 */
@RestController
@RequestMapping("/")
public class TestController {

    @GetMapping("/foo")
    public String foo(){
        return "bar";
    }

}
