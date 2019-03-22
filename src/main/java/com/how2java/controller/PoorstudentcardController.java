package com.how2java.controller;

import com.how2java.pojo.Poorstudentcard;
import com.how2java.service.PoorstudentcardService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("")
public class PoorstudentcardController {

    @Autowired
    PoorstudentcardService poorstudentcardService;

    @RequestMapping("insertPoorstudentcard")
    @ResponseBody
    public String insert(@RequestParam("poorid") int poorid ,
                         @RequestParam("poorstate") String poorstate,
                         @RequestParam("pobtainprogress") String pobtainprogress,
                         @RequestParam("phelpcontent") String phelpcontent,
                         @RequestParam("phelpcontacts") String phelpcontacts,
                         @RequestParam("phelpphone") int phelpphone){
        int i = poorstudentcardService.insert(new Poorstudentcard(poorid, poorstate, pobtainprogress, phelpcontent, phelpcontacts, phelpphone));
        if(i>0){
            return "success";
        }
        return "fail";

    }
}
