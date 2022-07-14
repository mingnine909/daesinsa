package kh.spring.daesinsa.member.security;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;

public class CustomLoginSuccessHandler implements AuthenticationSuccessHandler {

	@Override
	public void onAuthenticationSuccess(HttpServletRequest req, HttpServletResponse res,
			Authentication auth) throws IOException, ServletException {
	
		List<String> roleNames = new ArrayList<>();
		
		auth.getAuthorities().forEach(authority -> {
			roleNames.add(authority.getAuthority());
		});
		System.out.println("roleNames:" + roleNames);
		if(roleNames.contains("ROLE_ADMIN")) {
			res.sendRedirect(req.getContextPath()+"/admin/dashboard");
			return;
		}
		if(roleNames.contains("ROLE_USER")) {
			res.sendRedirect(req.getContextPath()+"/");
			return;
		}
		
	}

}
