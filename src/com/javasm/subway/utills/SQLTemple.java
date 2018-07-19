package com.javasm.subway.utills;
/**
 * 
 * ClassName: SQLTemple 
 * @Description: 用来放sql语句
 * @author ALEX
 * @date 2018年7月17日
 */
public interface SQLTemple {
   String SelectBooksList="select * from chuangbie_book_ftype limit ?,?";
   String SelectUserByName="select * from pn_user where username=? and password=?";
   String SelectAdminByName="select * from pn_admin_user where username=? and password=?";
	
	
}
