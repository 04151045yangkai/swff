package com.how2java.service;

import com.how2java.pojo.Birthplace;

public interface BirthplaceService {

    int insert(Birthplace record);//插入

    Birthplace selectBirthplaceInfo(int birthid);

    int deleteBirthplaceById(int birthid);

    int updateBirthplace(Birthplace birthplace);
}
