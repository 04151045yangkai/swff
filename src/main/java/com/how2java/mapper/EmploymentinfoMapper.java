package com.how2java.mapper;


import com.how2java.pojo.Employmentinfo;

public interface EmploymentinfoMapper {
    int insert(Employmentinfo employmentinfo);

    int insertSelective(Employmentinfo employmentinfo);

    Employmentinfo select(int eiid);

    int update(Employmentinfo employmentinfo);

    int delete(int eiid);
}