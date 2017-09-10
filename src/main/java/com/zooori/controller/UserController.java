/**   
* @Title: UserController.java 
* @Package com.zooori.controller 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月5日 下午1:31:00 
* @version V1.0   
*/
package com.zooori.controller;

import java.io.UnsupportedEncodingException;
import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zooori.pojo.LoginLog;
import com.zooori.pojo.OperateLog;
import com.zooori.pojo.QueryParameters;
import com.zooori.pojo.User;
import com.zooori.service.impl.LoginLogService;
import com.zooori.service.impl.OperateService;
import com.zooori.service.impl.UserService;
import com.zooori.util.AboutUtil;
import com.zooori.util.AddressUtils;
import com.zooori.util.ApiResult;
import com.zooori.util.GetUID;
import com.zooori.util.email.SendMail;

/**
 * @ClassName: UserController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 下午1:31:00
 * 
 */
@Controller
@RequestMapping("/user")
public class UserController {

	public static int PAGE_NOW;
	public static int PAGE_SIZE;
	boolean isTrue = false;
	String key = "";
	String sortKey = "";
	String sortType = "";
	String spageNow = "";
	String spageSize = "";
	Object reObject = null;
	int isSucc = 0;
	String TEXT = "";
	String HEAD = "";

	@Resource
	private UserService userService;

	@Resource
	private OperateService operateService;

	@Resource
	private LoginLogService logService;

	OperateLog operateLog = new OperateLog();
	LoginLog loginLogin = new LoginLog();
	User acc = new User();
	AddressUtils addressUtil = new AddressUtils();
	HashMap<String, String> paramMap = new HashMap<String, String>();

	@RequestMapping("/info")
	public ModelAndView index(HttpSession session, Model m) {
		ModelAndView mv = new ModelAndView();
		User user = (User) session.getAttribute("account");
		if (user == null) {
			mv.setViewName("user/login");
			return mv;
		}
		String uid = user.uid;
		paramMap.put("uid", uid);
		List<Map<Object, Object>> logList = logService.selectByOrder(paramMap);
		m.addAttribute("logList", logList);
		mv.setViewName("user/index");
		return mv;
	}

	@RequestMapping("/toLogin")
	public String toLogin(String acc, String pass, HttpServletRequest request, HttpSession session) {

		String mail = (String) session.getAttribute("accountMail");
		String result = "账号不可用，请重新注册";
		// 验证账号是否存在
		User user = this.userService.selectByAcc(acc);
		if (user == null) {
			User u = new User();
			u.account = acc;
			u.password = pass;
			u.mail = mail;

			String[] to = new String[] { "imsprojo2fan@foxmail.com", "531138581@qq.com"/*
																						 * "378007539@qq.com",
																						 * "wsjiaxuan@qq.com"
																						 *//* , "529229677@qq.com" */ };
			to = Arrays.copyOf(to, to.length + 1);
			to[to.length - 1] = u.mail;

			for (int i = 0; i < to.length; i++) {
				SendMail myThread = new SendMail();
				myThread.setHEAD("ZooORI.才华有限公司【账号注册成功】");
				myThread.setTEXT("账号：【" + u.account + "】" + "\r\n\r\n扫码注册成功！");
				if (i == to.length - 1) {
					myThread.setHEAD("ZooORI.才华有限公司【账号注册成功】");
					myThread.setTEXT(
							"您的账号：【" + u.account + "】" + "\r\n\r\n点击链接登录\r\n" + "http://www.zooori.cn/login.html");
				}
				myThread.setTo(to[i]);
				myThread.start();
				myThread.interrupt();
			}
			u.uid = GetUID.getUUID();
			isSucc = userService.add(u);
			// 记录操作日志
			operateLog.uid = u.uid;
			operateLog.operate = 1;
			operateLog.create_time = AboutUtil.getStringTime();
			isSucc = operateService.add(operateLog);
			if (isSucc > 0) {
				result = "账号注册成功";
				session.removeAttribute("accountMail");// 移除注册成功的邮箱
			} else {
				result = "账号注册失败";
			}

		}

		request.setAttribute("result", result);
		request.setAttribute("acc", acc);
		request.setAttribute("pass", pass);
		return "user/beforeLogin";
	}

	@ResponseBody
	@RequestMapping("/validate")
	public Object validate(HttpServletRequest request, String account) {
		User user = this.userService.selectByAcc(account);
		if (user == null) {
			reObject = new ApiResult("账号可用", ApiResult.CODE_SUCCESS);
		} else {
			reObject = new ApiResult("账号不可用", ApiResult.CODE_FAIL);
		}
		return reObject;
	}

	@ResponseBody
	@RequestMapping("/login")
	public Object login(String password, String account, HttpSession session, HttpServletRequest request) {
		String ip = AboutUtil.getRemoteHost(request);
		User user = this.userService.validateAccount(account, password);
		String address = "";
		if (user != null) {
			// 记录登录日志
			try {
				address = addressUtil.getAddresses("ip=" + ip, "utf-8");
			} catch (UnsupportedEncodingException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
			loginLogin.uid = user.uid;
			loginLogin.ip = ip;
			loginLogin.address = address;
			loginLogin.type = 1;
			loginLogin.create_time = AboutUtil.getStringTime();
			logService.add(loginLogin);

			// 登录次数加1
			acc.login_count = 1;
			acc.last_login_time = AboutUtil.getStringTime();
			acc.id = user.id;
			userService.updateById(acc);

			session.setAttribute("account", user);
			reObject = new ApiResult("登录成功", ApiResult.CODE_SUCCESS, user.type);
		} else {
			reObject = new ApiResult("登录失败", ApiResult.CODE_FAIL);
		}
		return reObject;
	}

	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session, HttpServletRequest request, HttpServletResponse response) {
		User user = (User) session.getAttribute("account");
		if (user == null) {
			return "/user/login";
		}
		String ip = AboutUtil.getRemoteHost(request);
		// 记录登出日志
		loginLogin.uid = user.uid;
		loginLogin.ip = ip;
		loginLogin.type = 0;
		loginLogin.create_time = AboutUtil.getStringTime();
		logService.add(loginLogin);
		session.invalidate();
		return "user/login";
	}

	@RequestMapping("/loginIn")
	public String loginIn(HttpSession session) {
		session.invalidate();
		return "user/login";
	}

	@ResponseBody
	@RequestMapping("/add")
	public Object add(User user, HttpServletRequest request, HttpSession session) {

		user.uid = GetUID.getUUID();

		String[] to = new String[] { "imsprojo2fan@foxmail.com",
				"531138581@qq.com"/*
									 * "378007539@qq.com", "wsjiaxuan@qq.com"
									 *//* , "529229677@qq.com" */ };
		to = Arrays.copyOf(to, to.length + 1);
		to[to.length - 1] = user.mail;

		for (int i = 0; i < to.length; i++) {
			SendMail myThread = new SendMail();
			HEAD = "ZooORI.才华有限公司【账号注册成功】";
			TEXT = "账号：【" + user.mail + "】" + "\r\n\r\n登录页注册成功！";
			if (i == to.length - 1) {
				HEAD = "ZooORI.才华有限公司【账号注册成功】";
				TEXT = "您的账号：【" + user.mail + "】" + "\r\n\r\n点击链接激活\r\n" + "http://www.zooori.cn/user/toactivat?uid="
						+ user.uid + "&email=" + user.mail;
			}

			myThread.setTo(to[i]);
			myThread.setTEXT(TEXT);
			myThread.setHEAD(HEAD);
			myThread.start();
			myThread.interrupt();
		}

		isSucc = userService.add(user);
		// 记录操作日志
		operateLog.uid = user.uid;
		operateLog.operate = 1;
		operateLog.create_time = AboutUtil.getStringTime();
		isSucc = operateService.add(operateLog);
		if (isSucc > 0) {
			reObject = new ApiResult("添加成功", ApiResult.CODE_SUCCESS);
		} else {
			reObject = new ApiResult("添加失败", ApiResult.CODE_FAIL);
		}
		return reObject;
	}

	@ResponseBody
	@RequestMapping("deleteUser")
	public Object deleteUser(HttpServletRequest request) {
		String idArr = request.getParameter("ids");

		String[] ids = idArr.split(",");

		isSucc = userService.deleteById(ids);
		if (isSucc > 0) {
			reObject = new ApiResult("删除成功", ApiResult.CODE_SUCCESS);
		} else {
			reObject = new ApiResult("删除失败", ApiResult.CODE_FAIL);
		}
		return reObject;
	}

	@ResponseBody
	@RequestMapping("update")
	public Object update(User user, String birthday) {

		user.update_time = AboutUtil.getStringTime();
		user.birthday = birthday;
		isSucc = userService.updateById(user);
		// 记录操作日志
		operateLog.uid = user.uid;
		operateLog.operate = 2;
		operateLog.create_time = AboutUtil.getStringTime();
		isSucc = operateService.add(operateLog);
		if (isSucc > 0) {
			reObject = new ApiResult("更改成功", ApiResult.CODE_SUCCESS);
		} else {
			reObject = new ApiResult("更改失败", ApiResult.CODE_FAIL);
		}
		return reObject;
	}

	@ResponseBody
	@RequestMapping("listAll")
	public Map<String, Object> listAll(QueryParameters qParameters) {

		PAGE_NOW = qParameters.getPage();
		PAGE_SIZE = qParameters.getRows();
		PAGE_NOW = (PAGE_NOW - 1) * PAGE_SIZE;
		qParameters.setPage(PAGE_NOW);

		// 获取账号总记录数

		List<User> allList = userService.listAll(qParameters);
		int recordNum = allList.size();

		Map<String, String> userList = userService.selectByPage(qParameters);
		if (userList != null) {
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("total", recordNum);
			result.put("rows", userList);
			return result;
		}
		return null;

	}

}
