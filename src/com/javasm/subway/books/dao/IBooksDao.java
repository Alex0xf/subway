package com.javasm.subway.books.dao;

import java.util.List;

import com.javasm.subway.books.model.BooksModel;

public interface IBooksDao {
	List<BooksModel> selectBooksList(int index,int pagesize);
	int deleteBooksById(int id);
	int updateBooksById(int id,int ftypeId,int stypeId,String bookName, String authorName,int status);
	int addABook(int true_book_id,int ftypeId,int stypeId,String bookName, String authorName,int status);

	
}
