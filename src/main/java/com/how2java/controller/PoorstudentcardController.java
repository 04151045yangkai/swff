package com.how2java.controller;

import com.how2java.service.impl.PoorstudentcardServiceImpl;
import org.codehaus.jackson.annotate.JacksonAnnotation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.converter.json.Jackson2ObjectMapperBuilder;
import org.springframework.http.converter.json.Jackson2ObjectMapperFactoryBean;
import org.springframework.stereotype.Controller;

import com.alibaba.fastjson.JSONObject;
import com.how2java.pojo.Poorstudentcard;
import com.how2java.service.PoorstudentcardService;
import org.springframework.web.bind.annotation.*;

@Controller
public class PoorstudentcardController {

    @Autowired
    PoorstudentcardServiceImpl poorstudentcardService;

    @ResponseBody
    @RequestMapping(value = "insertPoorstudentcardSelect" ,method = RequestMethod.POST)
    public String insertSelective(@RequestBody Poorstudentcard poorstudentcard) {
        int i = poorstudentcardService.addSelective(poorstudentcard);
        if(i>0){
            return "success insert : " + i;
        }
        return "fail";
    }


    @RequestMapping(value = "insertPoorstudentcard" ,method = RequestMethod.POST)
    @ResponseBody
    public String insert(@RequestParam("poorid") int poorid ,
                         @RequestParam("poorstate") String poorstate,
                         @RequestParam("pobtainprogress") String pobtainprogress,
                         @RequestParam("phelpcontent") String phelpcontent,
                         @RequestParam("phelpcontacts") String phelpcontacts,
                         @RequestParam("phelpphone") int phelpphone){

        int i = poorstudentcardService.insert(new Poorstudentcard(poorid, poorstate, pobtainprogress, phelpcontent, phelpcontacts, phelpphone));
        if(i>0){
            return "success insert : " + i;
        }
        return "fail";
    }

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
        Poorstudentcard poorstudentcard = poorstudentcardService.checkDataByID(poorid);
        return  JSONObject.toJSON(poorstudentcard).toString();
    }

    @ResponseBody
    @RequestMapping(value = "deletePoorCarData" ,method = RequestMethod.POST)
    public String deleteDataByID( @RequestParam("poorid") Integer poorid) {
        int result = poorstudentcardService.deleteInfoByData(poorid);
        if (result > 0) {
            return "success";
        }else
            return "fail";
    }

    @ResponseBody
    @RequestMapping(value = "updatePoorCarData" ,method = RequestMethod.POST)
        public String UpdatePoorCarData( @RequestBody Poorstudentcard poorstudentcard) {
        int result = poorstudentcardService.UpdateFromValue(poorstudentcard);
        if (result > 0) {
            return "success";
        }else
            return "fail";
    }


}
