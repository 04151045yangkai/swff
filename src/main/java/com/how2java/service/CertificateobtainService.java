package com.how2java.service;

import com.how2java.pojo.Certificateobtain;

public interface CertificateobtainService {

    int add(Certificateobtain certificateobtain);

    int addSelective(Certificateobtain certificateobtain);

    Certificateobtain checkDataByID(int costuid);

    int UpdateFromValue(Certificateobtain certificateobtain);

    void deleteInfoByData(int costuid);
}
