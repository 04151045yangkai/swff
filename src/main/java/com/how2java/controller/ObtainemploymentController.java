package com.how2java.controller;

import com.alibaba.fastjson.JSONObject;
import com.how2java.pojo.Obtainemployment;
import com.how2java.service.ObtainemploymentService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
public class ObtainemploymentController {

    @Autowired
    ObtainemploymentService oeService;

    @ResponseBody
    @RequestMapping(value = "insertObtainEmploymentSelect" ,method = RequestMethod.POST)
    public String insertSelective(@RequestBody Obtainemployment obtainemployment) {
        int i = oeService.insertSelective(obtainemployment);
        if(i>0){
            return "success insert : " + i;
        }
        return "fail";
    }

    @RequestMapping(value = "insertObtainEmployment" ,method = RequestMethod.POST)
    @ResponseBody
    public String insert(@RequestParam("oeid") int oeid ,
                         @RequestParam("oeintent") String oeintent,
                         @RequestParam("oeintentcity") String oeintentcity,
                         @RequestParam("oeintentsalary") String oeintentsalary){
        int i = oeService.insert(new Obtainemployment(oeid, oeintent, oeintentcity, oeintentsalary));
        if(i>0){
            return "success insert : " + i;
        }
        return "fail";
    }

    @ResponseBody
    @RequestMapping(value = "loadObtainEmployment" ,method = RequestMethod.POST)
    public String loadDataByID( @RequestParam("oeid") Integer oeid) {
        Obtainemployment obtainemployment = oeService.checkDataByID(oeid);
        return  JSONObject.toJSON(obtainemployment).toString();
    }

    @ResponseBody
    @RequestMapping(value = "updateObtainEmployment" ,method = RequestMethod.POST)
    public String UpdatePoorCarData( @RequestBody Obtainemployment obtainemployment) {
        int result = oeService.UpdateFromValue(obtainemployment);
        if (result > 0) {
            return "success";
        }else
            return "fail";
    }

    @ResponseBody
    @RequestMapping(value = "deleteObtainEmployment" ,method = RequestMethod.POST)
    public String deleteDataByID( @RequestParam("oeid") Integer oeid) {
        int result = oeService.deleteInfoByData(oeid);
        if (result > 0) {
            return "success";
        }else
            return "fail";
    }
}
