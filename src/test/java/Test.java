import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.junit.runner.RunWith;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringJUnit4ClassRunner;

import com.zooori.service.impl.UserService;

/**   
* @Title: Test.java 
* @Package  
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2016年12月5日 上午11:46:48 
* @version V1.0   
*/

/**
 * @ClassName: Test
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2016年12月5日 上午11:46:48
 * 
 */
@RunWith(SpringJUnit4ClassRunner.class) // 表示继承了SpringJUnit4ClassRunner类
@ContextConfiguration(locations = { "classpath:spring-mybatis.xml" })
public class Test {

	private static Logger logger = Logger.getLogger(Test.class);
	// private ApplicationContext ac = null;
	@Resource
	private UserService userService;

	// @Before
	// public void before() {
	// ac = new ClassPathXmlApplicationContext("applicationContext.xml");
	// userService = (IUserService) ac.getBean("userService");
	// }

	/*
	 * @org.junit.Test public void test() { User user =
	 * userService.getUserById(1); // System.out.println(user.getUserName()); //
	 * logger.info("值："+user.getUserName()); System.out.println(user); }
	 */
}
