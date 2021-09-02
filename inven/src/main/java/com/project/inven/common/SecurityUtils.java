package com.project.inven.common;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;

import com.project.inven.model.domain.UserDomain;
import com.project.inven.model.dto.UserDTO;

public class SecurityUtils {
	
	public static UserDomain getUserDomain(HttpSession hs) {
		UserDomain vo = (UserDomain) hs.getAttribute("loginUser");
		if(vo == null) {
			return null;
		}
		return vo;
	}
	
	public static boolean isLogin(HttpSession hs) {
		if(getUserDomain(hs) == null) {
			return false;
		}
		
		return true;
	}
	
	
	public static int getUserPk(HttpSession hs) {
		if(!isLogin(hs)) {
			return 0;
		}
		
		return getUserDomain(hs).getI_user();
	}
	
	public static String getSalt() {
		return BCrypt.gensalt();
	}
	
	public static String hashPassword(String pw, String salt) {
		return BCrypt.hashpw(pw, salt);
	}
	
	public static boolean chkPassword(UserDTO dto) {
		if(BCrypt.checkpw(dto.getUser_pw(), dto.getChk_pw())) {
			return true;
		}
		
		return false;
	}
}
