package com.how2java.controller;


import com.alibaba.fastjson.JSONObject;
import com.how2java.pojo.Poorstudentcard;
import com.how2java.service.PoorstudentcardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class PoorstudentcardController {

    @Autowired
    PoorstudentcardService pService;

    /**
     * 获取用户的贫困库的表单数据
     * 事例：http://localhost:8080/loadPoorCardData
     * body:表单提交
     * @param poorid 用户id
     * @return 返回贫困表单类的JSON数据
     */
    @ResponseBody
    @RequestMapping(value = "loadPoorCardData" ,method = RequestMethod.POST)
    public String loadDataByID( @RequestParam("poorid") Integer poorid) {
        Poorstudentcard poorstudentcard = pService.checkDataByID(poorid);
        return  JSONObject.toJSON(poorstudentcard).toString();
    }

}
