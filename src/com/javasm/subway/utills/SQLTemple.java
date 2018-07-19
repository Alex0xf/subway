package com.javasm.subway.utills;
/**
 * 
 * ClassName: SQLTemple 
 * @Description: 用来放sql语句
 * @author ALEX
 * @date 2018年7月17日
 */
public interface SQLTemple {
   String SelectBooksList="SELECT * FROM ( SELECT f.type_name AS ftype_name, s.type_name AS stype_name, f.type_id AS ftype_id, s.type_id AS stype_id, f.attribution FROM pn_book_ftype AS f INNER JOIN pn_book_stype AS s ON f.type_id = s.ftype_id ) t INNER JOIN pn_book AS p ON t.stype_id = p.stype_id LIMIT ?,?";
   String SelectUserByName="select * from pn_user where username=? and password=?";
   String SelectAdminByName="select * from pn_admin_user where username=? and password=?";
	
	
}
