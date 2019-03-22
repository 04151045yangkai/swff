package com.how2java.controller;

import com.how2java.pojo.Birthplace;
import com.how2java.service.BirthplaceService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("")
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
}
