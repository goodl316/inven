package com.project.inven.user;

import com.project.inven.model.domain.UserDomain;
import com.project.inven.model.dto.UserDTO;

public interface UserMapper {

	UserDomain selUser(UserDTO DTO);
	int insUser(UserDTO dto);
}

