package com.javasm.subway.admin.service;

import com.javasm.subway.admin.model.AdminModel;


public interface IAdminService {
	AdminModel selectAdmin(String adminName,String password);

	int updateAdminPsw(int uid, String adminPsw);
}
