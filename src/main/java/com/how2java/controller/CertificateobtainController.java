package com.how2java.controller;

import com.alibaba.fastjson.JSONObject;
import com.how2java.pojo.Certificateobtain;
import com.how2java.service.CertificateobtainService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class CertificateobtainController {

    @Autowired
    CertificateobtainService coService;

    @ResponseBody
    @RequestMapping(value = "loadCertificateObtain" ,method = RequestMethod.POST)
    public String loadDataByID( @RequestParam("costuid") Integer costuid) {
        Certificateobtain certificateobtain = coService.checkDataByID(costuid);
        return  JSONObject.toJSON(certificateobtain).toString();
    }
}
