package com.how2java.controller;

import com.alibaba.fastjson.JSONObject;
import com.how2java.pojo.Birthplace;
import com.how2java.pojo.Poorstudentcard;
import com.how2java.service.BirthplaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

@Controller
@RequestMapping("Birthplace")
public class BirthplaceController {
    @Autowired
    BirthplaceService birthplaceService;

    @RequestMapping("insert")
    @ResponseBody
    public String insert(@RequestParam("birthId") int birthId, @RequestParam("birthPath") String birthPath,
                         @RequestParam("cityOrTownship") String cityOrTownship,
                         @RequestParam("address") String address,
                         @RequestParam("homePhone") int homePhone,
                         @RequestParam("zipCode") int zipCode,
                         @RequestParam("isSuballowance") String isSuballowance) {
        int insert = birthplaceService.insert(new Birthplace(birthId, birthPath, cityOrTownship, address, homePhone, zipCode, isSuballowance));
        if (insert > 0) {
            return "success";
        }
        return "fail";
    }

    @ResponseBody
    @RequestMapping(value = "selectBirthplaceInfo" ,method = RequestMethod.POST)
    public String selectBirthplaceInfo( @RequestParam("birthid") Integer birthid) {
        Birthplace birthplace = birthplaceService.selectBirthplaceInfo(birthid);
        return  birthplace == null ? "null":JSONObject.toJSON(birthplace).toString();
    }

    @ResponseBody
    @RequestMapping(value = "deleteBirthplaceById" ,method = RequestMethod.POST)
    public String deleteBirthplaceById( @RequestParam("birthid") Integer birthid) {
        int result = birthplaceService.deleteBirthplaceById(birthid);
        if (result > 0) {
            return "success";
        }else
            return "fail";
    }


    @RequestMapping("updateBirthplaceFromData")
    @ResponseBody
    public String updateBirthplaceFromData(@RequestParam("birthId") int birthId, @RequestParam("birthPath") String birthPath,
                         @RequestParam("cityOrTownship") String cityOrTownship,
                         @RequestParam("address") String address,
                         @RequestParam("homePhone") int homePhone,
                         @RequestParam("zipCode") int zipCode,
                         @RequestParam("isSuballowance") String isSuballowance) {
        int insert =birthplaceService.updateBirthplace(new Birthplace(birthId,birthPath,cityOrTownship,address,
                homePhone,zipCode,isSuballowance));
        if (insert > 0) {
            return "success";
        }
        return "fail";
    }

    @ResponseBody
    @RequestMapping(value = "updateBirthplaceFromJson" ,method = RequestMethod.POST)
    public String updateBirthplace( @RequestBody Birthplace birthplace) {
        int result = birthplaceService.updateBirthplace(birthplace);
        if (result > 0) {
            return "success";
        }else
            return "fail";
    }

}
