package com.how2java.controller;

import com.alibaba.fastjson.JSONObject;
import com.how2java.pojo.Employmentinfo;
import com.how2java.pojo.Poorstudentcard;
import com.how2java.service.EmploymentinfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

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

    @ResponseBody
    @RequestMapping(value = "insertEmploymentSelective" ,method = RequestMethod.POST)
    public String insertSelective(@RequestBody Employmentinfo employmentinfo) {
        int i = eiService.addSelective(employmentinfo);
        if(i>0){
            return "success insert : " + i;
        }
        return "fail";
    }


    @RequestMapping(value = "insertEmployment" ,method = RequestMethod.POST)
    @ResponseBody
    public String insert(@RequestParam("eiid") int eiid ,
                         @RequestParam("eigraduation") String eigraduation,
                         @RequestParam("eiunitname") String eiunitname,
                         @RequestParam("eioriganizationcode") String eioriganizationcode,
                         @RequestParam("eiunitproperties") String eiunitproperties,
                         @RequestParam("eiunitpindustry") String eiunitpindustry,
                         @RequestParam("eicompanyaddress") String eicompanyaddress,
                         @RequestParam("eijobposition") String eijobposition,
                         @RequestParam("eicontacts") String eicontacts,
                         @RequestParam("eicontactsphone") int eicontactsphone,
                         @RequestParam("eicontactemail") String eicontactemail,
                         @RequestParam("eizipcode") String eizipcode,
                         @RequestParam("eifileforwardname") String eifileforwardname,
                         @RequestParam("eiffzipcode") int eiffzipcode,
                         @RequestParam("eitransferhousehold") String eitransferhousehold,
                         @RequestParam("eifileforwardaddress") String eifileforwardaddress
                         ){

        int i = eiService.add(new Employmentinfo(eiid,eigraduation, eiunitname, eioriganizationcode,
                eiunitproperties, eiunitpindustry, eicompanyaddress, eijobposition, eicontacts, eicontactsphone,
        eicontactemail, eizipcode, eifileforwardname, eiffzipcode,eitransferhousehold,eifileforwardaddress));
        if(i>0){
            return "success" ;
        }
        return "fail";
    }

    @ResponseBody
    @RequestMapping(value = "updateEmploymentInfo",method = RequestMethod.POST)
    public String updateEmploymentInfo(@RequestBody  Employmentinfo employmentinfo) {
        int i = eiService.UpdateFromValue(employmentinfo);
        if (i > 0) {
            return "success";
        }else
            return "fail";
    }

    @ResponseBody
    @RequestMapping(value = "deleteEmploymentById",method = RequestMethod.POST)
    public String deleteEmploymentById(@RequestParam("eiid") Integer eiid ) {
        int i = eiService.deleteInfoByData(eiid);
        if (i > 0) {
            return "success";
        }else
            return "fail";
    }


}
