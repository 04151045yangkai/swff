package com.how2java.controller;


import java.util.List;

import com.how2java.pojo.Login;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.how2java.service.LoginService;
import com.how2java.util.Page;

import javax.servlet.http.HttpServletRequest;

import static java.awt.SystemColor.info;


// 告诉spring mvc这是一个控制器类
@Controller
@RequestMapping("")
public class LoginController {
	@Autowired
	LoginService loginService;

	@RequestMapping("selectAllUser") //查询所有的用户
	public ModelAndView listCategory(Page page) {
		ModelAndView mav = new ModelAndView();
		PageHelper.offsetPage(page.getStart(), 5);
		List<Login> logins = loginService.selectAllUser();
		int total = (int) new PageInfo<>(logins).getTotal();

		page.caculateLast(total);

		// 放入转发参数
		mav.addObject("logins", logins);
		// 放入jsp路径
		mav.setViewName("listCategory");
		return mav;
	}

	@RequestMapping(value = "login", method = RequestMethod.POST) //用户登陆功能
	public ModelAndView login(@RequestParam("userId") int userId, @RequestParam("passWord") String passWord, HttpServletRequest request) {
		Login info = loginService.login(new Login(userId,passWord));
		ModelAndView mod = new ModelAndView();
		request.getSession().setAttribute("user", info);
		//放入转发的参数
		mod.addObject("loginInfo",info);
		//放入jsp路径
		mod.setViewName("main");//最后跳转到main.jsp
		return mod;
	}

	@RequestMapping(value = "addLoginUser", method = RequestMethod.POST) //新增用户功能
	@ResponseBody
	public String addLoginUser(@RequestParam("userid") int userid, @RequestParam("password") String password,@RequestParam("userflag") int userflag) {
		int i = loginService.insertSelective(new Login(userid, password, userflag));

		if (i>0) {
			return "success";
		}
		return "fail";

	}

	@RequestMapping(value = "deleteUser", method = RequestMethod.POST) //删除用户功能
	@ResponseBody
	public String delete(@RequestParam("userId") int userId) {
		int i = loginService.deleteByPrimaryKey(userId);
		System.out.println(i);
		if (info != null) {
			return "success";
		}
		return "fail";

	}

	@RequestMapping(value = "selectByUserId", method = RequestMethod.POST) //查询用户功能
	@ResponseBody
	public String selectByUserId(@RequestParam("userId") int userId) {
		Login login = loginService.selectByPrimaryKey(userId);
		if (login != null) {
			return "success";
		}
		return "fail";

	}

	@RequestMapping(value = "updateUser", method = RequestMethod.POST) //新增用户功能
	@ResponseBody
	public String updateUser(@RequestParam("userId") int userId, @RequestParam("passWord") String passWord,@RequestParam("passWord") int userFlag) {
		int i = loginService.updateByPrimaryKey(new Login(userId, passWord, userFlag));

		if (i>0) {
			return "success";
		}
		return "fail";

	}
//	@RequestMapping(value = "login", method = RequestMethod.POST)
//	@ResponseBody
//	public String login(@RequestParam("userId") int userId, @RequestParam("passWord") String passWord, @RequestParam("userFlag") int userFlag) {
//		System.out.println(userId+passWord+userFlag);
//		Login info = loginService.login(new Login(userId,passWord,userFlag));
//
//		JSONObject json= new JSONObject();
//		json.put("login", JSONObject.toJSON(info));
//		return json.toJSONString();
//
//	}
}
