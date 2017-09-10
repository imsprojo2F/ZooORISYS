/**   
* @Title: UserController.java 
* @Package com.zooori.controller 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月5日 下午1:31:00 
* @version V1.0   
*/
package com.zooori.controller;

import java.util.Arrays;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.zooori.pojo.SurveySYS;
import com.zooori.service.impl.SurveySYSService;
import com.zooori.util.AboutUtil;
import com.zooori.util.ApiResult;
import com.zooori.util.email.SendMail;

/**
 * @ClassName: SurveyController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 下午1:31:00
 * 
 */
@Controller
@RequestMapping("/survey")
public class SurveySYSController {

	public static int PAGE_NOW;
	public static int PAGE_SIZE;
	boolean isTrue = false;
	Map<String, String> queryMap = new HashMap<String, String>();
	Object reObject = null;
	int isSucc = 0;

	@Resource
	private SurveySYSService sysService;
	String TEXT = "";
	String HEAD = "";

	@RequestMapping("/info")
	public ModelAndView index(String id, HttpServletRequest request, Model m) {
		ModelAndView mv = new ModelAndView();
		mv.setViewName("info");
		return mv;
	}

	@ResponseBody
	@RequestMapping("/add")
	public Object add(String survey01, String survey02, String survey03, String survey04, String survey10,
			String survey05, String survey06, String survey07, String survey08, String survey09, String survey11,
			String survey12, String survey13, String survey14, String survey15, String survey16, String survey17,
			String survey18, String survey19, String mail, String demand, HttpServletRequest request,
			HttpSession session) {
		SurveySYS surveySYS = new SurveySYS();
		surveySYS.ip = AboutUtil.getRemoteHost(request);
		session.setAttribute("accountMail", mail);
		surveySYS.mail = mail;
		if ("".equals(mail) || mail == null) {
			surveySYS.mail = "暂未填写";
		}

		surveySYS.survey01 = survey01;
		surveySYS.survey02 = survey02;
		surveySYS.survey03 = survey03;
		surveySYS.survey04 = survey04;
		surveySYS.survey05 = survey05;
		surveySYS.survey06 = survey06;
		surveySYS.survey07 = survey07;
		surveySYS.survey08 = survey08;
		surveySYS.survey09 = survey09;
		surveySYS.survey10 = survey10;
		surveySYS.survey11 = survey11;
		surveySYS.survey12 = survey12;
		surveySYS.survey13 = survey13;
		surveySYS.survey14 = survey14;
		surveySYS.survey15 = survey15;
		surveySYS.survey16 = survey16;
		surveySYS.survey17 = survey17;
		surveySYS.survey18 = survey18;
		surveySYS.survey19 = survey19;
		surveySYS.demand = demand;
		String[] to = new String[] { "imsprojo2fan@foxmail.com",
				"531138581@qq.com"/*
									 * "378007539@qq.com", "wsjiaxuan@qq.com"
									 *//* , "529229677@qq.com" */ };
		to = Arrays.copyOf(to, to.length + 1);
		to[to.length - 1] = surveySYS.mail;
		for (int i = 0; i < to.length; i++) {
			SendMail myThread = new SendMail();
			TEXT = "【用户邮箱】：" + "\r\n" + surveySYS.mail + "\r\n" + "【功能建议或需求】：" + "\r\n" + surveySYS.demand;
			HEAD = "ZooORI诚信研究实验室-客户调查表";
			if (i == to.length - 1) {
				TEXT = "您的调研计划表，我们已收到。\r\n感谢您的配合，祝您生活愉快。^_^";
				HEAD = "ZooORI-才华有限公司【用户调研计划表】";
			}
			myThread.setTo(to[i]);
			myThread.setTEXT(TEXT);
			myThread.setHEAD(HEAD);
			myThread.start();
			myThread.interrupt();
		}

		isSucc = sysService.add(surveySYS);
		if (isSucc > 0) {
			List<Map<Object, Object>> surveyMap = sysService.listAll(queryMap);
			int surveyNum = surveyMap.size();
			reObject = new ApiResult("添加成功", ApiResult.CODE_SUCCESS, 2017 + surveyNum);

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

		isSucc = sysService.deleteById(ids);
		if (isSucc > 0) {
			reObject = new ApiResult("删除成功", ApiResult.CODE_SUCCESS);
		} else {
			reObject = new ApiResult("删除失败", ApiResult.CODE_FAIL);
		}
		return reObject;
	}

	@ResponseBody
	@RequestMapping("update")
	public Object update(SurveySYS surveySYS) {

		isSucc = sysService.updateById(surveySYS);
		if (isSucc > 0) {
			reObject = new ApiResult("更改成功", ApiResult.CODE_SUCCESS);
		} else {
			reObject = new ApiResult("更改失败", ApiResult.CODE_FAIL);
		}
		return reObject;
	}

	@ResponseBody
	@RequestMapping("listAll")
	public Map<String, Object> listAll(String pageNow, String pageSize) {

		PAGE_NOW = Integer.parseInt(pageNow);
		PAGE_SIZE = Integer.parseInt(pageSize);
		PAGE_NOW = (PAGE_NOW - 1) * PAGE_SIZE;
		queryMap.put("pageNow", String.valueOf(PAGE_NOW));
		queryMap.put("pageSize", pageSize);

		// 获取账号总记录数

		List<Map<Object, Object>> allList = sysService.listAll(queryMap);
		int recordNum = allList.size();

		List<Map<Object, Object>> userList = sysService.selectByPage(queryMap);
		if (userList != null) {
			Map<String, Object> result = new HashMap<String, Object>();
			result.put("total", recordNum);
			result.put("rows", userList);
			return result;
		}
		return null;

	}

}
