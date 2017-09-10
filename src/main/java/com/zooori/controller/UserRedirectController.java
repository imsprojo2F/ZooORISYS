/**   
* @Title: RedirectController.java 
* @Package com.zooori.controller 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2017年1月22日 上午10:18:58 
* @version V1.0   
*/
package com.zooori.controller;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import com.zooori.pojo.User;
import com.zooori.service.impl.UserService;

/**
 * @ClassName: UserRedirectController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2017年1月22日 上午10:18:58
 * 
 */
@Controller
@RequestMapping("/user")
public class UserRedirectController {

	@Resource
	private UserService userService;

	@RequestMapping("/main")
	public String main() {
		return "user/main";
	}

	@RequestMapping("/operateInfo")
	public String operateInfo(HttpServletRequest request, HttpSession session, HttpServletResponse response) {
		User u = (User) session.getAttribute("account");
		if (u == null) {
			return "/user/login";
		}
		int id = u.getId();
		u = userService.getAccount(id);
		request.setAttribute("user", u);
		return "user/info";
	}

	@RequestMapping("/loginLog")
	public String loginLog() {
		return "user/loginLog";
	}

	@RequestMapping("/toLoginLog_mobile")
	public String tologinLog() {
		return "user/loginLog_mobile";
	}

	@RequestMapping("/toactivat")
	public String activat(HttpSession session) {
		// session.setAttribute("account", session.getAttribute("user"));
		return "user/activat";
	}

}
