package com.how2java.controller;


import java.util.List;

import com.alibaba.fastjson.JSONObject;
import com.how2java.pojo.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.how2java.pojo.Category;
import com.how2java.service.CategoryService;
import com.how2java.util.Page;


// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class CategoryController {
	@Autowired
	CategoryService categoryService;

	@RequestMapping("listCategory")
	public ModelAndView listCategory(Page page) {
		ModelAndView mav = new ModelAndView();
		PageHelper.offsetPage(page.getStart(), 5);
		List<Category> cs = categoryService.list();
		int total = (int) new PageInfo<>(cs).getTotal();

		page.caculateLast(total);

		// 放入转发参数
		mav.addObject("cs", cs);
		// 放入jsp路径
		mav.setViewName("listCategory");
		return mav;
	}

//	@RequestMapping(value = "login", method = RequestMethod.POST,produces = "application/json")
//	@ResponseBody
//	public String login(@RequestParam("userId") int userId, @RequestParam("passWord") String passWord, @RequestParam("userFlag") int userFlag) {
//		System.out.println(userId+passWord+userFlag);
//		Login info = categoryService.login(new Login(userId,passWord,userFlag));
//
//		if (info != null) {
//			return "success";
//		}
//        return "fail";
//
//	}

	@RequestMapping(value = "login", method = RequestMethod.POST)
	@ResponseBody
	public String login(@RequestParam("userId") int userId, @RequestParam("passWord") String passWord, @RequestParam("userFlag") int userFlag) {
		System.out.println(userId+passWord+userFlag);
		Login info = categoryService.login(new Login(userId,passWord,userFlag));

		JSONObject json= new JSONObject();
		json.put("login", JSONObject.toJSON(info));
		return json.toJSONString();

	}
}
