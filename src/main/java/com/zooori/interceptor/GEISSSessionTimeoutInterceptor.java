/**   
* @Title: GEISSSessionTimeoutInterceptor.java 
* @Package com.zooori.interceptor 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2017年2月8日 上午11:37:08 
* @version V1.0   
*/
package com.zooori.interceptor;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

/**
 * @ClassName: GEISSSessionTimeoutInterceptor
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2017年2月8日 上午11:37:08
 * 
 */

public class GEISSSessionTimeoutInterceptor implements HandlerInterceptor {
	private static final String LOGIN_URL = "/user/login.jsp";

	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}

	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex)
			throws Exception {

	}

	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {
		HttpSession session = request.getSession(true);
		// session中获取用户名信息
		Object obj = session.getAttribute("account");
		if (obj == null || "".equals(obj.toString())) {
			response.sendRedirect(request.getSession().getServletContext().getContextPath() + LOGIN_URL);
			return false;
		}
		return true;
	}
}
