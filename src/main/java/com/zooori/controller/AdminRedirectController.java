/**   
* @Title: AdminRedirectController.java 
* @Package com.zooori.controller 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2017年1月22日 下午3:38:21 
* @version V1.0   
*/
package com.zooori.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @ClassName: AdminRedirectController
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2017年1月22日 下午3:38:21
 * 
 */
@Controller
@RequestMapping("/admin")
public class AdminRedirectController {

	@RequestMapping("/main")
	public String main() {
		return "admin/main";
	}

}
