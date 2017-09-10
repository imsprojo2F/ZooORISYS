/**   
* @Title: LoginInterceptor.java 
* @Package com.zooori.interceptor 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2017年1月22日 上午11:51:29 
* @version V1.0   
*/
package com.zooori.interceptor;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;

import com.zooori.pojo.User;

/** 
* @ClassName: LoginInterceptor 
* @Description: TODO(这里用一句话描述这个类的作用) 
* @author IsProjo
* @date 2017年1月22日 上午11:51:29 
*  
*/
/**
 * 登录认证的拦截器
 */
public class AdminLoginInterceptor implements HandlerInterceptor {

	private List<String> excludedUrls;

	/**
	 * 在DispatcherServlet完全处理完请求后被调用
	 * 当拦截器抛出异常时,依然会从当前拦截器往回执行所的拦截器的afterCompletion()
	 */
	public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler,
			Exception exception) throws Exception {

	}

	// 在业务处理器处理请求执行完成后,生成视图之前执行的动作
	public void postHandle(HttpServletRequest request, HttpServletResponse response, Object handler,
			ModelAndView modelAndView) throws Exception {

	}

	/**
	 * 在业务处理器处理请求之前被调用 如果返回false 则退出本拦截器，本拦截器后面的postHandle与afterCompletion不再执行
	 */
	public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler)
			throws Exception {

		String requestUri = request.getRequestURI();
		for (String url : excludedUrls) {
			if (requestUri.contains(url)) {
				return true;
			}
		}

		HttpSession session = request.getSession();
		User account = (User) session.getAttribute("admin");
		if (account == null) {
			response.sendRedirect(request.getContextPath() + "/admin/login2admin.html");
		}
		return true;
	}

	public void setExcludedUrls(List<String> excludedUrls) {
		this.excludedUrls = excludedUrls;
	}

}
