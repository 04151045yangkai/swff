package com.how2java.service;

import com.how2java.pojo.Employmentinfo;

import java.util.List;

public interface EmploymentinfoService {

    int add(Employmentinfo employmentinfo);

    int addSelective(Employmentinfo employmentinfo);

    Employmentinfo checkDataByID(int eiid);

    List<Employmentinfo> checkAllData();

    int UpdateFromValue(Employmentinfo employmentinfo);

    int deleteInfoByData(int eiid);
}
