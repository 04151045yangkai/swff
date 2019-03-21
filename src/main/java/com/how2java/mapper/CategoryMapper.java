package com.how2java.mapper;
 
import java.util.List;

import com.how2java.pojo.Category;
import com.how2java.pojo.Login;
import org.apache.ibatis.annotations.Param;

public interface CategoryMapper {
 
      //添加用户
    public int add(Category category);  
       
      
    public void delete(int id);  
       
      
    public Category get(int id);  
     
      
    public int update(Category category);   
       
      
    public List<Category> list();

    public Login  login(Login login);

   // public Login  login(@Param("userId") int userId , @Param("passWord") String passWord, @Param("userFlag") int userFlag);
}