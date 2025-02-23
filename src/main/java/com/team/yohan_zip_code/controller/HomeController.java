package com.team.yohan_zip_code.controller;

import lombok.extern.slf4j.Slf4j;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
@Slf4j
@Controller
public class HomeController {
    @GetMapping("/")
    public String index(){
        return "index";
    }
    @PostMapping("/zipcodeData")
    public String zipcodeData(@RequestParam String address){
        log.info("address: {}", address);
        return "index";
    }
}
