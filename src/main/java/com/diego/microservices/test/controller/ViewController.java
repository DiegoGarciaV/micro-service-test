package com.diego.microservices.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class ViewController {
    
    @RequestMapping(value={"/",""})
    public String index(){
        return "index";
    }

    @RequestMapping(value={"/add","add"})
    public String addUser(){
        return "index";
    }


}