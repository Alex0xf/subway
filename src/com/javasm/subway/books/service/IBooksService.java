package com.javasm.subway.books.service;

import java.util.List;

import com.javasm.subway.books.model.BooksModel;
/**
 * 
 * ClassName: IBooksService 
 * @Description: 
 * @author Alex
 * @date 2018年7月24日
 */
public interface IBooksService {

	List<BooksModel> selectBooksList(Integer pageNum,Integer pageSize);
	List<BooksModel> selectBooksList(String pageNum,String pageSize);
	int deleteBooksById(String id);
	int updateBooksById(String id, String ftypeId, String stypeId, String bookName,
			String authorName, String status); 
	
}
