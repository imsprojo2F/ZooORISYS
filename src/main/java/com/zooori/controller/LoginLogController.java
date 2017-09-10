/**   
* @Title: LoginLogController.java 
* @Package com.zooori.controller 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2017年2月8日 上午10:05:17 
* @version V1.0   
*/
package com.zooori.controller;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zooori.pojo.User;
import com.zooori.service.impl.LoginLogService;

/**
 * @ClassName: LoginLogController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2017年2月8日 上午10:05:17
 * 
 */
@Controller
@RequestMapping("/user")
public class LoginLogController {

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

	Map<String, Object> qParameters = new HashMap<String, Object>();

	List<Map<Object, Object>> allList = new ArrayList<Map<Object, Object>>();

	List<Map<Object, Object>> resultList = new ArrayList<Map<Object, Object>>();

	@Resource
	private LoginLogService logService;

	@ResponseBody
	@RequestMapping("/getLogList")
	public Object getLogList(String rows, String page, String sord, HttpSession session, HttpServletRequest request,
			HttpServletResponse response) {

		User user = (User) session.getAttribute("account");
		if (user == null) {
			return "user/login";
		}

		String uid = user.uid;

		PAGE_NOW = Integer.parseInt(page);
		PAGE_SIZE = Integer.parseInt(rows);
		PAGE_NOW = (PAGE_NOW - 1) * PAGE_SIZE;
		qParameters.put("pageNow", PAGE_NOW);
		qParameters.put("pageSize", PAGE_SIZE);
		qParameters.put("uid", uid);

		// 获取总记录数
		allList = logService.listAll(qParameters);
		int recordNum = allList.size();

		int totalPage = (recordNum + PAGE_SIZE - 1) / PAGE_SIZE;

		resultList = logService.selectByPage(qParameters);
		if (resultList != null) {
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("total", totalPage);
			result.put("records", recordNum);
			result.put("rows", resultList);
			return result;
		}
		return null;

	}

}
