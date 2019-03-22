package com.how2java.service;

import com.how2java.pojo.Poorstudentcard;

public interface PoorstudentcardService {

    int insert(Poorstudentcard record);

    int addSelective(Poorstudentcard record);

    /**
     * 查询用户ID 的建档立卡信息
     *
     * @param poorid 用户ID
     * @return 返回信息参数，若无返回null
     */
    Poorstudentcard checkDataByID(int poorid);

    /**
     * 更新用户档案表
     *
     * @param poorstudentcard
     * @return
     */
    int UpdateFromValue(Poorstudentcard poorstudentcard);

    /**
     * 删除信息;
     *
     * @param poorid 需要删除的用户ID
     */
    int deleteInfoByData(int poorid);

}
