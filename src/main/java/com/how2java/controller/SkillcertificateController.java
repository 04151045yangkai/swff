package com.how2java.controller;

import com.how2java.pojo.Skillcertificate;
import com.how2java.service.SkillcertificateService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
@RequestMapping("skillcertificate")
public class SkillcertificateController {
    @Autowired
    SkillcertificateService skillcertificateService;

    @RequestMapping("deleteByPrimaryKey")
    @ResponseBody
    public String deleteByPrimaryKey(@RequestParam("scid") Integer scid){
        int i = skillcertificateService.deleteByPrimaryKey(scid);
        if(i>0){
            return "success";
        }
          return "fail";
    }

    @RequestMapping("insert")
    @ResponseBody
    public String  insert(@RequestParam("scid") int scid,@RequestParam("scname") String scname,@RequestParam("sccontent") String sccontent){
        int i = skillcertificateService.insert(new Skillcertificate(scid, scname, sccontent));
        if(i>0){
            return "success";
        }
        return "fail";
    }
    @RequestMapping("insertSelective")
    @ResponseBody
    public String insertSelective(@RequestParam("scid") int scid,@RequestParam("scname") String scname,@RequestParam("sccontent") String sccontent){
        int i = skillcertificateService.insertSelective(new Skillcertificate(scid, scname, sccontent));
        if(i>0){
            return "success";
        }
        return "fail";
    }
    @RequestMapping("selectByPrimaryKey")
    @ResponseBody
    public String  selectByPrimaryKey(int scid){
        Skillcertificate skillcertificate = skillcertificateService.selectByPrimaryKey(scid);
        if(skillcertificate!=null){
            return "success";
        }
        return "fail";
    }
    @RequestMapping("updateByPrimaryKeySelective")
    @ResponseBody
    public String updateByPrimaryKeySelective(@RequestParam("scid") int scid,@RequestParam("scname") String scname,@RequestParam("sccontent") String sccontent){
        int i = skillcertificateService.updateByPrimaryKeySelective(new Skillcertificate(scid, scname, sccontent));
        if(i>0){
            return "success";
        }
        return "fail";
    }
    @RequestMapping("updateByPrimaryKey")
    @ResponseBody
    public String updateByPrimaryKey(@RequestParam("scid") int scid,@RequestParam("scname") String scname,@RequestParam("sccontent") String sccontent){
        int i = skillcertificateService.updateByPrimaryKey(new Skillcertificate(scid, scname, sccontent));
        if(i>0){
            return "success";
        }
        return "fail";
    }
}
