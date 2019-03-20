package com.how2java.service;

import java.util.List;

import com.how2java.pojo.Category;
import com.how2java.pojo.Login;

public interface CategoryService {

	List<Category> list();
	Login login(Login login);
//	Login login(int userId,String passWord,int userFlag);
}
