package com.javasm.subway.books.dao;

import java.util.List;

import com.javasm.subway.books.model.BooksModel;

public interface IBooksDao {
	List<BooksModel> selectBooksList(int index,int pagesize);
}
