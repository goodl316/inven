package com.project.inven.user;

import javax.servlet.http.HttpSession;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.project.inven.common.SecurityUtils;
import com.project.inven.model.domain.UserDomain;
import com.project.inven.model.dto.UserDTO;

@Service
public class UserService {
	
	@Autowired
	private UserMapper mapper;
	@Autowired
	private HttpSession hs;
	
	public int join(UserDTO dto) {
		int result =0;
		
		String encryptPw = SecurityUtils.hashPassword(dto.getUser_pw(), SecurityUtils.getSalt());
		dto.setUser_pw(encryptPw);
		
		result = mapper.insUser(dto);
		
		return result;
	}
	
	public int login(UserDTO dto) {
		UserDomain vo = mapper.selUser(dto);
		if(vo == null) {
			return 2;
		}
		System.out.println("aaa:"+dto.getChk_pw());
		System.out.println("bbb:"+vo.getUser_pw());
		
		if(!BCrypt.checkpw(dto.getChk_pw(), vo.getUser_pw())) {
			return 3;
		}
		vo.setUser_pw(null);
		hs.setAttribute("loginUser", vo);
		
		return 1;
	}

}
