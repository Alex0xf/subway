package com.javasm.subway.utills;

import java.sql.Timestamp;
import java.util.Date;

/**
 * 
 * ClassName: DateUtil 
 * @Description: 解决数据库中的日期不显示时间的问题
 * @author LiJi
 * @date 2018年7月20日
 */
public class DateUtil {
	
	/**
	 * 将date转化为时间戳
	 * @param @param date
	 * @param @return   
	 * @return java.sql.Timestamp  
	 * @throws
	 */
	public static Timestamp getTimestamp(Date date) {
		return new Timestamp(date.getTime());
		} 
}
