package com.javasm.subway.admin.service.Impl;

import com.javasm.subway.admin.dao.Impl.AdminDaoImpl;
import com.javasm.subway.admin.model.AdminModel;
import com.javasm.subway.admin.service.IAdminService;

/**
 * 
 * ClassName: AdminServiceImpl 
 * @Description: 接口的实现类 返回查询出的实体类
 * @author Alex
 * @date 2018年7月18日
 */
public class AdminServiceImpl implements IAdminService{
       AdminDaoImpl adminDao=new AdminDaoImpl();

	

	@Override
	public AdminModel selectAdmin(String adminName, String password) {
       if(adminName==null||password==null||adminName.isEmpty()||password.isEmpty()){
			
		}else{
			//调用Dao查询数据是否存在
			return adminDao.selectAdmin(adminName, password);
		}

		return null;
	}



	@Override
	public int updateAdminPsw(int uid, String adminPsw) {
		 if(uid<0||adminPsw.isEmpty()){
				
			}else{
				return adminDao.updateAdminPsw(uid,adminPsw);
			}

			return 0;
	}
}
