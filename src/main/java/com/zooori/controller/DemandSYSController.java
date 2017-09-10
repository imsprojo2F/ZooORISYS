/**   
* @Title: DemandSYSController.java 
* @Package com.zooori.controller 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月30日 下午1:58:55 
* @version V1.0   
*/
package com.zooori.controller;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zooori.pojo.DemandSYS;
import com.zooori.pojo.QueryParameters;
import com.zooori.service.impl.DemandSYSservice;
import com.zooori.util.ApiResult;
import com.zooori.util.email.SendMail;

/**
 * @ClassName: DemandSYSController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月30日 下午1:58:55
 * 
 */
@Controller
@RequestMapping("/demand")
public class DemandSYSController {

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

	@Autowired
	private DemandSYSservice dSySservice;

	@ResponseBody
	@RequestMapping("add")
	public Object add(DemandSYS dSys) {

		if ("".equals(dSys.name) || dSys.name == null) {
			dSys.name = "暂未填写";
		}
		if ("".equals(dSys.phone) || dSys.phone == null) {
			dSys.phone = "暂未填写";
		}
		if ("".equals(dSys.mail) || dSys.mail == null) {
			dSys.mail = "暂未填写";
		}
		TEXT = "【客户姓名】：" + dSys.name + "\r\n" + "【手机号码】：" + dSys.phone + "\r\n" + "【邮箱地址】：" + dSys.mail + "\r\n"
				+ "【目标需求】：" + dSys.demand;
		HEAD = "ZooORI诚信研究实验室-客户需求表";
		String[] to = new String[] { "imsprojo2fan@foxmail.com",
				"531138581@qq.com"/*
									 * "378007539@qq.com", "wsjiaxuan@qq.com"
									 *//* , "529229677@qq.com" */ };
		for (int i = 0; i < to.length; i++) {
			SendMail myThread = new SendMail();
			myThread.setTo(to[i]);
			myThread.setTEXT(TEXT);
			myThread.setHEAD(HEAD);
			myThread.start();
			myThread.interrupt();

		}

		isSucc = dSySservice.add(dSys);
		if (isSucc > 0) {
			reObject = new ApiResult("添加成功", ApiResult.CODE_SUCCESS);
		} else {
			reObject = new ApiResult("添加失败", ApiResult.CODE_FAIL);
		}
		return reObject;
	}

	@ResponseBody
	@RequestMapping("delete")
	public Object deleteUser(HttpServletRequest request) {
		String idArr = request.getParameter("ids");

		String[] ids = idArr.split(",");

		isSucc = dSySservice.deleteById(ids);
		if (isSucc > 0) {
			reObject = new ApiResult("删除成功", ApiResult.CODE_SUCCESS);
		} else {
			reObject = new ApiResult("删除失败", ApiResult.CODE_FAIL);
		}
		return reObject;
	}

	@ResponseBody
	@RequestMapping("update")
	public Object update(DemandSYS dSys) {

		isSucc = dSySservice.updateById(dSys);
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

		List<DemandSYS> allList = dSySservice.listAll(qParameters);
		int recordNum = allList.size();

		Map<String, String> userList = dSySservice.selectByPage(qParameters);
		if (userList != null) {
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("total", recordNum);
			result.put("rows", userList);
			return result;
		}
		return null;

	}

}
