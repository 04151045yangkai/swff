package com.how2java.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;


@Controller
public class SafeExitController {

    @RequestMapping("exit")
    public ModelAndView safeExit() {
        ModelAndView mod = new ModelAndView();
        mod.setViewName("main");
        return mod;
    }
}
