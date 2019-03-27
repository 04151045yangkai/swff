package com.how2java.mapper;


import com.how2java.pojo.Employmentinfo;

import java.util.List;

public interface EmploymentinfoMapper {
    int insert(Employmentinfo employmentinfo);

    int insertSelective(Employmentinfo employmentinfo);

    Employmentinfo select(int eiid);


    List<Employmentinfo> selectAll();

    int update(Employmentinfo employmentinfo);

    int delete(int eiid);
}