package com.project.inven.user;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.ResponseBody;

import com.project.inven.model.dto.UserDTO;

@Controller
public class UserContorller {
	
	@Autowired
	private UserService service;
	@Autowired
	private HttpSession hs;
	
	@GetMapping("/login")
	public void login() {
		
	}
	
	@GetMapping("/join")
	public void join() {
		
	}
	
	@GetMapping("/logout")
	public String logout() {
		hs.invalidate();
		
		return "redirect: /home";
		
	}
	
	@PostMapping("/loginProc")
	@ResponseBody
	public Map<String,Object> loginProc(@RequestBody UserDTO dto){
		Map<String,Object> val = new HashMap<String, Object>();
		val.put("result", service.login(dto));
		return val;
	}
	
	@PostMapping("/joinProc")
	@ResponseBody
	public Map<String, Object> joinProc(@RequestBody UserDTO dto) {
		Map<String, Object> val = new HashMap<String,Object>();
		val.put("result", service.join(dto));
		
		return val;
		
	}

}
