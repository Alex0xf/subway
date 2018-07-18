package com.javasm.subway.user.service.Impl;

import com.javasm.subway.user.dao.Impl.UserDaoImpl;
import com.javasm.subway.user.model.UserModel;
import com.javasm.subway.user.service.IUserService;

/**
 * 
 * ClassName: UserServiceImpl 
 * @Description: 接口的实现类 返回查询出的实体类
 * @author Alex
 * @date 2018年7月18日
 */
public class UserServiceImpl implements IUserService{
	UserDaoImpl userDao=new UserDaoImpl();

	@Override
	public UserModel selectUser(String userName, String password) {
		
		if(userName==null||password==null||userName.isEmpty()||password.isEmpty()){
			
		}else{
			//调用Dao查询数据是否存在
			return userDao.selectUser(userName, password);
		}
		return null;
	}
}
