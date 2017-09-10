/**   
* @Title: CtsDateUtil.java 
* @Package com.zooori.util 
* @Description: TODO(用一句话描述该文件做什么) 
* @author IsProjo
* @date 2017年2月6日 下午1:36:35 
* @version V1.0   
*/
package com.zooori.util;

import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.lang3.time.DateUtils;

/**
 * @ClassName: CtsDateUtil
 * @Description: TODO(这里用一句话描述这个类的作用)
 * @author IsProjo
 * @date 2017年2月6日 下午1:36:35
 * 
 */
public class CtsDateUtil {

	public final static String DATE_FROMAT = "yyyyMMdd";

	public final static String TIME_FORMAT = "HHmmss";

	/**
	 * 两个日期是否在跨度之内
	 * 
	 * @param startDate
	 * @param endDate
	 * @param gapType
	 *            跨度类型，如Calendar.YEAR,Calendar.MONTH,Calendar.DAY_OF_YEAR
	 * @param maxGap
	 *            最大跨度值
	 * @return
	 */
	public static boolean isWithInDateGap(Date startDate, Date endDate, int gapType, int maxGap) {
		if (startDate == null) {
			throw new IllegalArgumentException("The startDate must not be null");
		}
		if (endDate == null) {
			throw new IllegalArgumentException("The endDate must not be null");
		}
		if (gapType != Calendar.YEAR && gapType != Calendar.MONTH && gapType != Calendar.DAY_OF_YEAR) {
			throw new IllegalArgumentException("The value of gapType is invalid");
		}

		Calendar start = Calendar.getInstance();
		start.setTime(startDate);
		start.add(gapType, maxGap);
		int compare = start.getTime().compareTo(endDate);

		return compare >= 0;
	}

	/**
	 * 两个日期是否在跨度之内
	 * 
	 * @param startDate
	 * @param endDate
	 * @param gapType
	 *            跨度类型，如Calendar.YEAR,Calendar.MONTH,Calendar.DAY_OF_YEAR
	 * @param maxGap
	 *            最大跨度值
	 * @return
	 * @throws ParseException
	 */
	public static boolean isWithInDateGap(int startDate, int endDate, int gapType, int maxGap) throws ParseException {
		return isWithInDateGap(DateUtils.parseDate(String.valueOf(startDate), DATE_FROMAT),
				DateUtils.parseDate(String.valueOf(endDate), DATE_FROMAT), gapType, maxGap);
	}

	/**
	 * <b>说明:</b> 获取系统当前日期
	 * 
	 * @param
	 * @return
	 * @ @author ****
	 * @since 2014年5月22日
	 */
	public static int getCurIntPcDate() {
		return Integer.parseInt(getCurPcDate());
	}

	/**
	 * <b>说明:</b> 获取系统当前日期
	 * 
	 * @param
	 * @return
	 * @ @author ****
	 * @since ****
	 */
	public static String getCurPcDate() {
		java.util.Date currentDate = new java.util.Date();
		SimpleDateFormat formatdate = new SimpleDateFormat(DATE_FROMAT);
		return formatdate.format(currentDate);
	}

	/***
	 * <b>说明:</b> 获取指定格式的系统当前日期
	 * 
	 * @param
	 * @return
	 * @ @author ****
	 * @since ****
	 */
	public static String getCurPcDate(String strFormat) {
		java.util.Date currentDate = new java.util.Date();
		SimpleDateFormat formatdate = new SimpleDateFormat(strFormat);
		return formatdate.format(currentDate);
	}

	/***
	 * <b>说明:</b> 获取当时系统日期时间【YYYYMMDDHHmmss】
	 * 
	 * @param
	 * @return
	 * @throws ServiceException
	 * @author yanfy
	 * @since 2014年6月5日
	 */
	public static String getCurPcDateTime() {
		java.util.Date currentDate = new java.util.Date();
		SimpleDateFormat formatdate = new SimpleDateFormat(DATE_FROMAT + TIME_FORMAT);
		return formatdate.format(currentDate);
	}

	/**
	 * <b>说明:</b> 获取当时系统日期时间【YYYYMMDDHHmmss】
	 * 
	 * @param
	 * @return
	 * @author ****
	 * @since 2014年6月5日
	 */
	public static Long getIntCurPcDateTime() {
		return Long.valueOf(getCurPcDateTime());
	}

	/**
	 * <b>说明:</b> 获取系统当前时间
	 * 
	 * @param
	 * @return 当前时间并格式化成“HHmmss”,如“123124”
	 * @ @author ****
	 * @since ****
	 */
	public static String getCurPcTime() {
		java.util.Date currentDate = new java.util.Date();
		SimpleDateFormat formatdate = new SimpleDateFormat(TIME_FORMAT);
		return formatdate.format(currentDate);
	}

	/**
	 * <b>说明: </b>验证传入数值型日期[YYYYMMDD]是否合法
	 * 
	 * @param
	 * @return
	 * @ @author ****
	 * @return
	 * @since *****
	 */
	public static boolean checkDateFormat(int intDate) {
		return checkDateFormat(String.valueOf(intDate));
	}

	/**
	 * <b>说明: </b>验证传入字符型日期[YYYYMMDD]是否合法
	 * 
	 * @param
	 * @return
	 * @ @author ****
	 * @since ****
	 */
	public static boolean checkDateFormat(String strDate) {
		return checkDateFormat(strDate, DATE_FROMAT);
	}

	/**
	 * <b>说明: </b>验证传入字符型日期是否合法
	 * 
	 * @param
	 * @return
	 * @ @author ***
	 * @since ****
	 */
	public static boolean checkDateFormat(int intDate, String strFormat) {
		return checkDateFormat(String.valueOf(intDate), DATE_FROMAT);
	}

	/**
	 * <b>说明: </b>验证传入字符型日期是否合法
	 * 
	 * @param
	 * @return
	 * @ @author ****
	 * @since ***
	 */
	public static boolean checkDateFormat(String strDate, String strFormat) {
		try {
			DateUtils.parseDateStrictly(strDate, strFormat);
			return true;
		} catch (ParseException e) {
			return false;
		}
	}

	/**
	 * <b>说明: </b>验证传入字符型时间[HH24MMSS]是否合法
	 * 
	 * @param
	 * @return
	 * @ @author ****
	 * @since ****
	 */
	public static boolean checkTimeFormat(String strDate) {
		return checkTimeFormat(strDate, TIME_FORMAT);
	}

	/**
	 * <b>说明: </b>验证传入字符型时间是否合法
	 * 
	 * @param
	 * @return
	 * @ @author ****
	 * @since ****
	 */
	public static boolean checkTimeFormat(int intDate, String strFormat) {
		return checkTimeFormat(String.valueOf(intDate), DATE_FROMAT);
	}

	/**
	 * <b>说明: </b>验证传入字符型时间是否合法
	 * 
	 * @param
	 * @return
	 * @ @author ****
	 * @since ***
	 */
	public static boolean checkTimeFormat(String strDate, String strFormat) {
		try {
			DateUtils.parseDateStrictly(strDate, strFormat);
			return true;
		} catch (ParseException e) {
			return false;
		}
	}

	/**
	 * <b>说明: </b>日期转换
	 * 
	 * @param intDate
	 * @return
	 */
	public static Date parseDate(int intDate) {
		return parseDate(String.valueOf(intDate));
	}

	/**
	 * @Title: parseDate @Description: TODO(这里用一句话描述这个方法的作用) @param @param
	 *         valueOf @param @return 参数说明 @return Date 返回类型 @throws
	 */
	private static Date parseDate(String valueOf) {
		// TODO Auto-generated method stub
		return parseDate(valueOf);
	}

	/**
	 * 日期转换成字符串
	 * 
	 * @param date
	 * @param dateFormat
	 * @return
	 */
	public static String date2String(Date date, String dateFormat) {
		SimpleDateFormat formatdate = new SimpleDateFormat(dateFormat);
		return formatdate.format(date);
	}

	/**
	 * 日期转换成字符串
	 * 
	 * @param date
	 * @param dateFormat
	 * @return 格式为YYYYMMDD
	 */
	public static String date2String(Date date) {
		return date2String(date, DATE_FROMAT);
	}

	/**
	 * 日期转换成整数
	 * 
	 * @param date
	 * @param dateFormat
	 * @return 格式为YYYYMMDD
	 */
	public static int date2Int(Date date) {
		String str = date2String(date, DATE_FROMAT);
		return Integer.parseInt(str);
	}

	/***
	 * <b>说明:</b>
	 * 
	 * @param
	 * @return
	 * @throws ServiceException
	 * @author ****
	 * @since ***
	 */
	public static String getCurrLastDay() {
		return getCurrAfterDay(1);
	}

	/***
	 * <b>说明:</b>
	 * 
	 * @param
	 * @return
	 * @throws ServiceException
	 * @author ****
	 * @since ****
	 */
	@SuppressWarnings("static-access")
	public static String getCurrAfterDay(int days) {
		Calendar theCa = Calendar.getInstance();
		theCa.setTime(new Date());
		theCa.add(theCa.DATE, -1 * days);
		Date date = theCa.getTime();
		SimpleDateFormat formatdate = new SimpleDateFormat(DATE_FROMAT);
		return formatdate.format(date);
	}

	/**
	 * 获取交易日期之前的相隔天数的日期
	 * 
	 * @param transDate
	 *            交易日期
	 * @param days
	 *            天数
	 * @return
	 * @author ****
	 * @since ***
	 */
	public static Integer getTransDateBeforeDay(Integer transDate, int days) {

		Calendar theCa = Calendar.getInstance();
		theCa.setTime(parseDate(transDate));
		theCa.add(Calendar.DATE, -1 * days);
		Date date = theCa.getTime();
		SimpleDateFormat formatdate = new SimpleDateFormat(DATE_FROMAT);
		return Integer.valueOf(formatdate.format(date));
	}

	/**
	 * 获取指定日期之后的相隔n年的日期
	 * 
	 * @param transDate
	 * @param years
	 * @return
	 * @return Integer
	 */
	public static Integer getDateAfterYear(Integer transDate, int years) {
		Calendar theCa = Calendar.getInstance();
		theCa.setTime(parseDate(transDate));
		theCa.add(Calendar.YEAR, years);
		Date date = theCa.getTime();
		SimpleDateFormat formatdate = new SimpleDateFormat(DATE_FROMAT);
		return Integer.valueOf(formatdate.format(date));
	}

	/**
	 * 获取交易日期之后的相隔天数的日期
	 * 
	 * @param transDate
	 *            交易日期
	 * @param days
	 *            天数
	 * @return
	 * @author ****
	 * @since ****
	 */
	public static Integer getTransDateAfterDay(Integer transDate, int days) {

		Calendar theCa = Calendar.getInstance();
		theCa.setTime(parseDate(transDate));
		theCa.add(Calendar.DATE, 1 * days);
		Date date = theCa.getTime();
		SimpleDateFormat formatdate = new SimpleDateFormat(DATE_FROMAT);
		return Integer.valueOf(formatdate.format(date));
	}

	/**
	 * 计算两个日期相差的天数
	 * 
	 * @param beginDate
	 *            【YYYYMMDD】
	 * @param endDate
	 *            【YYYYMMDD】
	 * @return Integer
	 * @author ****
	 * @since ****
	 */
	public static Integer diffDate(Integer beginDate, Integer endDate) {
		Calendar theCa1 = Calendar.getInstance();
		Calendar theCa2 = Calendar.getInstance();
		theCa1.setTime(parseDate(beginDate));
		theCa2.setTime(parseDate(endDate));
		long between_days = (theCa2.getTimeInMillis() - theCa1.getTimeInMillis()) / (1000 * 3600 * 24);
		return Integer.parseInt(String.valueOf(between_days));
	}

}
