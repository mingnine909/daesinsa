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
		System.out.println(auth);
		auth.getAuthorities().forEach(authority -> {
			System.out.println("authority:" + authority.getAuthority());
			roleNames.add(authority.getAuthority());
		});
		System.out.println("roleNames:" + roleNames);
		
		if(roleNames.contains("ROLE_ADMIN")) {
			System.out.println("ROLE_ADMIN");
			res.sendRedirect(req.getContextPath()+"/admin/dashboard");
			return;
		}
		if(roleNames.contains("ROLE_USER")) {
			System.out.println("ROLE_USER");
			res.sendRedirect(req.getContextPath()+"/");
			return;
		}
		if(roleNames.contains("ROLE_MEMBER")) {
			System.out.println("ROLE_MEMBER");
			res.sendRedirect(req.getContextPath()+"/");
			return;
		}
		System.out.println("ROLE others");
	}

}
