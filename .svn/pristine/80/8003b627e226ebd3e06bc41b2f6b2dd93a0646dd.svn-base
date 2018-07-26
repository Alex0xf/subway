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
 * @date 2018年7月24日
 */
public class BooksServiceImpl implements IBooksService{
    IBooksDao booksDao=new BooksDaoImpl();
	@Override
	public List<BooksModel> selectBooksList(Integer pageNum,Integer pageSize) {
		if(pageNum==null){
			pageNum=1;
			
		}
		if(pageSize==null){
			pageSize=100;
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
			pageSize="100";
		}
		if(pageNum==null||pageSize==null||pageNum.isEmpty()||pageSize.isEmpty()){
				return null;
				
			}
		return selectBooksList(Integer.valueOf(pageNum),Integer.valueOf(pageSize) );
	}

	
	@Override
	public int deleteBooksById(String id) {
		int deleteResult=0;
		if(id!=null&&!id.isEmpty()){
			deleteResult=booksDao.deleteBooksById(Integer.valueOf(id));
			
		}
		return deleteResult;
	}

	@Override
	public int updateBooksById(String id, String ftypeId, String stypeId, 
			String bookName, String authorName, String status) {
		int updateResult=0;
		if(id!=null&&!id.isEmpty()){
			updateResult=booksDao.updateBooksById(Integer.valueOf(id),Integer.valueOf(ftypeId),Integer.valueOf(stypeId),bookName,
					authorName,Integer.valueOf(status));
			
		}
		return updateResult;
	}

	@Override
	public int addABook(String true_book_id,String ftypeId, String stypeId, String bookName, String authorName, String status) {
		int addResult=0;
		if(bookName!=null&&!bookName.isEmpty()&&authorName!=null&&!authorName.isEmpty()){
			addResult=booksDao.addABook(Integer.valueOf(true_book_id),Integer.valueOf(ftypeId),Integer.valueOf(stypeId),bookName,
					authorName,Integer.valueOf(status));
			
		}
		return addResult;
	}

	

}
