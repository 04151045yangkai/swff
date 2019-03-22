package com.how2java.controller;

import com.alibaba.fastjson.JSONObject;
import com.how2java.pojo.Obtainemployment;
import com.how2java.service.ObtainemploymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class ObtainemploymentController {

    @Autowired
    ObtainemploymentService oeService;

    @ResponseBody
    @RequestMapping(value = "loadObtainEmployData" ,method = RequestMethod.POST)
    public String loadDataByID( @RequestParam("oeid") Integer oeid) {
        Obtainemployment obtainemployment = oeService.checkDataByID(oeid);
        return  JSONObject.toJSON(obtainemployment).toString();
    }
}
