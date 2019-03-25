package com.how2java.service;

import com.how2java.pojo.Employmentinfo;

public interface EmploymentinfoService {

    int add(Employmentinfo employmentinfo);

    int addSelective(Employmentinfo employmentinfo);

    Employmentinfo checkDataByID(int eiid);

    int UpdateFromValue(Employmentinfo employmentinfo);

    int deleteInfoByData(int eiid);
}
