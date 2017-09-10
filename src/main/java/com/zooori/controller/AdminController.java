/**   
* @Title: IndexController.java 
* @Package com.zooori.controller 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月5日 下午3:11:56 
* @version V1.0   
*/
package com.zooori.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zooori.pojo.Admin;
import com.zooori.pojo.IPList;
import com.zooori.pojo.User;
import com.zooori.service.impl.AdminService;
import com.zooori.service.impl.UserService;
import com.zooori.util.AboutUtil;
import com.zooori.util.ApiResult;

/**
 * @ClassName: IndexController
 * @Description: TODO(处理首页获取赞数及判断当前用户是否赞过)
 * @author IsProjo
 * @date 2016年12月5日 下午3:11:56
 * 
 */
@Controller
@RequestMapping("/admin")
public class AdminController {

	Object reObject = null;
	@Resource
	private AdminService adminService;
	@Resource
	private UserService userService;

	@ResponseBody
	@RequestMapping("/login")
	public Object login(String password, String account, HttpSession session) {
		User user = this.userService.validateAccount(account, password);
		if (user != null) {
			session.setAttribute("admin", user);
			if (user.type == 1) {
				reObject = new ApiResult("登录成功", ApiResult.CODE_SUCCESS, user.type);
			} else {
				reObject = new ApiResult("登录失败", ApiResult.CODE_FAIL);
			}
		} else {
			reObject = new ApiResult("登录失败", ApiResult.CODE_FAIL);
		}
		return reObject;
	}

	@RequestMapping("/loginOut")
	public String loginOut(HttpSession session) {
		session.invalidate();
		return "redirect:login2admin.html";
	}

	@RequestMapping("/index")
	public String index(HttpSession session) {

		return "admin/index";
	}

	@ResponseBody
	@RequestMapping("/getAllAdmin")
	public Object getAllAdmin() {
		List<Admin> adminList = adminService.getAllAdmin();
		System.out.println(adminList);

		return adminList;
	}

	@ResponseBody
	@RequestMapping("/getAllIPList")
	public Object getAllIPList(HttpServletRequest request, HttpSession session) {
		String ip = AboutUtil.getRemoteHost(request);
		List<IPList> IPList = new ArrayList<IPList>();
		System.out.println(ip);
		IPList = adminService.getAllIPList(ip);
		System.out.println(IPList);
		// 如果当前ip当天记录数为0时初始化该ip当天记录信息，省去判断点赞时是update还是insert
		if (IPList.size() == 0) {
			IPList ipList = new IPList();
			ipList.setIp(ip);
			ipList.isValid = 0;
			ipList.setDatetime(AboutUtil.getCurrentTime());
			System.out.println(AboutUtil.getCurrentTime());
			for (int i = 1; i < 5; i++) {
				ipList.setAdminId(i);
				adminService.addFabulou(ipList);
			}
			IPList = adminService.getAllIPList(ip);
		}

		return IPList;
	}

	@ResponseBody
	@RequestMapping("/updateFabulou")
	public Object updateFabulou(HttpServletRequest request) {

		String ip = AboutUtil.getRemoteHost(request);
		int id = Integer.parseInt(request.getParameter("id"));
		int isValid = Integer.parseInt(request.getParameter("isValid"));
		IPList ipList = new IPList();
		ipList.adminId = id;
		ipList.ip = ip;
		ipList.isValid = isValid;
		ipList.datetime = AboutUtil.getCurrentTime();
		if (isValid == 1) {// admin表zanCount+1否则减1
			adminService.updateFabuloup(id);
		} else {
			adminService.updateFabuloud(id);
		}
		int flag = adminService.updateFabulou(ipList);
		if (flag > 0) {
			reObject = new ApiResult("提交成功", ApiResult.CODE_SUCCESS);
		} else {
			reObject = new ApiResult("提交失败", ApiResult.CODE_FAIL);
		}
		return reObject;
	}

}
