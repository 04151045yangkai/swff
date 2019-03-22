package com.how2java.controller;

import com.how2java.pojo.Account;
import com.how2java.service.AccountService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.Date;

@Controller
@RequestMapping("")
public class AccountController {

    @Autowired
    AccountService accountService;

    @RequestMapping("deleteByPrimaryKey")//删除
    @ResponseBody //返回数据为json格式
    public String deleteByPrimaryKey(@RequestParam("idCard") String idCard){ //删
        int i = accountService.deleteByPrimaryKey(idCard);
        if(i>0){
            return "success";
        }
        return "fail";
    }

    @RequestMapping("insertAccount")//插入
    @ResponseBody //返回数据为json格式
    public String insertAccount(@RequestParam("idCard") String idCard, @RequestParam("AuserId") int AuserId,
                                @RequestParam("politics") String politics, @RequestParam("nation") String nation,
                                @RequestParam("majorField") String majorField, @RequestParam("birthday") Date birthday,
                                @RequestParam("archivesInSchool") String archivesInSchool, @RequestParam("rResidenceInSchool") String rResidenceInSchool,
                                @RequestParam("archivesPath") String archivesPath, @RequestParam("rResidencePath") String rResidencePath,
                                @RequestParam("qqNum") int qqNum, @RequestParam("phoneNum") int phoneNum,@RequestParam("email") String email){
        int i = accountService.insert(new Account(idCard,AuserId,politics,
                nation,majorField,birthday,archivesInSchool,rResidenceInSchool,archivesPath,rResidencePath,qqNum,phoneNum,email));
        if(i>0){
            return "success";
        }
        return "fail";
    }

    @RequestMapping("selectByPrimaryKey")//查询
    @ResponseBody
    public String selectByPrimaryKey(@RequestParam("idCard") String idCard){
        Account account = accountService.selectByPrimaryKey(idCard);
        if(account!=null){
            return "success";
        }
        return "fail";
    }
    @RequestMapping("updateByPrimaryKey") //修改
    @ResponseBody
    public String updateByPrimaryKey(@RequestParam("idCard") String idCard, @RequestParam("AuserId") int AuserId,
                                     @RequestParam("politics") String politics, @RequestParam("nation") String nation,
                                     @RequestParam("majorField") String majorField, @RequestParam("birthday") Date birthday,
                                     @RequestParam("archivesInSchool") String archivesInSchool, @RequestParam("rResidenceInSchool") String rResidenceInSchool,
                                     @RequestParam("archivesPath") String archivesPath, @RequestParam("rResidencePath") String rResidencePath,
                                     @RequestParam("qqNum") int qqNum, @RequestParam("phoneNum") int phoneNum,@RequestParam("email") String email){
        int i = accountService.updateByPrimaryKey(new Account(idCard,AuserId,politics,
                nation,majorField,birthday,archivesInSchool,rResidenceInSchool,archivesPath,rResidencePath,qqNum,phoneNum,email));
        if(i>0){
            return "success";
        }
        return "fail";
    }
}
