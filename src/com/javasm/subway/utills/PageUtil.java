package com.javasm.subway.utills;

public class PageUtil {

	
	 public static int getIndeByPageNum(int pageNum,int pageSize){
		 //传入当前第几页 返回从第几条开始
		 int index=(pageNum-1)*pageSize;
		 return index;
	 }
}
