package kh.spring.daesinsa.admin.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import kh.spring.daesinsa.admin.model.service.AdminServiceImpl;

@Controller
@RequestMapping ("/admin")
public class AdminController {
	
	@Autowired
	//private AdminServiceImpl service;
	
	@GetMapping("/main")
	public String main() {
		return "admin/login";
	}

	@GetMapping("/dashboard")
	public String dashBoard() {
		return "admin/dashboard";
	}
	
	@GetMapping("/plist")
	public String pList() {
		return "admin/plist";
	}
	
	@GetMapping("/padd")
	public String pAdd() {
		return "admin/padd";
	}
	
	@GetMapping("/pupdate")
	public String pUpdate() {
		return "admin/pupdate";
	}
	
	@GetMapping("/papprove")
	public String pApprove() {
		return "admin/papprove";
	}
	
	@GetMapping("/rlist")
	public String rList() {
		return "admin/rlist";
	}
	
	@GetMapping("/rapprove")
	public String rApprove() {
		return "admin/rapprove";
	}
	
	@GetMapping("/clist")
	public String cList() {
		return "admin/clist";
	}
	
	@GetMapping("/cadd")
	public String cAdd() {
		return "admin/cadd";
	}
	
	@GetMapping("/qrelist")
	public String qReList() {
		return "admin/qrelist";
	}
	
	@GetMapping("/qreadd")
	public String qReAdd() {
		return "admin/qreadd";
	}
	
	@GetMapping("/mlist")
	public String mList() {
		return "admin/mlist";
	}

	@GetMapping("/delmlist")
	public String delmList() {
		return "admin/delmlist";
	}
}
