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
   String updateAdminPswById="update pn_admin_user SET password=? where uid=?;";
   String deleteBooksById="delete  from pn_book where bid=?";
   String updateBooksById="update pn_book SET book_name=?,author_name=?,ftype_id=?,stype_id=?,STATUS=? where bid=?;";
   String addABook="insert into pn_book (book_id,book_name,author_name,ftype_id,stype_id,status)values(?,?,?,?,?,?);";
	
   String SelectGamesList = "select * from pn_game limit ?,?";
   String SelectGames = "select * from pn_game where gid = ?";
   String CountGamesByRecType = "select count(*) as count from pn_game where recType = ?";
   String SelectGamesByRecPlat = "select * from pn_game where recType = ? and platform = ? limit ?,?";
   String CountGames = "select count(*) as count from pn_game";
   String SelectGameType = "select * from pn_game_type";
   String SelectGameTypeByTid = "select typeName from pn_game_type where tid = ?";
   String InsertGames = "insert into pn_game "
   		+ "(name, title, size, gameIcon, pictures, iosUrl, androidUrl, recType, status, tid, platform, ctime, des)"
   		+ " values (?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
   String DeleteGames = "delete from pn_game where gid = ?";
   String UpdateGames = "update pn_game set name = ?, title = ?, size = ?, des = ?, gameIcon = ?, "
   		+ "iosUrl = ?, androidUrl = ?, pictures = ?, status = ?, tid = ?, recType = ?, utime = ?, "
   		+ "platform = ?, downloadCount = ? where gid = ?";
   }
