package com.javasm.subway.books.service.Impl;

import java.util.List;

import com.javasm.subway.books.dao.IBooksDao;
import com.javasm.subway.books.dao.Impl.BooksDaoImpl;
import com.javasm.subway.books.model.BooksModel;
import com.javasm.subway.books.service.IBooksService;
import com.javasm.subway.utills.PageUtil;
/**
 * 
 * ClassName: BooksServiceImpl 
 * @Description: 实现接口
 * @author Alex
 * @date 2018年7月17日
 */
public class BooksServiceImpl implements IBooksService{
    IBooksDao booksDao=new BooksDaoImpl();
	@Override
	public List<BooksModel> selectBooksList(Integer pageNum,Integer pageSize) {
		if(pageNum==null){
			pageNum=1;
			
		}
		if(pageSize==null){
			pageSize=10;
		}
		//servlet传进来的参数 当前第几页 每页多少条
		int index=PageUtil.getIndeByPageNum(pageNum, pageSize);
		//调用dao查询数据
		 List<BooksModel> list=booksDao.selectBooksList(index, pageSize);
		return list;
	}
	
	@Override
	public List<BooksModel> selectBooksList(String pageNum, String pageSize) {
		if(pageNum==null||pageNum.isEmpty()){
			pageNum="1";
			
		}
		if(pageSize==null||pageSize.isEmpty()){
			pageSize="10";
		}
		if(pageNum==null||pageSize==null||pageNum.isEmpty()||pageSize.isEmpty()){
				return null;
				
			}
		return selectBooksList(Integer.valueOf(pageNum),Integer.valueOf(pageSize) );
	}

}
