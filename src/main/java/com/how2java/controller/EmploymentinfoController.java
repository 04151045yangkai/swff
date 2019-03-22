package com.how2java.controller;

import com.alibaba.fastjson.JSONObject;
import com.how2java.pojo.Employmentinfo;
import com.how2java.service.EmploymentinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class EmploymentinfoController {

    @Autowired
    EmploymentinfoService eiService;

    @ResponseBody
    @RequestMapping(value = "loadEmploymentInfo" ,method = RequestMethod.POST)
    public String loadDataByID( @RequestParam("eiid") Integer eiid) {
        Employmentinfo employmentinfo = eiService.checkDataByID(eiid);
        return  JSONObject.toJSON(employmentinfo).toString();
    }


}
