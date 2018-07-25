package com.javasm.subway.channel.service;

public class PageCountServer {
		public static  int pageCount(int count,int pageSize){
				double a = count;
				double b = pageSize;
				int pageCount = (int) Math.ceil(a/b);
			return pageCount;
			
		}
		
		
}
