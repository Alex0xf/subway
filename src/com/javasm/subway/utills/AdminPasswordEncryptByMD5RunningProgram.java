package com.javasm.subway.utills;
/**
 * 
 * ClassName: AdminPasswordEncryptByMD5RunningProgram 
 * @Description:为了账户安全 管理员账号只能在数据库添加，无法注册，添加前密码由MD5加密
 * @author Alex
 * @date 2018年7月25日
 */
public class AdminPasswordEncryptByMD5RunningProgram {

	public static void main(String[] args) {
		String password="xiafei";
		String MD5password=EncryptByMD5.MD5(password);
		System.out.println(MD5password);
		
	}

}
